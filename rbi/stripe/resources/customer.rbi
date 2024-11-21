# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # This object represents a customer of your business. Use it to [create recurring charges](https://stripe.com/docs/invoicing/customer), [save payment](https://stripe.com/docs/payments/save-during-payment) and contact information,
  # and track payments that belong to the same customer.
  class Customer < APIResource
    class Address < Stripe::StripeObject
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
    class InvoiceSettings < Stripe::StripeObject
      class CustomField < Stripe::StripeObject
        # The name of the custom field.
        sig { returns(String) }
        attr_reader :name
        # The value of the custom field.
        sig { returns(String) }
        attr_reader :value
      end
      class RenderingOptions < Stripe::StripeObject
        # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
        sig { returns(T.nilable(String)) }
        attr_reader :amount_tax_display
        # ID of the invoice rendering template to be used for this customer's invoices. If set, the template will be used on all invoices for this customer unless a template is set directly on the invoice.
        sig { returns(T.nilable(String)) }
        attr_reader :template
      end
      # Default custom fields to be displayed on invoices for this customer.
      sig { returns(T.nilable(T::Array[CustomField])) }
      attr_reader :custom_fields
      # ID of a payment method that's attached to the customer, to be used as the customer's default payment method for subscriptions and invoices.
      sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
      attr_reader :default_payment_method
      # Default footer to be displayed on invoices for this customer.
      sig { returns(T.nilable(String)) }
      attr_reader :footer
      # Default options for invoice PDF rendering for this customer.
      sig { returns(T.nilable(RenderingOptions)) }
      attr_reader :rendering_options
    end
    class Shipping < Stripe::StripeObject
      class Address < Stripe::StripeObject
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
      # Attribute for field address
      sig { returns(Address) }
      attr_reader :address
      # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
      sig { returns(T.nilable(String)) }
      attr_reader :carrier
      # Recipient name.
      sig { returns(String) }
      attr_reader :name
      # Recipient phone (including extension).
      sig { returns(T.nilable(String)) }
      attr_reader :phone
      # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
      sig { returns(T.nilable(String)) }
      attr_reader :tracking_number
    end
    class Tax < Stripe::StripeObject
      class Location < Stripe::StripeObject
        # The customer's country as identified by Stripe Tax.
        sig { returns(String) }
        attr_reader :country
        # The data source used to infer the customer's location.
        sig { returns(String) }
        attr_reader :source
        # The customer's state, county, province, or region as identified by Stripe Tax.
        sig { returns(T.nilable(String)) }
        attr_reader :state
      end
      # Surfaces if automatic tax computation is possible given the current customer location information.
      sig { returns(String) }
      attr_reader :automatic_tax
      # A recent IP address of the customer used for tax reporting and tax location inference.
      sig { returns(T.nilable(String)) }
      attr_reader :ip_address
      # The customer's location as identified by Stripe Tax.
      sig { returns(T.nilable(Location)) }
      attr_reader :location
    end
    # The customer's address.
    sig { returns(T.nilable(Address)) }
    attr_reader :address

    # The current balance, if any, that's stored on the customer. If negative, the customer has credit to apply to their next invoice. If positive, the customer has an amount owed that's added to their next invoice. The balance only considers amounts that Stripe hasn't successfully applied to any invoice. It doesn't reflect unpaid invoices. This balance is only taken into account after invoices finalize.
    sig { returns(Integer) }
    attr_reader :balance

    # The current funds being held by Stripe on behalf of the customer. You can apply these funds towards payment intents when the source is "cash_balance". The `settings[reconciliation_mode]` field describes if these funds apply to these payment intents manually or automatically.
    sig { returns(T.nilable(Stripe::CashBalance)) }
    attr_reader :cash_balance

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) the customer can be charged in for recurring billing purposes.
    sig { returns(T.nilable(String)) }
    attr_reader :currency

    # ID of the default payment source for the customer.
    #
    # If you use payment methods created through the PaymentMethods API, see the [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) field instead.
    sig {
      returns(T.nilable(T.any(String, T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source))))
     }
    attr_reader :default_source

    # Tracks the most recent state change on any invoice belonging to the customer. Paying an invoice or marking it uncollectible via the API will set this field to false. An automatic payment failure or passing the `invoice.due_date` will set this field to `true`.
    #
    # If an invoice becomes uncollectible by [dunning](https://stripe.com/docs/billing/automatic-collection), `delinquent` doesn't reset to `false`.
    #
    # If you care whether the customer has paid their most recent subscription invoice, use `subscription.status` instead. Paying or marking uncollectible any customer invoice regardless of whether it is the latest invoice for a subscription will always set this field to `false`.
    sig { returns(T.nilable(T::Boolean)) }
    attr_reader :delinquent

    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description

    # Describes the current discount active on the customer, if there is one.
    sig { returns(T.nilable(Stripe::Discount)) }
    attr_reader :discount

    # The customer's email address.
    sig { returns(T.nilable(String)) }
    attr_reader :email

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # The current multi-currency balances, if any, that's stored on the customer. If positive in a currency, the customer has a credit to apply to their next invoice denominated in that currency. If negative, the customer has an amount owed that's added to their next invoice denominated in that currency. These balances don't apply to unpaid invoices. They solely track amounts that Stripe hasn't successfully applied to any invoice. Stripe only applies a balance in a specific currency to an invoice after that invoice (which is in the same currency) finalizes.
    sig { returns(T::Hash[String, Integer]) }
    attr_reader :invoice_credit_balance

    # The prefix for the customer used to generate unique invoice numbers.
    sig { returns(T.nilable(String)) }
    attr_reader :invoice_prefix

    # Attribute for field invoice_settings
    sig { returns(InvoiceSettings) }
    attr_reader :invoice_settings

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    # The customer's full name or business name.
    sig { returns(T.nilable(String)) }
    attr_reader :name

    # The suffix of the customer's next invoice number (for example, 0001). When the account uses account level sequencing, this parameter is ignored in API requests and the field omitted in API responses.
    sig { returns(Integer) }
    attr_reader :next_invoice_sequence

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The customer's phone number.
    sig { returns(T.nilable(String)) }
    attr_reader :phone

    # The customer's preferred locales (languages), ordered by preference.
    sig { returns(T.nilable(T::Array[String])) }
    attr_reader :preferred_locales

    # Mailing and shipping address for the customer. Appears on invoices emailed to this customer.
    sig { returns(T.nilable(Shipping)) }
    attr_reader :shipping

    # The customer's payment sources, if any.
    sig { returns(Stripe::ListObject) }
    attr_reader :sources

    # The customer's current subscriptions, if any.
    sig { returns(Stripe::ListObject) }
    attr_reader :subscriptions

    # Attribute for field tax
    sig { returns(Tax) }
    attr_reader :tax

    # Describes the customer's tax exemption status, which is `none`, `exempt`, or `reverse`. When set to `reverse`, invoice and receipt PDFs include the following text: **"Reverse charge"**.
    sig { returns(T.nilable(String)) }
    attr_reader :tax_exempt

    # The customer's tax IDs.
    sig { returns(Stripe::ListObject) }
    attr_reader :tax_ids

    # ID of the test clock that this customer belongs to.
    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    attr_reader :test_clock

    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end