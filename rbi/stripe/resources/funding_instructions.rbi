# File generated from our OpenAPI spec
# frozen_string_literal: true

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
            sig { returns(T.nilable(String)) }
            attr_reader :city
            sig { returns(T.nilable(String)) }
            attr_reader :country
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          class BankAddress < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :city
            sig { returns(T.nilable(String)) }
            attr_reader :country
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          sig { returns(AccountHolderAddress) }
          attr_reader :account_holder_address
          sig { returns(String) }
          attr_reader :account_holder_name
          sig { returns(String) }
          attr_reader :account_number
          sig { returns(String) }
          attr_reader :account_type
          sig { returns(BankAddress) }
          attr_reader :bank_address
          sig { returns(String) }
          attr_reader :bank_name
          sig { returns(String) }
          attr_reader :routing_number
        end
        class Iban < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :account_holder_name
          sig { returns(String) }
          attr_reader :bic
          sig { returns(String) }
          attr_reader :country
          sig { returns(String) }
          attr_reader :iban
        end
        class SortCode < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :account_holder_name
          sig { returns(String) }
          attr_reader :account_number
          sig { returns(String) }
          attr_reader :sort_code
        end
        class Spei < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :bank_code
          sig { returns(String) }
          attr_reader :bank_name
          sig { returns(String) }
          attr_reader :clabe
        end
        class Swift < Stripe::StripeObject
          class AccountHolderAddress < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :city
            sig { returns(T.nilable(String)) }
            attr_reader :country
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          class BankAddress < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :city
            sig { returns(T.nilable(String)) }
            attr_reader :country
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          sig { returns(AccountHolderAddress) }
          attr_reader :account_holder_address
          sig { returns(String) }
          attr_reader :account_holder_name
          sig { returns(String) }
          attr_reader :account_number
          sig { returns(String) }
          attr_reader :account_type
          sig { returns(BankAddress) }
          attr_reader :bank_address
          sig { returns(String) }
          attr_reader :bank_name
          sig { returns(String) }
          attr_reader :swift_code
        end
        class Zengin < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :account_holder_name
          sig { returns(T.nilable(String)) }
          attr_reader :account_number
          sig { returns(T.nilable(String)) }
          attr_reader :account_type
          sig { returns(T.nilable(String)) }
          attr_reader :bank_code
          sig { returns(T.nilable(String)) }
          attr_reader :bank_name
          sig { returns(T.nilable(String)) }
          attr_reader :branch_code
          sig { returns(T.nilable(String)) }
          attr_reader :branch_name
        end
        sig { returns(Aba) }
        attr_reader :aba
        sig { returns(Iban) }
        attr_reader :iban
        sig { returns(SortCode) }
        attr_reader :sort_code
        sig { returns(Spei) }
        attr_reader :spei
        sig { returns(T::Array[String]) }
        attr_reader :supported_networks
        sig { returns(Swift) }
        attr_reader :swift
        sig { returns(String) }
        attr_reader :type
        sig { returns(Zengin) }
        attr_reader :zengin
      end
      sig { returns(String) }
      attr_reader :country
      sig { returns(T::Array[FinancialAddress]) }
      attr_reader :financial_addresses
      sig { returns(String) }
      attr_reader :type
    end
    sig { returns(BankTransfer) }
    # Attribute for field bank_transfer
    attr_reader :bank_transfer
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(String) }
    # The `funding_type` of the returned instructions
    attr_reader :funding_type
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
  end
end