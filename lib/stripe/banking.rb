# frozen_string_literal: true

module Stripe
  module Banking
    # Managed bank transaction service with RBAC enforcement
    class TransactionManager
      def initialize
        @transactions = {}
        @lock = Mutex.new
      end

      # Create a bank transaction (requires permission)
      def create_transaction(account_id:, amount:, currency: "USD", description: nil, metadata: {})
        RBAC::Policy.require_permission!("bank.create")

        @lock.synchronize do
          transaction = {
            id: SecureRandom.uuid,
            account_id: account_id,
            amount: amount,
            currency: currency,
            description: description,
            metadata: metadata,
            created_at: Time.now.utc,
            created_by: RBAC::Context.current.user_id,
            status: "pending",
          }

          @transactions[transaction[:id]] = transaction

          # Log audit event
          Audit.log_from_context(
            action: "create_transaction",
            resource_type: "bank_transaction",
            resource_id: transaction[:id],
            changes: transaction,
            module_name: "banking",
            risk_level: assess_risk(transaction)
          )

          transaction
        end
      end

      # View bank transaction (requires permission)
      def view_transaction(transaction_id)
        RBAC::Policy.require_permission!("bank.view")

        transaction = @lock.synchronize { @transactions[transaction_id] }
        return nil unless transaction

        # Log audit event for viewing sensitive data
        Audit.log_from_context(
          action: "view_transaction",
          resource_type: "bank_transaction",
          resource_id: transaction_id,
          module_name: "banking"
        )

        transaction
      end

      # Update bank transaction (requires permission)
      def update_transaction(transaction_id, updates)
        RBAC::Policy.require_permission!("bank.edit")

        @lock.synchronize do
          transaction = @transactions[transaction_id]
          return nil unless transaction

          old_values = transaction.dup
          transaction.merge!(updates)
          transaction[:updated_at] = Time.now.utc
          transaction[:updated_by] = RBAC::Context.current.user_id

          # Log audit event
          changes = {}
          updates.each do |key, value|
            changes[key] = { old: old_values[key], new: value }
          end

          Audit.log_from_context(
            action: "update_transaction",
            resource_type: "bank_transaction",
            resource_id: transaction_id,
            changes: changes,
            module_name: "banking"
          )

          transaction
        end
      end

      # Delete bank transaction (requires permission)
      def delete_transaction(transaction_id, reason: nil)
        RBAC::Policy.require_permission!("bank.delete")

        @lock.synchronize do
          transaction = @transactions.delete(transaction_id)

          if transaction
            Audit.log_from_context(
              action: "delete_transaction",
              resource_type: "bank_transaction",
              resource_id: transaction_id,
              investigator_notes: reason,
              module_name: "banking"
            )
          end

          transaction
        end
      end

      # List all transactions with role-based filtering
      def list_transactions(account_id: nil, status: nil, start_date: nil, end_date: nil)
        RBAC::Policy.require_permission!("bank.view")

        @lock.synchronize do
          results = @transactions.values

          results = results.select { |t| t[:account_id] == account_id } if account_id
          results = results.select { |t| t[:status] == status } if status

          results = results.select { |t| t[:created_at] >= start_date } if start_date

          results = results.select { |t| t[:created_at] <= end_date } if end_date

          # Apply role-based filtering
          context = RBAC::Context.current
          case context.role.key
          when :auditor
            # Auditors only see summary data, not full details
            results.map { |t| audit_view(t) }
          when :compliance_officer
            # Compliance officers see all details except internal notes
            results.map { |t| compliance_view(t) }
          else
            # Treasury managers see everything
            results
          end
        end
      end

      # Reconcile bank account
      def reconcile_account(account_id:, expected_balance:, notes: nil)
        RBAC::Policy.require_permission!("bank.reconcile")

        @lock.synchronize do
          account_transactions = @transactions.values.select { |t| t[:account_id] == account_id }
          actual_balance = account_transactions.sum { |t| t[:amount] }

          reconciliation = {
            id: SecureRandom.uuid,
            account_id: account_id,
            expected_balance: expected_balance,
            actual_balance: actual_balance,
            difference: expected_balance - actual_balance,
            status: expected_balance == actual_balance ? "reconciled" : "discrepancy",
            timestamp: Time.now.utc,
            reconciled_by: RBAC::Context.current.user_id,
            notes: notes,
          }

          Audit.log_from_context(
            action: "reconcile_account",
            resource_type: "bank_account",
            resource_id: account_id,
            changes: reconciliation,
            module_name: "banking"
          )

          reconciliation
        end
      end

      def count
        @lock.synchronize { @transactions.size }
      end

      def clear!
        @lock.synchronize { @transactions.clear }
      end

      private

      def assess_risk(transaction)
        result = Stripe::Risk.score_transaction(transaction)
        result[:level]
      end

      def audit_view(transaction)
        # Limited view for auditors
        {
          id: transaction[:id],
          amount: transaction[:amount],
          currency: transaction[:currency],
          created_at: transaction[:created_at],
          status: transaction[:status],
        }
      end

      def compliance_view(transaction)
        # Compliance officer view (without internal metadata)
        transaction.except(:metadata)
      end

      def self.instance
        @instance ||= new
      end
    end

    def self.transactions
      TransactionManager.instance
    end
  end
end
