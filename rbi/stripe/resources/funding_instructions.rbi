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
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          class BankAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          # Attribute for field account_holder_address
          sig { returns(AccountHolderAddress) }
          attr_reader :account_holder_address
          # The account holder name
          sig { returns(String) }
          attr_reader :account_holder_name
          # The ABA account number
          sig { returns(String) }
          attr_reader :account_number
          # The account type
          sig { returns(String) }
          attr_reader :account_type
          # Attribute for field bank_address
          sig { returns(BankAddress) }
          attr_reader :bank_address
          # The bank name
          sig { returns(String) }
          attr_reader :bank_name
          # The ABA routing number
          sig { returns(String) }
          attr_reader :routing_number
        end
        class Iban < Stripe::StripeObject
          class AccountHolderAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          class BankAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          # Attribute for field account_holder_address
          sig { returns(AccountHolderAddress) }
          attr_reader :account_holder_address
          # The name of the person or business that owns the bank account
          sig { returns(String) }
          attr_reader :account_holder_name
          # Attribute for field bank_address
          sig { returns(BankAddress) }
          attr_reader :bank_address
          # The BIC/SWIFT code of the account.
          sig { returns(String) }
          attr_reader :bic
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_reader :country
          # The IBAN of the account.
          sig { returns(String) }
          attr_reader :iban
        end
        class SortCode < Stripe::StripeObject
          class AccountHolderAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          class BankAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          # Attribute for field account_holder_address
          sig { returns(AccountHolderAddress) }
          attr_reader :account_holder_address
          # The name of the person or business that owns the bank account
          sig { returns(String) }
          attr_reader :account_holder_name
          # The account number
          sig { returns(String) }
          attr_reader :account_number
          # Attribute for field bank_address
          sig { returns(BankAddress) }
          attr_reader :bank_address
          # The six-digit sort code
          sig { returns(String) }
          attr_reader :sort_code
        end
        class Spei < Stripe::StripeObject
          class AccountHolderAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          class BankAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          # Attribute for field account_holder_address
          sig { returns(AccountHolderAddress) }
          attr_reader :account_holder_address
          # The account holder name
          sig { returns(String) }
          attr_reader :account_holder_name
          # Attribute for field bank_address
          sig { returns(BankAddress) }
          attr_reader :bank_address
          # The three-digit bank code
          sig { returns(String) }
          attr_reader :bank_code
          # The short banking institution name
          sig { returns(String) }
          attr_reader :bank_name
          # The CLABE number
          sig { returns(String) }
          attr_reader :clabe
        end
        class Swift < Stripe::StripeObject
          class AccountHolderAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          class BankAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          # Attribute for field account_holder_address
          sig { returns(AccountHolderAddress) }
          attr_reader :account_holder_address
          # The account holder name
          sig { returns(String) }
          attr_reader :account_holder_name
          # The account number
          sig { returns(String) }
          attr_reader :account_number
          # The account type
          sig { returns(String) }
          attr_reader :account_type
          # Attribute for field bank_address
          sig { returns(BankAddress) }
          attr_reader :bank_address
          # The bank name
          sig { returns(String) }
          attr_reader :bank_name
          # The SWIFT code
          sig { returns(String) }
          attr_reader :swift_code
        end
        class Zengin < Stripe::StripeObject
          class AccountHolderAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          class BankAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          # Attribute for field account_holder_address
          sig { returns(AccountHolderAddress) }
          attr_reader :account_holder_address
          # The account holder name
          sig { returns(T.nilable(String)) }
          attr_reader :account_holder_name
          # The account number
          sig { returns(T.nilable(String)) }
          attr_reader :account_number
          # The bank account type. In Japan, this can only be `futsu` or `toza`.
          sig { returns(T.nilable(String)) }
          attr_reader :account_type
          # Attribute for field bank_address
          sig { returns(BankAddress) }
          attr_reader :bank_address
          # The bank code of the account
          sig { returns(T.nilable(String)) }
          attr_reader :bank_code
          # The bank name of the account
          sig { returns(T.nilable(String)) }
          attr_reader :bank_name
          # The branch code of the account
          sig { returns(T.nilable(String)) }
          attr_reader :branch_code
          # The branch name of the account
          sig { returns(T.nilable(String)) }
          attr_reader :branch_name
        end
        # ABA Records contain U.S. bank account details per the ABA format.
        sig { returns(Aba) }
        attr_reader :aba
        # Iban Records contain E.U. bank account details per the SEPA format.
        sig { returns(Iban) }
        attr_reader :iban
        # Sort Code Records contain U.K. bank account details per the sort code format.
        sig { returns(SortCode) }
        attr_reader :sort_code
        # SPEI Records contain Mexico bank account details per the SPEI format.
        sig { returns(Spei) }
        attr_reader :spei
        # The payment networks supported by this FinancialAddress
        sig { returns(T::Array[String]) }
        attr_reader :supported_networks
        # SWIFT Records contain U.S. bank account details per the SWIFT format.
        sig { returns(Swift) }
        attr_reader :swift
        # The type of financial address
        sig { returns(String) }
        attr_reader :type
        # Zengin Records contain Japan bank account details per the Zengin format.
        sig { returns(Zengin) }
        attr_reader :zengin
      end
      # The country of the bank account to fund
      sig { returns(String) }
      attr_reader :country
      # A list of financial addresses that can be used to fund a particular balance
      sig { returns(T::Array[FinancialAddress]) }
      attr_reader :financial_addresses
      # The bank_transfer type
      sig { returns(String) }
      attr_reader :type
    end
    # Attribute for field bank_transfer
    sig { returns(BankTransfer) }
    attr_reader :bank_transfer
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency
    # The `funding_type` of the returned instructions
    sig { returns(String) }
    attr_reader :funding_type
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
  end
end