# frozen_string_literal: true

require "minitest/autorun"
require "stripe"

class TestRBACSystem < Minitest::Test
  def setup
    # Clear any existing context
    Stripe::RBAC::Context.clear
    Stripe::Audit.logger.clear!
    Stripe::Risk.reset_scorer
    Stripe::Banking.transactions.clear!
    Stripe::Crypto.transactions.clear!
  end

  def teardown
    Stripe::RBAC::Context.clear
  end

  # Permission tests
  def test_permission_creation
    permission = Stripe::RBAC::Permission.new("audit.view")
    assert_equal "audit.view", permission.name
    assert_equal "View audit logs", permission.description
  end

  def test_invalid_permission_raises_error
    assert_raises do
      Stripe::RBAC::Permission.new("invalid.permission")
    end
  end

  # Role tests
  def test_auditor_role
    role = Stripe::RBAC::Role.new(:auditor)
    assert role.has_permission?("audit.view")
    assert role.has_permission?("reports.view")
    refute role.has_permission?("bank.create")
    refute role.has_permission?("users.manage")
  end

  def test_compliance_officer_role
    role = Stripe::RBAC::Role.new(:compliance_officer)
    assert role.has_permission?("audit.create")
    assert role.has_permission?("reports.audit_create")
    assert role.has_permission?("risk.assign")
    refute role.has_permission?("users.manage")
  end

  def test_treasury_manager_role
    role = Stripe::RBAC::Role.new(:treasury_manager)
    assert role.has_permission?("bank.create")
    assert role.has_permission?("crypto.monitor_wallets")
    assert role.has_permission?("users.manage")
  end

  # Context tests
  def test_context_creation
    context = Stripe::RBAC::Context.new(
      user_id: "user123",
      user_name: "Alice",
      role: :auditor,
      ip_address: "192.168.1.1"
    )

    assert_equal "user123", context.user_id
    assert_equal "Alice", context.user_name
    assert_equal :auditor, context.role.key
    assert context.has_permission?("audit.view")
  end

  def test_context_thread_local_storage
    context1 = Stripe::RBAC::Context.new(
      user_id: "user1",
      user_name: "Alice",
      role: :auditor
    )
    Stripe::RBAC::Context.set(context1)

    assert_equal context1, Stripe::RBAC::Context.current
    assert Stripe::RBAC::Context.current?

    Stripe::RBAC::Context.clear
    refute Stripe::RBAC::Context.current?
  end

  def test_context_with_block
    Stripe::RBAC::Context.with_context(
      user_id: "user1",
      user_name: "Bob",
      role: :compliance_officer
    ) do |context|
      assert_equal "Bob", context.user_name
      assert Stripe::RBAC::Context.current?
    end

    refute Stripe::RBAC::Context.current?
  end

  # Policy tests
  def test_policy_require_permission_succeeds
    Stripe::RBAC::Context.set(
      Stripe::RBAC::Context.new(
        user_id: "user1",
        user_name: "Alice",
        role: :auditor
      )
    )

    # Should not raise
    result = Stripe::RBAC::Policy.require_permission!("audit.view")
    assert result
  end

  def test_policy_require_permission_fails
    Stripe::RBAC::Context.set(
      Stripe::RBAC::Context.new(
        user_id: "user1",
        user_name: "Alice",
        role: :auditor
      )
    )

    assert_raises(Stripe::RBAC::Policy::AccessDeniedError) do
      Stripe::RBAC::Policy.require_permission!("bank.create")
    end
  end

  def test_policy_can_methods
    Stripe::RBAC::Context.set(
      Stripe::RBAC::Context.new(
        user_id: "user1",
        user_name: "Alice",
        role: :compliance_officer
      )
    )

    assert Stripe::RBAC::Policy.can?("reports.create")
    refute Stripe::RBAC::Policy.can?("users.manage")
    assert Stripe::RBAC::Policy.can_any?("reports.create", "invalid")
    assert Stripe::RBAC::Policy.can_all?("audit.view", "reports.view")
  end

  # Audit Event tests
  def test_audit_event_creation
    event = Stripe::Audit::AuditEvent.new(
      user_id: "user1",
      user_name: "Alice",
      action: "create",
      resource_type: "bank_transaction",
      resource_id: "txn123",
      changes: { amount: 1000 },
      risk_level: "low"
    )

    assert_equal "user1", event.user_id
    assert_equal "Alice", event.user_name
    assert_equal "create", event.action
    assert_equal "txn123", event.resource_id
    assert_equal "low", event.risk_level
  end

  def test_audit_event_from_context
    Stripe::RBAC::Context.set(
      Stripe::RBAC::Context.new(
        user_id: "user1",
        user_name: "Alice",
        role: :auditor,
        ip_address: "192.168.1.1"
      )
    )

    event = Stripe::Audit::AuditEvent.from_context(
      action: "view",
      resource_type: "bank_transaction",
      resource_id: "txn123"
    )

    assert_equal "user1", event.user_id
    assert_equal "192.168.1.1", event.ip_address
  end

  # Audit Logger tests
  def test_audit_logger_logging
    event = Stripe::Audit::AuditEvent.new(
      user_id: "user1",
      user_name: "Alice",
      action: "create",
      resource_type: "bank_transaction",
      resource_id: "txn123"
    )

    Stripe::Audit.log_event(event)
    assert_equal 1, Stripe::Audit.logger.count
  end

  def test_audit_logger_find_events
    Stripe::Audit.logger.clear!

    event1 = Stripe::Audit::AuditEvent.new(
      user_id: "user1",
      user_name: "Alice",
      action: "create",
      resource_type: "bank_transaction",
      risk_level: "low"
    )
    event2 = Stripe::Audit::AuditEvent.new(
      user_id: "user2",
      user_name: "Bob",
      action: "delete",
      resource_type: "crypto_transaction",
      risk_level: "high"
    )

    Stripe::Audit.log_event(event1)
    Stripe::Audit.log_event(event2)

    found = Stripe::Audit.find_events(user_id: "user1")
    assert_equal 1, found.count
    assert_equal "Alice", found.first.user_name

    high_risk = Stripe::Audit.high_risk_events
    assert_equal 1, high_risk.count
  end

  # Risk Scoring tests
  def test_risk_scorer_low_risk
    transaction = {
      amount: 100,
      currency: "USD",
      counterparty_new: false,
      country: "US",
      is_bulk: false,
      compliance_flag: false,
    }

    result = Stripe::Risk.score_transaction(transaction)
    assert result[:score] <= 30
    assert_equal "low", result[:level]
  end

  def test_risk_scorer_high_risk
    transaction = {
      amount: 500_000,
      currency: "USD",
      counterparty_new: true,
      country: "IR",
      is_bulk: true,
      compliance_flag: true,
    }

    result = Stripe::Risk.score_transaction(transaction)
    assert result[:score] >= 50
    assert_equal "high", result[:level]
  end

  # Banking Module tests
  def test_bank_transaction_create_with_permission
    Stripe::RBAC::Context.with_context(
      user_id: "user1",
      user_name: "Alice",
      role: :treasury_manager
    ) do
      txn = Stripe::Banking.transactions.create_transaction(
        account_id: "acc123",
        amount: 1000,
        currency: "USD"
      )

      assert txn[:id]
      assert_equal 1000, txn[:amount]
      assert_equal "pending", txn[:status]
    end
  end

  def test_bank_transaction_create_denied
    Stripe::RBAC::Context.with_context(
      user_id: "user1",
      user_name: "Alice",
      role: :auditor
    ) do
      assert_raises(Stripe::RBAC::Policy::AccessDeniedError) do
        Stripe::Banking.transactions.create_transaction(
          account_id: "acc123",
          amount: 1000
        )
      end
    end
  end

  def test_bank_transaction_list_filtered
    Stripe::RBAC::Context.with_context(
      user_id: "user1",
      user_name: "Alice",
      role: :treasury_manager
    ) do
      Stripe::Banking.transactions.create_transaction(
        account_id: "acc123",
        amount: 1000,
        currency: "USD"
      )

      Stripe::RBAC::Context.clear
    end

    # Auditor view shows limited data
    Stripe::RBAC::Context.with_context(
      user_id: "user2",
      user_name: "Bob",
      role: :auditor
    ) do
      txns = Stripe::Banking.transactions.list_transactions(account_id: "acc123")
      assert_equal 1, txns.count
      assert txns.first.key?(:id)
      assert txns.first.key?(:amount)
      refute txns.first.key?(:metadata)
    end
  end

  # Crypto Module tests
  def test_crypto_wallet_monitoring
    Stripe::RBAC::Context.with_context(
      user_id: "user1",
      user_name: "Alice",
      role: :treasury_manager
    ) do
      wallet = Stripe::Crypto.transactions.monitor_wallet(
        wallet_address: "0x123abc",
        blockchain: "ethereum",
        label: "Main Wallet"
      )

      assert wallet[:id]
      assert_equal "0x123abc", wallet[:address]
      assert_equal "ethereum", wallet[:blockchain]
    end
  end

  def test_crypto_transaction_create_with_permission
    Stripe::RBAC::Context.with_context(
      user_id: "user1",
      user_name: "Alice",
      role: :treasury_manager
    ) do
      txn = Stripe::Crypto.transactions.create_transaction(
        wallet_id: "wallet123",
        transaction_hash: "0xabc123",
        amount: 1.5,
        currency: "ETH"
      )

      assert txn[:id]
      assert_equal 1.5, txn[:amount]
      assert_equal "ETH", txn[:currency]
    end
  end

  # Audit Report tests
  def test_audit_report_generation
    # Create some audit events
    5.times do |i|
      Stripe::RBAC::Context.with_context(
        user_id: "user#{i}",
        user_name: "User #{i}",
        role: :treasury_manager
      ) do
        Stripe::Audit.log_from_context(
          action: "create",
          resource_type: "bank_transaction",
          resource_id: "txn#{i}",
          module_name: "banking",
          risk_level: i > 2 ? "high" : "low"
        )
      end
    end

    # Generate report
    Stripe::RBAC::Context.with_context(
      user_id: "compliance",
      user_name: "Compliance Officer",
      role: :compliance_officer
    ) do
      report = Stripe.audit_reports.generate_report(
        start_date: Date.today - 1,
        end_date: Date.today + 1
      )

      assert report[:report_id]
      assert report[:sections][:executive_summary]
      assert report[:sections][:bank_module_activity]
    end
  end

  def test_audit_report_json_export
    Stripe::RBAC::Context.with_context(
      user_id: "user1",
      user_name: "Alice",
      role: :compliance_officer
    ) do
      Stripe.audit_reports.generate_report(
        start_date: Date.today - 1,
        end_date: Date.today + 1
      )

      json = Stripe.audit_reports.export_as_json
      data = JSON.parse(json)

      assert data["report_id"]
      assert data["sections"]
    end
  end

  def test_audit_report_csv_export
    Stripe::RBAC::Context.with_context(
      user_id: "user1",
      user_name: "Alice",
      role: :compliance_officer
    ) do
      Stripe.audit_reports.generate_report(
        start_date: Date.today - 1,
        end_date: Date.today + 1
      )

      csv = Stripe.audit_reports.export_as_csv
      assert csv.include?("Audit Report")
      assert csv.include?("EXECUTIVE SUMMARY")
    end
  end

  def test_report_export_denied_for_auditor
    Stripe::RBAC::Context.with_context(
      user_id: "user1",
      user_name: "ComplianceOfficer",
      role: :compliance_officer
    ) do
      Stripe.audit_reports.generate_report(
        start_date: Date.today - 1,
        end_date: Date.today + 1
      )
    end

    Stripe::RBAC::Context.clear

    # Auditor cannot create audit reports
    Stripe::RBAC::Context.with_context(
      user_id: "user2",
      user_name: "Auditor",
      role: :auditor
    ) do
      assert_raises(Stripe::RBAC::Policy::AccessDeniedError) do
        Stripe.audit_reports.generate_report(
          start_date: Date.today - 1,
          end_date: Date.today + 1
        )
      end
    end
  end

  def test_full_audit_workflow
    # Treasury Manager creates transaction
    Stripe::RBAC::Context.with_context(
      user_id: "tm1",
      user_name: "Treasury Manager",
      role: :treasury_manager
    ) do
      txn = Stripe::Banking.transactions.create_transaction(
        account_id: "acc1",
        amount: 50_000,
        currency: "USD",
        description: "Large transfer"
      )
      assert txn[:id]
    end

    # Compliance officer reviews and adds notes
    Stripe::RBAC::Context.with_context(
      user_id: "co1",
      user_name: "Compliance Officer",
      role: :compliance_officer
    ) do
      Stripe::Audit.log_from_context(
        action: "review",
        resource_type: "bank_transaction",
        resource_id: "txn1",
        investigator_notes: "Large amount transaction, verified with counterparty",
        module_name: "banking",
        risk_level: "medium"
      )
    end

    # Auditor views report
    Stripe::RBAC::Context.with_context(
      user_id: "aud1",
      user_name: "Auditor",
      role: :auditor
    ) do
      events = Stripe::Audit.find_events(resource_type: "bank_transaction")
      assert events.count >= 1
    end

    # Compliance officer generates report
    Stripe::RBAC::Context.with_context(
      user_id: "co1",
      user_name: "Compliance Officer",
      role: :compliance_officer
    ) do
      report = Stripe.audit_reports.generate_report(
        start_date: Date.today - 1,
        end_date: Date.today + 1,
        include_sections: %i[executive_summary bank_module_activity investigator_notes]
      )

      assert report[:report_id]
      assert_equal 2, report[:sections][:executive_summary][:metrics][:total_bank_events]
    end
  end
end
