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
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # The status of the FinancialAccount to filter by. By default, closed FinancialAccounts are not returned.
          sig { returns(T.nilable(String)) }
          def status; end
          sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
          def status=(_status); end
          sig { params(limit: T.nilable(Integer), status: T.nilable(String)).void }
          def initialize(limit: nil, status: nil); end
        end
        class CreateParams < Stripe::RequestParams
          class Storage < Stripe::RequestParams
            # The currencies that this FinancialAccount can hold.
            sig { returns(T::Array[String]) }
            def holds_currencies; end
            sig { params(_holds_currencies: T::Array[String]).returns(T::Array[String]) }
            def holds_currencies=(_holds_currencies); end
            sig { params(holds_currencies: T::Array[String]).void }
            def initialize(holds_currencies: nil); end
          end
          # A descriptive name for the FinancialAccount, up to 50 characters long. This name will be used in the Stripe Dashboard and embedded components.
          sig { returns(T.nilable(String)) }
          def display_name; end
          sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
          def display_name=(_display_name); end
          # Metadata associated with the FinancialAccount.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # Parameters specific to creating `storage` type FinancialAccounts.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountService::CreateParams::Storage))
           }
          def storage; end
          sig {
            params(_storage: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountService::CreateParams::Storage)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountService::CreateParams::Storage))
           }
          def storage=(_storage); end
          # The type of FinancialAccount to create.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(display_name: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), storage: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountService::CreateParams::Storage), type: String).void
           }
          def initialize(display_name: nil, metadata: nil, storage: nil, type: nil); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class CloseParams < Stripe::RequestParams
          class ForwardingSettings < Stripe::RequestParams
            # The address to send forwarded payments to.
            sig { returns(T.nilable(String)) }
            def payment_method; end
            sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
            def payment_method=(_payment_method); end
            # The address to send forwarded payouts to.
            sig { returns(T.nilable(String)) }
            def payout_method; end
            sig { params(_payout_method: T.nilable(String)).returns(T.nilable(String)) }
            def payout_method=(_payout_method); end
            sig { params(payment_method: T.nilable(String), payout_method: T.nilable(String)).void }
            def initialize(payment_method: nil, payout_method: nil); end
          end
          # The addresses to forward any incoming transactions to.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountService::CloseParams::ForwardingSettings))
           }
          def forwarding_settings; end
          sig {
            params(_forwarding_settings: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountService::CloseParams::ForwardingSettings)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountService::CloseParams::ForwardingSettings))
           }
          def forwarding_settings=(_forwarding_settings); end
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