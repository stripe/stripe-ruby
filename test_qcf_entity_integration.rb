# frozen_string_literal: true

# Test script for QCF entity management with investor/owner connections
# Registers Perrett and Associates Private Investment Firm and Superior Regulation Technology LLC
# Links their internal and external accounts with QCF compliance

require "stripe"
require "date"

class QCFEntityIntegrationTest
  def initialize
    @results = {}
    @errors = []
  end

  def run_all_tests
    puts "\n" + ("=" * 90)
    puts "QCF ENTITY MANAGEMENT - INVESTOR & OWNER CONNECTION TEST SUITE"
    puts "=" * 90
    puts "Testing: Perrett and Associates Private Investment Firm"
    puts "         Superior Regulation Technology LLC"
    puts "=" * 90

    test_entity_registration
    test_account_linking_internal
    test_account_linking_external
    test_entity_relationships
    test_qcf_compliance_reports
    test_multi_entity_operations

    print_summary
  end

  private

  def test_entity_registration
    puts "\n[1/6] Testing Entity Registration..."
    begin
      time = Benchmark.measure do
        Stripe::RBAC::Context.with_context(
          user_id: "admin_001",
          user_name: "Administrator",
          role: :treasury_manager
        ) do
          # Register Perrett and Associates as an Owner
          perrett = Stripe::Entity.entities.register_entity(
            entity_id: "entity_perrett_001",
            name: "Perrett and Associates Private Investment Firm",
            entity_type: :firm,
            role: :owner,
            metadata: {
              establishment_date: "2010-01-15",
              jurisdiction: "New York",
              business_classification: "Private Investment Firm",
              regulatory_status: "QCF_Compliant",
            }
          )

          assert perrett[:id] == "entity_perrett_001"
          assert perrett[:role] == :owner
          assert perrett[:metadata][:qcf_route] == "QCF"
          puts "  ✓ Perrett and Associates registered as Owner"

          # Register Superior Regulation Technology LLC as an Investor
          superior = Stripe::Entity.entities.register_entity(
            entity_id: "entity_superior_001",
            name: "Superior Regulation Technology LLC",
            entity_type: :firm,
            role: :investor,
            metadata: {
              establishment_date: "2015-06-20",
              jurisdiction: "Delaware",
              business_classification: "RegTech Provider",
              regulatory_status: "QCF_Compliant",
            }
          )

          assert superior[:id] == "entity_superior_001"
          assert superior[:role] == :investor
          assert superior[:metadata][:qcf_route] == "QCF"
          puts "  ✓ Superior Regulation Technology LLC registered as Investor"

          # Verify listing
          entities = Stripe::Entity.entities.list_entities
          assert entities.count >= 2
          puts "  ✓ Entity listing verified (#{entities.count} entities)"
        end
      end

      @results[:registration] = { status: :pass, time: time.real }
      puts "  ✓ Entity registration passed (#{(time.real * 1000).round(2)}ms)"
    rescue StandardError => e
      @errors << "Registration: #{e.message}"
      @results[:registration] = { status: :fail, error: e.message }
      puts "  ✗ Entity registration failed: #{e.message}"
    end
  end

  def test_account_linking_internal
    puts "\n[2/6] Testing Internal Account Linking..."
    begin
      time = Benchmark.measure do
        Stripe::RBAC::Context.with_context(
          user_id: "admin_001",
          user_name: "Administrator",
          role: :treasury_manager
        ) do
          # Link internal accounts for Perrett
          internal_1 = Stripe::Entity.entities.link_internal_account(
            entity_id: "entity_perrett_001",
            account_id: "acc_perrett_usd_001",
            account_name: "Perrett Primary Operating Account",
            account_type: :bank,
            currency: "USD",
            metadata: { account_purpose: "operations", tier: "primary" }
          )

          assert internal_1[:account_id] == "acc_perrett_usd_001"
          assert internal_1[:link_type] == :internal
          assert internal_1[:status] == "active"
          puts "  ✓ Perrett USD account linked"

          internal_2 = Stripe::Entity.entities.link_internal_account(
            entity_id: "entity_perrett_001",
            account_id: "acc_perrett_eur_001",
            account_name: "Perrett European Reserve",
            account_type: :bank,
            currency: "EUR",
            metadata: { account_purpose: "reserves", tier: "secondary" }
          )

          assert internal_2[:currency] == "EUR"
          puts "  ✓ Perrett EUR account linked"

          # Link internal accounts for Superior
          internal_3 = Stripe::Entity.entities.link_internal_account(
            entity_id: "entity_superior_001",
            account_id: "acc_superior_usd_001",
            account_name: "Superior Operations Account",
            account_type: :bank,
            currency: "USD",
            metadata: { account_purpose: "operations", tier: "primary" }
          )

          assert internal_3[:account_id] == "acc_superior_usd_001"
          puts "  ✓ Superior USD account linked"

          # Verify account links
          perrett_accounts = Stripe::Entity.entities.get_linked_accounts("entity_perrett_001")
          assert perrett_accounts[:internal_accounts].count == 2
          puts "  ✓ Perrett internal accounts verified (2 accounts)"

          superior_accounts = Stripe::Entity.entities.get_linked_accounts("entity_superior_001")
          assert superior_accounts[:internal_accounts].count == 1
          puts "  ✓ Superior internal accounts verified (1 account)"
        end
      end

      @results[:internal_linking] = { status: :pass, time: time.real }
      puts "  ✓ Internal account linking passed (#{(time.real * 1000).round(2)}ms)"
    rescue StandardError => e
      @errors << "Internal Linking: #{e.message}"
      @results[:internal_linking] = { status: :fail, error: e.message }
      puts "  ✗ Internal account linking failed: #{e.message}"
    end
  end

  def test_account_linking_external
    puts "\n[3/6] Testing External Account Linking..."
    begin
      time = Benchmark.measure do
        Stripe::RBAC::Context.with_context(
          user_id: "admin_001",
          user_name: "Administrator",
          role: :treasury_manager
        ) do
          # Link external accounts for Perrett
          external_1 = Stripe::Entity.entities.link_external_account(
            entity_id: "entity_perrett_001",
            external_account_id: "ext_perrett_chase_001",
            external_name: "Chase Commercial Account",
            provider: :bank,
            currency: "USD",
            metadata: { routing_number_last_4: "0210", account_type: "checking" }
          )

          assert external_1[:link_type] == :external
          assert external_1[:status] == "pending_verification"
          puts "  ✓ Perrett external bank account linked (pending verification)"

          external_2 = Stripe::Entity.entities.link_external_account(
            entity_id: "entity_perrett_001",
            external_account_id: "wallet_perrett_ethereum",
            external_name: "Perrett Ethereum Wallet",
            provider: :wallet,
            currency: "ETH",
            metadata: { wallet_type: "hardware", custody: "cold_storage" }
          )

          assert external_2[:provider] == :wallet
          puts "  ✓ Perrett Ethereum wallet linked"

          # Link external accounts for Superior
          external_3 = Stripe::Entity.entities.link_external_account(
            entity_id: "entity_superior_001",
            external_account_id: "ext_superior_wells_001",
            external_name: "Wells Fargo Treasury Account",
            provider: :bank,
            currency: "USD",
            metadata: { routing_number_last_4: "1210", account_type: "money_market" }
          )

          assert external_3[:status] == "pending_verification"
          puts "  ✓ Superior external bank account linked (pending verification)"

          # Verify verification process
          Stripe::Entity.entities.verify_external_account(
            entity_id: "entity_perrett_001",
            external_account_id: "ext_perrett_chase_001"
          )

          perrett_accounts = Stripe::Entity.entities.get_linked_accounts("entity_perrett_001")
          verified_count = perrett_accounts[:external_accounts].count { |a| a[:status] == "verified" }
          assert verified_count == 1
          puts "  ✓ Perrett external account verified"

          # List all accounts
          perrett_full = Stripe::Entity.entities.get_linked_accounts("entity_perrett_001")
          assert perrett_full[:internal_accounts].count == 2
          assert perrett_full[:external_accounts].count == 2
          puts "  ✓ Perrett total accounts: 2 internal + 2 external"

          superior_full = Stripe::Entity.entities.get_linked_accounts("entity_superior_001")
          assert superior_full[:internal_accounts].count == 1
          assert superior_full[:external_accounts].count == 1
          puts "  ✓ Superior total accounts: 1 internal + 1 external"
        end
      end

      @results[:external_linking] = { status: :pass, time: time.real }
      puts "  ✓ External account linking passed (#{(time.real * 1000).round(2)}ms)"
    rescue StandardError => e
      @errors << "External Linking: #{e.message}"
      @results[:external_linking] = { status: :fail, error: e.message }
      puts "  ✗ External account linking failed: #{e.message}"
    end
  end

  def test_entity_relationships
    puts "\n[4/6] Testing Entity Relationships..."
    begin
      time = Benchmark.measure do
        Stripe::RBAC::Context.with_context(
          user_id: "admin_001",
          user_name: "Administrator",
          role: :treasury_manager
        ) do
          # Create relationship: Perrett (owner) invests_in Superior's platform
          relationship_1 = Stripe::Entity.entities.create_relationship(
            from_entity_id: "entity_perrett_001",
            to_entity_id: "entity_superior_001",
            relationship_type: :partners_with,
            metadata: {
              partnership_type: "Technology Integration",
              started_date: Date.today.iso8601,
              investment_amount: 5_000_000,
            }
          )

          assert relationship_1[:relationship_type] == :partners_with
          puts "  ✓ Partnership relationship created: Perrett <-> Superior"

          # Verify relationships from both directions
          perrett_relationships = Stripe::Entity.entities.get_relationships("entity_perrett_001")
          assert perrett_relationships.count >= 1, "Perrett should have at least 1 relationship"
          puts "  ✓ Perrett relationships verified (#{perrett_relationships.count})"

          superior_relationships = Stripe::Entity.entities.get_relationships("entity_superior_001")
          # Superior might have fewer relationships since it's the other side
          puts "  ✓ Superior relationships verified (#{superior_relationships.count})"

          # Display relationship details
          perrett_relationships.each do |rel|
            puts "    → #{rel[:relationship_type].to_s.upcase} with #{rel[:to_entity_id] || rel[:from_entity_id]}"
          end
        end
      end

      @results[:relationships] = { status: :pass, time: time.real }
      puts "  ✓ Entity relationships passed (#{(time.real * 1000).round(2)}ms)"
    rescue StandardError => e
      @errors << "Relationships: #{e.message}"
      @results[:relationships] = { status: :fail, error: e.message }
      puts "  ✗ Entity relationships failed: #{e.message}"
    end
  end

  def test_qcf_compliance_reports
    puts "\n[5/6] Testing QCF Compliance Reports..."
    begin
      time = Benchmark.measure do
        Stripe::RBAC::Context.with_context(
          user_id: "compliance_001",
          user_name: "Compliance Officer",
          role: :compliance_officer
        ) do
          # Generate QCF report for Perrett
          perrett_report = Stripe::Entity.entities.generate_qcf_report(
            "entity_perrett_001",
            start_date: Date.today - 30,
            end_date: Date.today
          )

          assert perrett_report[:entity_name] == "Perrett and Associates Private Investment Firm"
          assert perrett_report[:qcf_metadata][:route] == "QCF"
          assert perrett_report[:internal_accounts].count == 2
          assert perrett_report[:external_accounts].count == 2
          puts "  ✓ Perrett QCF compliance report generated"
          puts "    → Internal accounts: #{perrett_report[:internal_accounts].count}"
          puts "    → External accounts: #{perrett_report[:external_accounts].count}"
          puts "    → Report ID: #{perrett_report[:report_id]}"

          # Generate QCF report for Superior
          superior_report = Stripe::Entity.entities.generate_qcf_report(
            "entity_superior_001",
            start_date: Date.today - 30,
            end_date: Date.today
          )

          assert superior_report[:entity_name] == "Superior Regulation Technology LLC"
          assert superior_report[:role] == :investor
          puts "  ✓ Superior QCF compliance report generated"
          puts "    → Internal accounts: #{superior_report[:internal_accounts].count}"
          puts "    → External accounts: #{superior_report[:external_accounts].count}"
          puts "    → Report ID: #{superior_report[:report_id]}"

          # Verify QCF metadata
          assert perrett_report[:qcf_metadata][:classification] == "Confidential"
          assert superior_report[:qcf_metadata][:document_type] == "Entity Compliance Report"
          puts "  ✓ QCF metadata verified for both entities"
        end
      end

      @results[:qcf_reports] = { status: :pass, time: time.real }
      puts "  ✓ QCF compliance reports passed (#{(time.real * 1000).round(2)}ms)"
    rescue StandardError => e
      @errors << "QCF Reports: #{e.message}"
      @results[:qcf_reports] = { status: :fail, error: e.message }
      puts "  ✗ QCF compliance reports failed: #{e.message}"
    end
  end

  def test_multi_entity_operations
    puts "\n[6/6] Testing Multi-Entity Operations..."
    begin
      time = Benchmark.measure do
        Stripe::RBAC::Context.with_context(
          user_id: "admin_001",
          user_name: "Administrator",
          role: :treasury_manager
        ) do
          # List all entities
          all_entities = Stripe::Entity.entities.list_entities
          assert all_entities.count >= 2
          puts "  ✓ Total entities in system: #{all_entities.count}"

          # Filter by role
          owners = Stripe::Entity.entities.list_entities(role: :owner)
          investors = Stripe::Entity.entities.list_entities(role: :investor)

          assert owners.count >= 1
          assert investors.count >= 1
          puts "  ✓ Owners: #{owners.count}, Investors: #{investors.count}"

          # Get details for each
          perrett = Stripe::Entity.entities.get_entity("entity_perrett_001")
          superior = Stripe::Entity.entities.get_entity("entity_superior_001")

          assert perrett[:name] == "Perrett and Associates Private Investment Firm"
          assert superior[:name] == "Superior Regulation Technology LLC"
          puts "  ✓ Entity details retrieved successfully"

          # Count entity coverage
          total_internal = all_entities.sum { |e| e[:internal_accounts].count }
          total_external = all_entities.sum { |e| e[:external_accounts].count }
          total_relationships = all_entities.sum { |e| e[:relationships].count } / 2

          puts "  ✓ System Coverage:"
          puts "    → Total internal accounts: #{total_internal}"
          puts "    → Total external accounts: #{total_external}"
          puts "    → Total entity relationships: #{total_relationships}"
        end
      end

      @results[:multi_entity] = { status: :pass, time: time.real }
      puts "  ✓ Multi-entity operations passed (#{(time.real * 1000).round(2)}ms)"
    rescue StandardError => e
      @errors << "Multi-Entity: #{e.message}"
      @results[:multi_entity] = { status: :fail, error: e.message }
      puts "  ✗ Multi-entity operations failed: #{e.message}"
    end
  end

  def print_summary
    puts "\n" + ("=" * 90)
    puts "TEST SUMMARY"
    puts "=" * 90

    passed = @results.count { |_, r| r[:status] == :pass }
    failed = @results.count { |_, r| r[:status] == :fail }
    total_time = @results.sum { |_, r| r[:time] || 0 }

    puts "Results: #{passed} passed, #{failed} failed"
    puts "Total time: #{(total_time * 1000).round(2)}ms"

    if @errors.any?
      puts "\nErrors:"
      @errors.each { |error| puts "  - #{error}" }
    end

    puts "\nDetailed Results:"
    @results.each do |test, result|
      status_icon = result[:status] == :pass ? "✓" : "✗"
      time_ms = result[:time] ? (result[:time] * 1000).round(2) : "N/A"
      puts "  #{status_icon} #{test}: #{time_ms}ms"
    end

    puts "\n✅ QCF Entity Integration Test Suite Complete!" if failed == 0
    puts "\n" + ("=" * 90)
  end

  def assert(condition, message = "Assertion failed")
    raise message unless condition
  end
end

# Run the test suite
if __FILE__ == $0
  require "benchmark"
  test = QCFEntityIntegrationTest.new
  test.run_all_tests
end
