# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # This object represents a customer of your business. Use it to [create recurring charges](https://stripe.com/docs/invoicing/customer), [save payment](https://stripe.com/docs/payments/save-during-payment) and contact information,
  # and track payments that belong to the same customer.
  class Customer < APIResource
    class Address < Stripe::StripeObject
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
    class InvoiceSettings < Stripe::StripeObject
      class CustomField < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :name
        sig { returns(String) }
        attr_reader :value
      end
      class RenderingOptions < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :amount_tax_display
        sig { returns(T.nilable(String)) }
        attr_reader :template
      end
      sig { returns(T.nilable(T::Array[CustomField])) }
      attr_reader :custom_fields
      sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
      attr_reader :default_payment_method
      sig { returns(T.nilable(String)) }
      attr_reader :footer
      sig { returns(T.nilable(RenderingOptions)) }
      attr_reader :rendering_options
    end
    class Shipping < Stripe::StripeObject
      class Address < Stripe::StripeObject
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
      sig { returns(Address) }
      attr_reader :address
      sig { returns(T.nilable(String)) }
      attr_reader :carrier
      sig { returns(String) }
      attr_reader :name
      sig { returns(T.nilable(String)) }
      attr_reader :phone
      sig { returns(T.nilable(String)) }
      attr_reader :tracking_number
    end
    class Tax < Stripe::StripeObject
      class Location < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :country
        sig { returns(String) }
        attr_reader :source
        sig { returns(T.nilable(String)) }
        attr_reader :state
      end
      sig { returns(String) }
      attr_reader :automatic_tax
      sig { returns(T.nilable(String)) }
      attr_reader :ip_address
      sig { returns(T.nilable(Location)) }
      attr_reader :location
    end
    sig { returns(T.nilable(Address)) }
    # The customer's address.
    attr_reader :address
    sig { returns(Integer) }
    # The current balance, if any, that's stored on the customer. If negative, the customer has credit to apply to their next invoice. If positive, the customer has an amount owed that's added to their next invoice. The balance only considers amounts that Stripe hasn't successfully applied to any invoice. It doesn't reflect unpaid invoices. This balance is only taken into account after invoices finalize.
    attr_reader :balance
    sig { returns(T.nilable(Stripe::CashBalance)) }
    # The current funds being held by Stripe on behalf of the customer. You can apply these funds towards payment intents when the source is "cash_balance". The `settings[reconciliation_mode]` field describes if these funds apply to these payment intents manually or automatically.
    attr_reader :cash_balance
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(String)) }
    # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) the customer can be charged in for recurring billing purposes.
    attr_reader :currency
    sig {
      returns(T.nilable(T.any(String, T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source))))
     }
    # ID of the default payment source for the customer.
    #
    # If you use payment methods created through the PaymentMethods API, see the [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) field instead.
    attr_reader :default_source
    sig { returns(T.nilable(T::Boolean)) }
    # Tracks the most recent state change on any invoice belonging to the customer. Paying an invoice or marking it uncollectible via the API will set this field to false. An automatic payment failure or passing the `invoice.due_date` will set this field to `true`.
    #
    # If an invoice becomes uncollectible by [dunning](https://stripe.com/docs/billing/automatic-collection), `delinquent` doesn't reset to `false`.
    #
    # If you care whether the customer has paid their most recent subscription invoice, use `subscription.status` instead. Paying or marking uncollectible any customer invoice regardless of whether it is the latest invoice for a subscription will always set this field to `false`.
    attr_reader :delinquent
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    sig { returns(T.nilable(Stripe::Discount)) }
    # Describes the current discount active on the customer, if there is one.
    attr_reader :discount
    sig { returns(T.nilable(String)) }
    # The customer's email address.
    attr_reader :email
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Hash[String, Integer]) }
    # The current multi-currency balances, if any, that's stored on the customer. If positive in a currency, the customer has a credit to apply to their next invoice denominated in that currency. If negative, the customer has an amount owed that's added to their next invoice denominated in that currency. These balances don't apply to unpaid invoices. They solely track amounts that Stripe hasn't successfully applied to any invoice. Stripe only applies a balance in a specific currency to an invoice after that invoice (which is in the same currency) finalizes.
    attr_reader :invoice_credit_balance
    sig { returns(T.nilable(String)) }
    # The prefix for the customer used to generate unique invoice numbers.
    attr_reader :invoice_prefix
    sig { returns(InvoiceSettings) }
    # Attribute for field invoice_settings
    attr_reader :invoice_settings
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(T.nilable(String)) }
    # The customer's full name or business name.
    attr_reader :name
    sig { returns(Integer) }
    # The suffix of the customer's next invoice number (for example, 0001). When the account uses account level sequencing, this parameter is ignored in API requests and the field omitted in API responses.
    attr_reader :next_invoice_sequence
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(String)) }
    # The customer's phone number.
    attr_reader :phone
    sig { returns(T.nilable(T::Array[String])) }
    # The customer's preferred locales (languages), ordered by preference.
    attr_reader :preferred_locales
    sig { returns(T.nilable(Shipping)) }
    # Mailing and shipping address for the customer. Appears on invoices emailed to this customer.
    attr_reader :shipping
    sig { returns(Stripe::ListObject) }
    # The customer's payment sources, if any.
    attr_reader :sources
    sig { returns(Stripe::ListObject) }
    # The customer's current subscriptions, if any.
    attr_reader :subscriptions
    sig { returns(Tax) }
    # Attribute for field tax
    attr_reader :tax
    sig { returns(T.nilable(String)) }
    # Describes the customer's tax exemption status, which is `none`, `exempt`, or `reverse`. When set to `reverse`, invoice and receipt PDFs include the following text: **"Reverse charge"**.
    attr_reader :tax_exempt
    sig { returns(Stripe::ListObject) }
    # The customer's tax IDs.
    attr_reader :tax_ids
    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    # ID of the test clock that this customer belongs to.
    attr_reader :test_clock
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end