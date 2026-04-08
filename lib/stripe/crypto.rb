# frozen_string_literal: true

module Stripe
  module Crypto
    # Managed crypto transaction service with RBAC enforcement
    class TransactionManager
      def initialize
        @transactions = {}
        @wallets = {}
        @lock = Mutex.new
      end

      # Monitor a wallet (requires permission)
      def monitor_wallet(wallet_address:, blockchain:, label: nil)
        RBAC::Policy.require_permission!("crypto.monitor_wallets")

        @lock.synchronize do
          wallet = {
            id: SecureRandom.uuid,
            address: wallet_address,
            blockchain: blockchain,
            label: label,
            created_at: Time.now.utc,
            monitored_by: RBAC::Context.current.user_id,
            status: "active",
          }

          @wallets[wallet[:id]] = wallet

          Audit.log_from_context(
            action: "monitor_wallet",
            resource_type: "crypto_wallet",
            resource_id: wallet[:id],
            changes: wallet,
            module_name: "crypto"
          )

          wallet
        end
      end

      # Create a crypto transaction (requires permission)
      def create_transaction(wallet_id:, transaction_hash:, amount:, currency: "BTC",
                             direction: "incoming", status: "pending", gas_fee: nil,
                             confirmations: 0)
        RBAC::Policy.require_permission!("crypto.create")

        @lock.synchronize do
          transaction = {
            id: SecureRandom.uuid,
            wallet_id: wallet_id,
            transaction_hash: transaction_hash,
            amount: amount,
            currency: currency,
            direction: direction,
            status: status,
            gas_fee: gas_fee,
            confirmations: confirmations,
            created_at: Time.now.utc,
            created_by: RBAC::Context.current.user_id,
          }

          @transactions[transaction[:id]] = transaction

          risk_data = {
            amount: amount,
            currency: currency,
            is_bulk: false,
            compliance_flag: false,
          }

          # Log audit event
          Audit.log_from_context(
            action: "create_transaction",
            resource_type: "crypto_transaction",
            resource_id: transaction[:id],
            changes: transaction,
            module_name: "crypto",
            risk_level: Stripe::Risk.score_transaction(risk_data)[:level]
          )

          transaction
        end
      end

      # View crypto transaction (requires permission)
      def view_transaction(transaction_id)
        RBAC::Policy.require_permission!("crypto.view")

        transaction = @lock.synchronize { @transactions[transaction_id] }
        return nil unless transaction

        # Log audit event
        Audit.log_from_context(
          action: "view_transaction",
          resource_type: "crypto_transaction",
          resource_id: transaction_id,
          module_name: "crypto"
        )

        transaction
      end

      # Update transaction status (requires permission)
      def update_transaction(transaction_id, updates)
        RBAC::Policy.require_permission!("crypto.edit")

        @lock.synchronize do
          transaction = @transactions[transaction_id]
          return nil unless transaction

          old_values = transaction.dup
          transaction.merge!(updates)
          transaction[:updated_at] = Time.now.utc
          transaction[:updated_by] = RBAC::Context.current.user_id

          changes = {}
          updates.each do |key, value|
            changes[key] = { old: old_values[key], new: value }
          end

          # Log audit event
          Audit.log_from_context(
            action: "update_transaction",
            resource_type: "crypto_transaction",
            resource_id: transaction_id,
            changes: changes,
            module_name: "crypto"
          )

          transaction
        end
      end

      # Delete transaction (requires permission)
      def delete_transaction(transaction_id, reason: nil)
        RBAC::Policy.require_permission!("crypto.delete")

        @lock.synchronize do
          transaction = @transactions.delete(transaction_id)

          if transaction
            Audit.log_from_context(
              action: "delete_transaction",
              resource_type: "crypto_transaction",
              resource_id: transaction_id,
              investigator_notes: reason,
              module_name: "crypto"
            )
          end

          transaction
        end
      end

      # List transactions with role-based filtering
      def list_transactions(wallet_id: nil, status: nil, currency: nil,
                            start_date: nil, end_date: nil)
        RBAC::Policy.require_permission!("crypto.view")

        @lock.synchronize do
          results = @transactions.values

          results = results.select { |t| t[:wallet_id] == wallet_id } if wallet_id
          results = results.select { |t| t[:status] == status } if status
          results = results.select { |t| t[:currency] == currency } if currency

          results = results.select { |t| t[:created_at] >= start_date } if start_date

          results = results.select { |t| t[:created_at] <= end_date } if end_date

          # Apply role-based filtering
          context = RBAC::Context.current
          case context.role.key
          when :auditor
            results.map { |t| audit_view(t) }
          when :compliance_officer
            results.map { |t| compliance_view(t) }
          else
            results
          end
        end
      end

      # List monitored wallets
      def list_wallets(blockchain: nil)
        RBAC::Policy.require_permission!("crypto.monitor_wallets")

        @lock.synchronize do
          results = @wallets.values
          results = results.select { |w| w[:blockchain] == blockchain } if blockchain
          results
        end
      end

      # Get wallet by ID
      def get_wallet(wallet_id)
        RBAC::Policy.require_permission!("crypto.monitor_wallets")
        @lock.synchronize { @wallets[wallet_id] }
      end

      def count_transactions
        @lock.synchronize { @transactions.size }
      end

      def count_wallets
        @lock.synchronize { @wallets.size }
      end

      def clear!
        @lock.synchronize do
          @transactions.clear
          @wallets.clear
        end
      end

      private

      def audit_view(transaction)
        # Limited view for auditors
        {
          id: transaction[:id],
          transaction_hash: transaction[:transaction_hash],
          amount: transaction[:amount],
          currency: transaction[:currency],
          status: transaction[:status],
          confirmations: transaction[:confirmations],
          created_at: transaction[:created_at],
        }
      end

      def compliance_view(transaction)
        # Compliance view includes gas fees
        {
          id: transaction[:id],
          transaction_hash: transaction[:transaction_hash],
          amount: transaction[:amount],
          currency: transaction[:currency],
          direction: transaction[:direction],
          status: transaction[:status],
          gas_fee: transaction[:gas_fee],
          confirmations: transaction[:confirmations],
          created_at: transaction[:created_at],
        }
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
