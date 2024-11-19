# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Each customer has a [`balance`](https://stripe.com/docs/api/customers/object#customer_object-balance) that is
  # automatically applied to future invoices and payments using the `customer_balance` payment method.
  # Customers can fund this balance by initiating a bank transfer to any account in the
  # `financial_addresses` field.
  # Related guide: [Customer balance funding instructions](https://stripe.com/docs/payments/customer-balance/funding-instructions)
  class FundingInstructions < APIResource
    OBJECT_NAME = "funding_instructions"
    def self.object_name
      "funding_instructions"
    end

    class BankTransfer < Stripe::StripeObject
      class FinancialAddress < Stripe::StripeObject
        class Aba < Stripe::StripeObject
          class AccountHolderAddress < Stripe::StripeObject
            attr_reader :city, :country, :line1, :line2, :postal_code, :state
          end

          class BankAddress < Stripe::StripeObject
            attr_reader :city, :country, :line1, :line2, :postal_code, :state
          end
          attr_reader :account_holder_address, :account_holder_name, :account_number, :account_type, :bank_address, :bank_name, :routing_number
        end

        class Iban < Stripe::StripeObject
          attr_reader :account_holder_name, :bic, :country, :iban
        end

        class SortCode < Stripe::StripeObject
          attr_reader :account_holder_name, :account_number, :sort_code
        end

        class Spei < Stripe::StripeObject
          attr_reader :bank_code, :bank_name, :clabe
        end

        class Swift < Stripe::StripeObject
          class AccountHolderAddress < Stripe::StripeObject
            attr_reader :city, :country, :line1, :line2, :postal_code, :state
          end

          class BankAddress < Stripe::StripeObject
            attr_reader :city, :country, :line1, :line2, :postal_code, :state
          end
          attr_reader :account_holder_address, :account_holder_name, :account_number, :account_type, :bank_address, :bank_name, :swift_code
        end

        class Zengin < Stripe::StripeObject
          attr_reader :account_holder_name, :account_number, :account_type, :bank_code, :bank_name, :branch_code, :branch_name
        end
        attr_reader :aba, :iban, :sort_code, :spei, :supported_networks, :swift, :type, :zengin
      end
      attr_reader :country, :financial_addresses, :type
    end
    # Attribute for field bank_transfer
    attr_reader :bank_transfer
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # The `funding_type` of the returned instructions
    attr_reader :funding_type
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    def resource_url
      if !respond_to?(:customer) || customer.nil?
        raise NotImplementedError,
              "FundingInstructions cannot be accessed without a customer ID."
      end
      "#{Customer.resource_url}/#{CGI.escape(customer)}/funding_instructions" "/#{CGI.escape(id)}"
    end
  end
end
