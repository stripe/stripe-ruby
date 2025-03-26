# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressService < StripeService
        class CreateParams < Stripe::RequestParams
          # Open Enum. The currency the FinancialAddress should support. Currently, only the `usd` and `gbp` values are supported.
          sig { returns(String) }
          attr_accessor :currency
          # The ID of the FinancialAccount the new FinancialAddress should be associated with.
          sig { returns(String) }
          attr_accessor :financial_account
          sig { params(currency: String, financial_account: String).void }
          def initialize(currency: nil, financial_account: nil); end
        end
        class ListParams < Stripe::RequestParams
          # The ID of the FinancialAccount for which FinancialAddresses are to be returned.
          sig { returns(String) }
          attr_accessor :financial_account
          # Open Enum. A list of fields to reveal in the FinancialAddresses returned.
          sig { returns(T::Array[String]) }
          attr_accessor :include
          # The page limit.
          sig { returns(Integer) }
          attr_accessor :limit
          sig { params(financial_account: String, include: T::Array[String], limit: Integer).void }
          def initialize(financial_account: nil, include: nil, limit: nil); end
        end
        class RetrieveParams < Stripe::RequestParams
          # Open Enum. A list of fields to reveal in the FinancialAddresses returned.
          sig { returns(T::Array[String]) }
          attr_accessor :include
          sig { params(include: T::Array[String]).void }
          def initialize(include: nil); end
        end
        # Create a new FinancialAddress for a FinancialAccount.
        #
        # ** raises FinancialAccountNotOpenError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::FinancialAddressService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::FinancialAddress)
         }
        def create(params = {}, opts = {}); end

        # List all FinancialAddresses for a FinancialAccount.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::FinancialAddressService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a FinancialAddress. By default, the FinancialAddress will be returned in it's unexpanded state, revealing only the last 4 digits of the account number.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::FinancialAddressService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::FinancialAddress)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end