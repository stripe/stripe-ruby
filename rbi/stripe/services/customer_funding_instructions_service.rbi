# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class CustomerFundingInstructionsService < StripeService
    class CreateParams < Stripe::RequestParams
      class BankTransfer < Stripe::RequestParams
        class EuBankTransfer < Stripe::RequestParams
          # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
          sig { returns(String) }
          attr_accessor :country
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        # Configuration for eu_bank_transfer funding type.
        sig {
          returns(T.nilable(::Stripe::CustomerFundingInstructionsService::CreateParams::BankTransfer::EuBankTransfer))
         }
        attr_accessor :eu_bank_transfer
        # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
        #
        # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :requested_address_types
        # The type of the `bank_transfer`
        sig { returns(String) }
        attr_accessor :type
        sig {
          params(eu_bank_transfer: T.nilable(::Stripe::CustomerFundingInstructionsService::CreateParams::BankTransfer::EuBankTransfer), requested_address_types: T.nilable(T::Array[String]), type: String).void
         }
        def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
      end
      # Additional parameters for `bank_transfer` funding types
      sig { returns(::Stripe::CustomerFundingInstructionsService::CreateParams::BankTransfer) }
      attr_accessor :bank_transfer
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_accessor :currency
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The `funding_type` to get the instructions for.
      sig { returns(String) }
      attr_accessor :funding_type
      sig {
        params(bank_transfer: ::Stripe::CustomerFundingInstructionsService::CreateParams::BankTransfer, currency: String, expand: T.nilable(T::Array[String]), funding_type: String).void
       }
      def initialize(bank_transfer: nil, currency: nil, expand: nil, funding_type: nil); end
    end
    # Retrieve funding instructions for a customer cash balance. If funding instructions do not yet exist for the customer, new
    # funding instructions will be created. If funding instructions have already been created for a given customer, the same
    # funding instructions will be retrieved. In other words, we will return the same funding instructions each time.
    sig {
      params(customer: String, params: T.any(::Stripe::CustomerFundingInstructionsService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FundingInstructions)
     }
    def create(customer, params = {}, opts = {}); end
  end
end