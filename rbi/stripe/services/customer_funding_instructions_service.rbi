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
          def country; end
          sig { params(_country: String).returns(String) }
          def country=(_country); end
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        # Configuration for eu_bank_transfer funding type.
        sig {
          returns(T.nilable(::Stripe::CustomerFundingInstructionsService::CreateParams::BankTransfer::EuBankTransfer))
         }
        def eu_bank_transfer; end
        sig {
          params(_eu_bank_transfer: T.nilable(::Stripe::CustomerFundingInstructionsService::CreateParams::BankTransfer::EuBankTransfer)).returns(T.nilable(::Stripe::CustomerFundingInstructionsService::CreateParams::BankTransfer::EuBankTransfer))
         }
        def eu_bank_transfer=(_eu_bank_transfer); end
        # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
        #
        # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
        sig { returns(T.nilable(T::Array[String])) }
        def requested_address_types; end
        sig {
          params(_requested_address_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def requested_address_types=(_requested_address_types); end
        # The type of the `bank_transfer`
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(eu_bank_transfer: T.nilable(::Stripe::CustomerFundingInstructionsService::CreateParams::BankTransfer::EuBankTransfer), requested_address_types: T.nilable(T::Array[String]), type: String).void
         }
        def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
      end
      # Additional parameters for `bank_transfer` funding types
      sig { returns(::Stripe::CustomerFundingInstructionsService::CreateParams::BankTransfer) }
      def bank_transfer; end
      sig {
        params(_bank_transfer: ::Stripe::CustomerFundingInstructionsService::CreateParams::BankTransfer).returns(::Stripe::CustomerFundingInstructionsService::CreateParams::BankTransfer)
       }
      def bank_transfer=(_bank_transfer); end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      sig { params(_currency: String).returns(String) }
      def currency=(_currency); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The `funding_type` to get the instructions for.
      sig { returns(String) }
      def funding_type; end
      sig { params(_funding_type: String).returns(String) }
      def funding_type=(_funding_type); end
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