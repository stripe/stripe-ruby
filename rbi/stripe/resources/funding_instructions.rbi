# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Each customer has a [`balance`](https://stripe.com/docs/api/customers/object#customer_object-balance) that is
  # automatically applied to future invoices and payments using the `customer_balance` payment method.
  # Customers can fund this balance by initiating a bank transfer to any account in the
  # `financial_addresses` field.
  # Related guide: [Customer balance funding instructions](https://stripe.com/docs/payments/customer-balance/funding-instructions)
  class FundingInstructions < APIResource
    class BankTransfer < Stripe::StripeObject
      class FinancialAddress < Stripe::StripeObject
        class Aba < Stripe::StripeObject
          class AccountHolderAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          class BankAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          # Attribute for field account_holder_address
          sig { returns(AccountHolderAddress) }
          def account_holder_address; end
          # The account holder name
          sig { returns(String) }
          def account_holder_name; end
          # The ABA account number
          sig { returns(String) }
          def account_number; end
          # The account type
          sig { returns(String) }
          def account_type; end
          # Attribute for field bank_address
          sig { returns(BankAddress) }
          def bank_address; end
          # The bank name
          sig { returns(String) }
          def bank_name; end
          # The ABA routing number
          sig { returns(String) }
          def routing_number; end
        end
        class Iban < Stripe::StripeObject
          class AccountHolderAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          class BankAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          # Attribute for field account_holder_address
          sig { returns(AccountHolderAddress) }
          def account_holder_address; end
          # The name of the person or business that owns the bank account
          sig { returns(String) }
          def account_holder_name; end
          # Attribute for field bank_address
          sig { returns(BankAddress) }
          def bank_address; end
          # The BIC/SWIFT code of the account.
          sig { returns(String) }
          def bic; end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          def country; end
          # The IBAN of the account.
          sig { returns(String) }
          def iban; end
        end
        class SortCode < Stripe::StripeObject
          class AccountHolderAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          class BankAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          # Attribute for field account_holder_address
          sig { returns(AccountHolderAddress) }
          def account_holder_address; end
          # The name of the person or business that owns the bank account
          sig { returns(String) }
          def account_holder_name; end
          # The account number
          sig { returns(String) }
          def account_number; end
          # Attribute for field bank_address
          sig { returns(BankAddress) }
          def bank_address; end
          # The six-digit sort code
          sig { returns(String) }
          def sort_code; end
        end
        class Spei < Stripe::StripeObject
          class AccountHolderAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          class BankAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          # Attribute for field account_holder_address
          sig { returns(AccountHolderAddress) }
          def account_holder_address; end
          # The account holder name
          sig { returns(String) }
          def account_holder_name; end
          # Attribute for field bank_address
          sig { returns(BankAddress) }
          def bank_address; end
          # The three-digit bank code
          sig { returns(String) }
          def bank_code; end
          # The short banking institution name
          sig { returns(String) }
          def bank_name; end
          # The CLABE number
          sig { returns(String) }
          def clabe; end
        end
        class Swift < Stripe::StripeObject
          class AccountHolderAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          class BankAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          # Attribute for field account_holder_address
          sig { returns(AccountHolderAddress) }
          def account_holder_address; end
          # The account holder name
          sig { returns(String) }
          def account_holder_name; end
          # The account number
          sig { returns(String) }
          def account_number; end
          # The account type
          sig { returns(String) }
          def account_type; end
          # Attribute for field bank_address
          sig { returns(BankAddress) }
          def bank_address; end
          # The bank name
          sig { returns(String) }
          def bank_name; end
          # The SWIFT code
          sig { returns(String) }
          def swift_code; end
        end
        class Zengin < Stripe::StripeObject
          class AccountHolderAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          class BankAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          # Attribute for field account_holder_address
          sig { returns(AccountHolderAddress) }
          def account_holder_address; end
          # The account holder name
          sig { returns(T.nilable(String)) }
          def account_holder_name; end
          # The account number
          sig { returns(T.nilable(String)) }
          def account_number; end
          # The bank account type. In Japan, this can only be `futsu` or `toza`.
          sig { returns(T.nilable(String)) }
          def account_type; end
          # Attribute for field bank_address
          sig { returns(BankAddress) }
          def bank_address; end
          # The bank code of the account
          sig { returns(T.nilable(String)) }
          def bank_code; end
          # The bank name of the account
          sig { returns(T.nilable(String)) }
          def bank_name; end
          # The branch code of the account
          sig { returns(T.nilable(String)) }
          def branch_code; end
          # The branch name of the account
          sig { returns(T.nilable(String)) }
          def branch_name; end
        end
        # ABA Records contain U.S. bank account details per the ABA format.
        sig { returns(Aba) }
        def aba; end
        # Iban Records contain E.U. bank account details per the SEPA format.
        sig { returns(Iban) }
        def iban; end
        # Sort Code Records contain U.K. bank account details per the sort code format.
        sig { returns(SortCode) }
        def sort_code; end
        # SPEI Records contain Mexico bank account details per the SPEI format.
        sig { returns(Spei) }
        def spei; end
        # The payment networks supported by this FinancialAddress
        sig { returns(T::Array[String]) }
        def supported_networks; end
        # SWIFT Records contain U.S. bank account details per the SWIFT format.
        sig { returns(Swift) }
        def swift; end
        # The type of financial address
        sig { returns(String) }
        def type; end
        # Zengin Records contain Japan bank account details per the Zengin format.
        sig { returns(Zengin) }
        def zengin; end
      end
      # The country of the bank account to fund
      sig { returns(String) }
      def country; end
      # A list of financial addresses that can be used to fund a particular balance
      sig { returns(T::Array[FinancialAddress]) }
      def financial_addresses; end
      # The bank_transfer type
      sig { returns(String) }
      def type; end
    end
    # Attribute for field bank_transfer
    sig { returns(BankTransfer) }
    def bank_transfer; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    # The `funding_type` of the returned instructions
    sig { returns(String) }
    def funding_type; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
  end
end