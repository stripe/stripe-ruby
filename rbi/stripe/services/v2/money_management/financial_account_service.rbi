# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountService < StripeService
        class ListParams < Stripe::RequestParams
          # The page limit.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          # The status of the FinancialAccount to filter by. By default, closed FinancialAccounts are not returned.
          sig { returns(T.nilable(String)) }
          attr_accessor :status
          sig { params(limit: T.nilable(Integer), status: T.nilable(String)).void }
          def initialize(limit: nil, status: nil); end
        end
        class CreateParams < Stripe::RequestParams
          class Storage < Stripe::RequestParams
            # The currencies that this FinancialAccount can hold.
            sig { returns(T::Array[String]) }
            attr_accessor :holds_currencies
            sig { params(holds_currencies: T::Array[String]).void }
            def initialize(holds_currencies: nil); end
          end
          # Metadata associated with the FinancialAccount.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # Parameters specific to creating `storage` type FinancialAccounts.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountService::CreateParams::Storage))
           }
          attr_accessor :storage
          # The type of FinancialAccount to create.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(metadata: T.nilable(T::Hash[String, String]), storage: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountService::CreateParams::Storage), type: String).void
           }
          def initialize(metadata: nil, storage: nil, type: nil); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class CloseParams < Stripe::RequestParams
          class ForwardingSettings < Stripe::RequestParams
            # The address to send forwarded payments to.
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_method
            # The address to send forwarded payouts to.
            sig { returns(T.nilable(String)) }
            attr_accessor :payout_method
            sig { params(payment_method: T.nilable(String), payout_method: T.nilable(String)).void }
            def initialize(payment_method: nil, payout_method: nil); end
          end
          # The addresses to forward any incoming transactions to.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountService::CloseParams::ForwardingSettings))
           }
          attr_accessor :forwarding_settings
          sig {
            params(forwarding_settings: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountService::CloseParams::ForwardingSettings)).void
           }
          def initialize(forwarding_settings: nil); end
        end
        # Closes a FinancialAccount with or without forwarding settings.
        #
        # ** raises NonZeroBalanceError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::FinancialAccountService::CloseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::FinancialAccount)
         }
        def close(id, params = {}, opts = {}); end

        # Creates a new FinancialAccount.
        #
        # ** raises AlreadyExistsError
        # ** raises FeatureNotEnabledError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::FinancialAccountService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::FinancialAccount)
         }
        def create(params = {}, opts = {}); end

        # Lists FinancialAccounts in this compartment.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::FinancialAccountService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an existing FinancialAccount.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::FinancialAccountService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::FinancialAccount)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end