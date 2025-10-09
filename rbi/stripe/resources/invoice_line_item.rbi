# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Invoice Line Items represent the individual lines within an [invoice](https://stripe.com/docs/api/invoices) and only exist within the context of an invoice.
  #
  # Each line item is backed by either an [invoice item](https://stripe.com/docs/api/invoiceitems) or a [subscription item](https://stripe.com/docs/api/subscription_items).
  class InvoiceLineItem < APIResource
    class DiscountAmount < ::Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the discount.
      sig { returns(Integer) }
      def amount; end
      # The discount that was applied to get this discount amount.
      sig { returns(T.any(String, ::Stripe::Discount)) }
      def discount; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class MarginAmount < ::Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the reduction in line item amount.
      sig { returns(Integer) }
      def amount; end
      # The margin that was applied to get this margin amount.
      sig { returns(T.any(String, ::Stripe::Margin)) }
      def margin; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Parent < ::Stripe::StripeObject
      class InvoiceItemDetails < ::Stripe::StripeObject
        class ProrationDetails < ::Stripe::StripeObject
          class CreditedItems < ::Stripe::StripeObject
            # Invoice containing the credited invoice line items
            sig { returns(String) }
            def invoice; end
            # Credited invoice line items
            sig { returns(T::Array[String]) }
            def invoice_line_items; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # For a credit proration `line_item`, the original debit line_items to which the credit proration applies.
          sig { returns(T.nilable(CreditedItems)) }
          def credited_items; end
          def self.inner_class_types
            @inner_class_types = {credited_items: CreditedItems}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The invoice item that generated this line item
        sig { returns(String) }
        def invoice_item; end
        # Whether this is a proration
        sig { returns(T::Boolean) }
        def proration; end
        # Additional details for proration line items
        sig { returns(T.nilable(ProrationDetails)) }
        def proration_details; end
        # The subscription that the invoice item belongs to
        sig { returns(T.nilable(String)) }
        def subscription; end
        def self.inner_class_types
          @inner_class_types = {proration_details: ProrationDetails}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class LicenseFeeSubscriptionDetails < ::Stripe::StripeObject
        # The invoice item that generated this line item
        sig { returns(String) }
        def invoice_item; end
        # The license fee subscription that generated this line item
        sig { returns(String) }
        def license_fee_subscription; end
        # The license fee version at the time this line item was generated
        sig { returns(String) }
        def license_fee_version; end
        # The pricing plan subscription that manages the license fee subscription
        sig { returns(String) }
        def pricing_plan_subscription; end
        # The pricing plan version at the time this line item was generated
        sig { returns(String) }
        def pricing_plan_version; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class RateCardSubscriptionDetails < ::Stripe::StripeObject
        # The invoice item that generated this line item
        sig { returns(String) }
        def invoice_item; end
        # The pricing plan subscription that manages the rate card subscription
        sig { returns(T.nilable(String)) }
        def pricing_plan_subscription; end
        # The pricing plan version at the time this line item was generated
        sig { returns(T.nilable(String)) }
        def pricing_plan_version; end
        # The rate card subscription that generated this line item
        sig { returns(String) }
        def rate_card_subscription; end
        # The rate card version at the time this line item was generated
        sig { returns(String) }
        def rate_card_version; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class SubscriptionItemDetails < ::Stripe::StripeObject
        class ProrationDetails < ::Stripe::StripeObject
          class CreditedItems < ::Stripe::StripeObject
            # Invoice containing the credited invoice line items
            sig { returns(String) }
            def invoice; end
            # Credited invoice line items
            sig { returns(T::Array[String]) }
            def invoice_line_items; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # For a credit proration `line_item`, the original debit line_items to which the credit proration applies.
          sig { returns(T.nilable(CreditedItems)) }
          def credited_items; end
          def self.inner_class_types
            @inner_class_types = {credited_items: CreditedItems}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The invoice item that generated this line item
        sig { returns(T.nilable(String)) }
        def invoice_item; end
        # Whether this is a proration
        sig { returns(T::Boolean) }
        def proration; end
        # Additional details for proration line items
        sig { returns(T.nilable(ProrationDetails)) }
        def proration_details; end
        # The subscription that the subscription item belongs to
        sig { returns(T.nilable(String)) }
        def subscription; end
        # The subscription item that generated this line item
        sig { returns(String) }
        def subscription_item; end
        def self.inner_class_types
          @inner_class_types = {proration_details: ProrationDetails}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Details about the invoice item that generated this line item
      sig { returns(T.nilable(InvoiceItemDetails)) }
      def invoice_item_details; end
      # Details about the license fee subscription that generated this line item
      sig { returns(T.nilable(LicenseFeeSubscriptionDetails)) }
      def license_fee_subscription_details; end
      # Details about the rate card subscription that generated this line item
      sig { returns(T.nilable(RateCardSubscriptionDetails)) }
      def rate_card_subscription_details; end
      # Details about the subscription item that generated this line item
      sig { returns(T.nilable(SubscriptionItemDetails)) }
      def subscription_item_details; end
      # The type of parent that generated this line item
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {
          invoice_item_details: InvoiceItemDetails,
          license_fee_subscription_details: LicenseFeeSubscriptionDetails,
          rate_card_subscription_details: RateCardSubscriptionDetails,
          subscription_item_details: SubscriptionItemDetails,
        }
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Period < ::Stripe::StripeObject
      # The end of the period, which must be greater than or equal to the start. This value is inclusive.
      sig { returns(Integer) }
      def end; end
      # The start of the period. This value is inclusive.
      sig { returns(Integer) }
      def start; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class PretaxCreditAmount < ::Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the pretax credit amount.
      sig { returns(Integer) }
      def amount; end
      # The credit balance transaction that was applied to get this pretax credit amount.
      sig { returns(T.nilable(T.any(String, ::Stripe::Billing::CreditBalanceTransaction))) }
      def credit_balance_transaction; end
      # The discount that was applied to get this pretax credit amount.
      sig { returns(T.nilable(T.any(String, ::Stripe::Discount))) }
      def discount; end
      # The margin that was applied to get this pretax credit amount.
      sig { returns(T.nilable(T.any(String, ::Stripe::Margin))) }
      def margin; end
      # Type of the pretax credit amount referenced.
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Pricing < ::Stripe::StripeObject
      class LicenseFeeDetails < ::Stripe::StripeObject
        # The ID of the license fee this item is associated with
        sig { returns(String) }
        def license_fee; end
        # The version of the license fee this item is associated with
        sig { returns(String) }
        def license_fee_version; end
        # The ID of the licensed item this item is associated with
        sig { returns(String) }
        def licensed_item; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class PriceDetails < ::Stripe::StripeObject
        # The ID of the price this item is associated with.
        sig { returns(String) }
        def price; end
        # The ID of the product this item is associated with.
        sig { returns(String) }
        def product; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class RateCardRateDetails < ::Stripe::StripeObject
        # The ID of billable item this item is associated with
        sig { returns(String) }
        def metered_item; end
        # The ID of the rate card this item is associated with
        sig { returns(String) }
        def rate_card; end
        # The ID of the rate card rate this item is associated with
        sig { returns(String) }
        def rate_card_rate; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field license_fee_details
      sig { returns(T.nilable(LicenseFeeDetails)) }
      def license_fee_details; end
      # Attribute for field price_details
      sig { returns(T.nilable(PriceDetails)) }
      def price_details; end
      # Attribute for field rate_card_rate_details
      sig { returns(T.nilable(RateCardRateDetails)) }
      def rate_card_rate_details; end
      # The type of the pricing details.
      sig { returns(String) }
      def type; end
      # The unit amount (in the `currency` specified) of the item which contains a decimal value with at most 12 decimal places.
      sig { returns(T.nilable(String)) }
      def unit_amount_decimal; end
      def self.inner_class_types
        @inner_class_types = {
          license_fee_details: LicenseFeeDetails,
          price_details: PriceDetails,
          rate_card_rate_details: RateCardRateDetails,
        }
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class TaxCalculationReference < ::Stripe::StripeObject
      # The calculation identifier for tax calculation response.
      sig { returns(T.nilable(String)) }
      def calculation_id; end
      # The calculation identifier for tax calculation response line item.
      sig { returns(T.nilable(String)) }
      def calculation_item_id; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Tax < ::Stripe::StripeObject
      class TaxRateDetails < ::Stripe::StripeObject
        # Attribute for field tax_rate
        sig { returns(String) }
        def tax_rate; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The amount of the tax, in cents (or local equivalent).
      sig { returns(Integer) }
      def amount; end
      # Whether this tax is inclusive or exclusive.
      sig { returns(String) }
      def tax_behavior; end
      # Additional details about the tax rate. Only present when `type` is `tax_rate_details`.
      sig { returns(T.nilable(TaxRateDetails)) }
      def tax_rate_details; end
      # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
      sig { returns(String) }
      def taxability_reason; end
      # The amount on which tax is calculated, in cents (or local equivalent).
      sig { returns(T.nilable(Integer)) }
      def taxable_amount; end
      # The type of tax information.
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {tax_rate_details: TaxRateDetails}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # The amount, in cents (or local equivalent).
    sig { returns(Integer) }
    def amount; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    def description; end
    # The amount of discount calculated per discount for this line item.
    sig { returns(T.nilable(T::Array[DiscountAmount])) }
    def discount_amounts; end
    # If true, discounts will apply to this line item. Always false for prorations.
    sig { returns(T::Boolean) }
    def discountable; end
    # The discounts applied to the invoice line item. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    sig { returns(T::Array[T.any(String, ::Stripe::Discount)]) }
    def discounts; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # The ID of the invoice that contains this line item.
    sig { returns(T.nilable(String)) }
    def invoice; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # The amount of margin calculated per margin for this line item.
    sig { returns(T.nilable(T::Array[MarginAmount])) }
    def margin_amounts; end
    # The margins applied to the line item. When set, the `default_margins` on the invoice do not apply to the line item. Use `expand[]=margins` to expand each margin.
    sig { returns(T.nilable(T::Array[T.any(String, ::Stripe::Margin)])) }
    def margins; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Note that for line items with `type=subscription`, `metadata` reflects the current metadata from the subscription associated with the line item, unless the invoice line was directly updated with different metadata after creation.
    sig { returns(T::Hash[String, String]) }
    def metadata; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # The parent that generated this line item.
    sig { returns(T.nilable(Parent)) }
    def parent; end
    # Attribute for field period
    sig { returns(Period) }
    def period; end
    # Contains pretax credit amounts (ex: discount, credit grants, etc) that apply to this line item.
    sig { returns(T.nilable(T::Array[PretaxCreditAmount])) }
    def pretax_credit_amounts; end
    # The pricing information of the line item.
    sig { returns(T.nilable(Pricing)) }
    def pricing; end
    # The quantity of the subscription, if the line item is a subscription or a proration.
    sig { returns(T.nilable(Integer)) }
    def quantity; end
    # Attribute for field subscription
    sig { returns(T.nilable(T.any(String, ::Stripe::Subscription))) }
    def subscription; end
    # The tax calculation identifiers of the line item.
    sig { returns(T.nilable(TaxCalculationReference)) }
    def tax_calculation_reference; end
    # The tax information of the line item.
    sig { returns(T.nilable(T::Array[Tax])) }
    def taxes; end
    # Updates an invoice's line item. Some fields, such as tax_amounts, only live on the invoice line item,
    # so they can only be updated through this endpoint. Other fields, such as amount, live on both the invoice
    # item and the invoice line item, so updates on this endpoint will propagate to the invoice item as well.
    # Updating an invoice's line item is only possible before the invoice is finalized.
    sig {
      params(invoice: String, line_item_id: String, params: T.any(::Stripe::InvoiceLineItemUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::InvoiceLineItem)
     }
    def self.update(invoice, line_item_id, params = {}, opts = {}); end
  end
end