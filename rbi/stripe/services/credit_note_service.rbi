# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class CreditNoteService < StripeService
    attr_reader :line_items
    attr_reader :preview_lines
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def gt; end
        sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gt=(_gt); end
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def gte; end
        sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gte=(_gte); end
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def lt; end
        sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lt=(_lt); end
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def lte; end
        sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lte=(_lte); end
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return credit notes that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::CreditNoteService::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::CreditNoteService::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::CreditNoteService::ListParams::Created, Integer)))
       }
      def created=(_created); end
      # Only return credit notes for the customer specified by this customer ID.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Only return credit notes for the invoice specified by this invoice ID.
      sig { returns(T.nilable(String)) }
      def invoice; end
      sig { params(_invoice: T.nilable(String)).returns(T.nilable(String)) }
      def invoice=(_invoice); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(created: T.nilable(T.any(::Stripe::CreditNoteService::ListParams::Created, Integer)), customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), invoice: T.nilable(String), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        invoice: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class Line < Stripe::RequestParams
        class TaxAmount < Stripe::RequestParams
          # The amount, in cents (or local equivalent), of the tax.
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # The id of the tax rate for this tax amount. The tax rate must have been automatically created by Stripe.
          sig { returns(String) }
          def tax_rate; end
          sig { params(_tax_rate: String).returns(String) }
          def tax_rate=(_tax_rate); end
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(Integer) }
          def taxable_amount; end
          sig { params(_taxable_amount: Integer).returns(Integer) }
          def taxable_amount=(_taxable_amount); end
          sig { params(amount: Integer, tax_rate: String, taxable_amount: Integer).void }
          def initialize(amount: nil, tax_rate: nil, taxable_amount: nil); end
        end
        # The line item amount to credit. Only valid when `type` is `invoice_line_item`. If invoice is set up with `automatic_tax[enabled]=true`, this amount is tax exclusive
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        # The description of the credit note line item. Only valid when the `type` is `custom_line_item`.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # The invoice line item to credit. Only valid when the `type` is `invoice_line_item`.
        sig { returns(T.nilable(String)) }
        def invoice_line_item; end
        sig { params(_invoice_line_item: T.nilable(String)).returns(T.nilable(String)) }
        def invoice_line_item=(_invoice_line_item); end
        # The line item quantity to credit.
        sig { returns(T.nilable(Integer)) }
        def quantity; end
        sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def quantity=(_quantity); end
        # A list of up to 10 tax amounts for the credit note line item. Cannot be mixed with `tax_rates`.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNoteService::CreateParams::Line::TaxAmount])))
         }
        def tax_amounts; end
        sig {
          params(_tax_amounts: T.nilable(T.any(String, T::Array[::Stripe::CreditNoteService::CreateParams::Line::TaxAmount]))).returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNoteService::CreateParams::Line::TaxAmount])))
         }
        def tax_amounts=(_tax_amounts); end
        # The tax rates which apply to the credit note line item. Only valid when the `type` is `custom_line_item` and cannot be mixed with `tax_amounts`.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def tax_rates; end
        sig {
          params(_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def tax_rates=(_tax_rates); end
        # Type of the credit note line item, one of `invoice_line_item` or `custom_line_item`
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # The integer unit amount in cents (or local equivalent) of the credit note line item. This `unit_amount` will be multiplied by the quantity to get the full amount to credit for this line item. Only valid when `type` is `custom_line_item`.
        sig { returns(T.nilable(Integer)) }
        def unit_amount; end
        sig { params(_unit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def unit_amount=(_unit_amount); end
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        def unit_amount_decimal; end
        sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
        def unit_amount_decimal=(_unit_amount_decimal); end
        sig {
          params(amount: T.nilable(Integer), description: T.nilable(String), invoice_line_item: T.nilable(String), quantity: T.nilable(Integer), tax_amounts: T.nilable(T.any(String, T::Array[::Stripe::CreditNoteService::CreateParams::Line::TaxAmount])), tax_rates: T.nilable(T.any(String, T::Array[String])), type: String, unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
         }
        def initialize(
          amount: nil,
          description: nil,
          invoice_line_item: nil,
          quantity: nil,
          tax_amounts: nil,
          tax_rates: nil,
          type: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      class Refund < Stripe::RequestParams
        # Amount of the refund that applies to this credit note, in cents (or local equivalent). Defaults to the entire refund amount.
        sig { returns(T.nilable(Integer)) }
        def amount_refunded; end
        sig { params(_amount_refunded: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount_refunded=(_amount_refunded); end
        # ID of an existing refund to link this credit note to. Required when `type` is `refund`.
        sig { returns(T.nilable(String)) }
        def refund; end
        sig { params(_refund: T.nilable(String)).returns(T.nilable(String)) }
        def refund=(_refund); end
        sig { params(amount_refunded: T.nilable(Integer), refund: T.nilable(String)).void }
        def initialize(amount_refunded: nil, refund: nil); end
      end
      class ShippingCost < Stripe::RequestParams
        # The ID of the shipping rate to use for this order.
        sig { returns(T.nilable(String)) }
        def shipping_rate; end
        sig { params(_shipping_rate: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_rate=(_shipping_rate); end
        sig { params(shipping_rate: T.nilable(String)).void }
        def initialize(shipping_rate: nil); end
      end
      # The integer amount in cents (or local equivalent) representing the total amount of the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # The integer amount in cents (or local equivalent) representing the amount to credit the customer's balance, which will be automatically applied to their next invoice.
      sig { returns(T.nilable(Integer)) }
      def credit_amount; end
      sig { params(_credit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def credit_amount=(_credit_amount); end
      # The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
      sig { returns(T.nilable(Integer)) }
      def effective_at; end
      sig { params(_effective_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def effective_at=(_effective_at); end
      # Type of email to send to the customer, one of `credit_note` or `none` and the default is `credit_note`.
      sig { returns(T.nilable(String)) }
      def email_type; end
      sig { params(_email_type: T.nilable(String)).returns(T.nilable(String)) }
      def email_type=(_email_type); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # ID of the invoice.
      sig { returns(String) }
      def invoice; end
      sig { params(_invoice: String).returns(String) }
      def invoice=(_invoice); end
      # Line items that make up the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNoteService::CreateParams::Line])) }
      def lines; end
      sig {
        params(_lines: T.nilable(T::Array[::Stripe::CreditNoteService::CreateParams::Line])).returns(T.nilable(T::Array[::Stripe::CreditNoteService::CreateParams::Line]))
       }
      def lines=(_lines); end
      # The credit note's memo appears on the credit note PDF.
      sig { returns(T.nilable(String)) }
      def memo; end
      sig { params(_memo: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_memo); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
      sig { returns(T.nilable(Integer)) }
      def out_of_band_amount; end
      sig { params(_out_of_band_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def out_of_band_amount=(_out_of_band_amount); end
      # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
      sig { returns(T.nilable(String)) }
      def reason; end
      sig { params(_reason: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_reason); end
      # The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
      sig { returns(T.nilable(Integer)) }
      def refund_amount; end
      sig { params(_refund_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def refund_amount=(_refund_amount); end
      # Refunds to link to this credit note.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNoteService::CreateParams::Refund])) }
      def refunds; end
      sig {
        params(_refunds: T.nilable(T::Array[::Stripe::CreditNoteService::CreateParams::Refund])).returns(T.nilable(T::Array[::Stripe::CreditNoteService::CreateParams::Refund]))
       }
      def refunds=(_refunds); end
      # When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(::Stripe::CreditNoteService::CreateParams::ShippingCost)) }
      def shipping_cost; end
      sig {
        params(_shipping_cost: T.nilable(::Stripe::CreditNoteService::CreateParams::ShippingCost)).returns(T.nilable(::Stripe::CreditNoteService::CreateParams::ShippingCost))
       }
      def shipping_cost=(_shipping_cost); end
      sig {
        params(amount: T.nilable(Integer), credit_amount: T.nilable(Integer), effective_at: T.nilable(Integer), email_type: T.nilable(String), expand: T.nilable(T::Array[String]), invoice: String, lines: T.nilable(T::Array[::Stripe::CreditNoteService::CreateParams::Line]), memo: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), out_of_band_amount: T.nilable(Integer), reason: T.nilable(String), refund_amount: T.nilable(Integer), refunds: T.nilable(T::Array[::Stripe::CreditNoteService::CreateParams::Refund]), shipping_cost: T.nilable(::Stripe::CreditNoteService::CreateParams::ShippingCost)).void
       }
      def initialize(
        amount: nil,
        credit_amount: nil,
        effective_at: nil,
        email_type: nil,
        expand: nil,
        invoice: nil,
        lines: nil,
        memo: nil,
        metadata: nil,
        out_of_band_amount: nil,
        reason: nil,
        refund_amount: nil,
        refunds: nil,
        shipping_cost: nil
      ); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Credit note memo.
      sig { returns(T.nilable(String)) }
      def memo; end
      sig { params(_memo: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_memo); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      sig {
        params(expand: T.nilable(T::Array[String]), memo: T.nilable(String), metadata: T.nilable(T::Hash[String, String])).void
       }
      def initialize(expand: nil, memo: nil, metadata: nil); end
    end
    class PreviewParams < Stripe::RequestParams
      class Line < Stripe::RequestParams
        class TaxAmount < Stripe::RequestParams
          # The amount, in cents (or local equivalent), of the tax.
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # The id of the tax rate for this tax amount. The tax rate must have been automatically created by Stripe.
          sig { returns(String) }
          def tax_rate; end
          sig { params(_tax_rate: String).returns(String) }
          def tax_rate=(_tax_rate); end
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(Integer) }
          def taxable_amount; end
          sig { params(_taxable_amount: Integer).returns(Integer) }
          def taxable_amount=(_taxable_amount); end
          sig { params(amount: Integer, tax_rate: String, taxable_amount: Integer).void }
          def initialize(amount: nil, tax_rate: nil, taxable_amount: nil); end
        end
        # The line item amount to credit. Only valid when `type` is `invoice_line_item`. If invoice is set up with `automatic_tax[enabled]=true`, this amount is tax exclusive
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        # The description of the credit note line item. Only valid when the `type` is `custom_line_item`.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # The invoice line item to credit. Only valid when the `type` is `invoice_line_item`.
        sig { returns(T.nilable(String)) }
        def invoice_line_item; end
        sig { params(_invoice_line_item: T.nilable(String)).returns(T.nilable(String)) }
        def invoice_line_item=(_invoice_line_item); end
        # The line item quantity to credit.
        sig { returns(T.nilable(Integer)) }
        def quantity; end
        sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def quantity=(_quantity); end
        # A list of up to 10 tax amounts for the credit note line item. Cannot be mixed with `tax_rates`.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNoteService::PreviewParams::Line::TaxAmount])))
         }
        def tax_amounts; end
        sig {
          params(_tax_amounts: T.nilable(T.any(String, T::Array[::Stripe::CreditNoteService::PreviewParams::Line::TaxAmount]))).returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNoteService::PreviewParams::Line::TaxAmount])))
         }
        def tax_amounts=(_tax_amounts); end
        # The tax rates which apply to the credit note line item. Only valid when the `type` is `custom_line_item` and cannot be mixed with `tax_amounts`.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def tax_rates; end
        sig {
          params(_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def tax_rates=(_tax_rates); end
        # Type of the credit note line item, one of `invoice_line_item` or `custom_line_item`
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # The integer unit amount in cents (or local equivalent) of the credit note line item. This `unit_amount` will be multiplied by the quantity to get the full amount to credit for this line item. Only valid when `type` is `custom_line_item`.
        sig { returns(T.nilable(Integer)) }
        def unit_amount; end
        sig { params(_unit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def unit_amount=(_unit_amount); end
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        def unit_amount_decimal; end
        sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
        def unit_amount_decimal=(_unit_amount_decimal); end
        sig {
          params(amount: T.nilable(Integer), description: T.nilable(String), invoice_line_item: T.nilable(String), quantity: T.nilable(Integer), tax_amounts: T.nilable(T.any(String, T::Array[::Stripe::CreditNoteService::PreviewParams::Line::TaxAmount])), tax_rates: T.nilable(T.any(String, T::Array[String])), type: String, unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
         }
        def initialize(
          amount: nil,
          description: nil,
          invoice_line_item: nil,
          quantity: nil,
          tax_amounts: nil,
          tax_rates: nil,
          type: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      class Refund < Stripe::RequestParams
        # Amount of the refund that applies to this credit note, in cents (or local equivalent). Defaults to the entire refund amount.
        sig { returns(T.nilable(Integer)) }
        def amount_refunded; end
        sig { params(_amount_refunded: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount_refunded=(_amount_refunded); end
        # ID of an existing refund to link this credit note to. Required when `type` is `refund`.
        sig { returns(T.nilable(String)) }
        def refund; end
        sig { params(_refund: T.nilable(String)).returns(T.nilable(String)) }
        def refund=(_refund); end
        sig { params(amount_refunded: T.nilable(Integer), refund: T.nilable(String)).void }
        def initialize(amount_refunded: nil, refund: nil); end
      end
      class ShippingCost < Stripe::RequestParams
        # The ID of the shipping rate to use for this order.
        sig { returns(T.nilable(String)) }
        def shipping_rate; end
        sig { params(_shipping_rate: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_rate=(_shipping_rate); end
        sig { params(shipping_rate: T.nilable(String)).void }
        def initialize(shipping_rate: nil); end
      end
      # The integer amount in cents (or local equivalent) representing the total amount of the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # The integer amount in cents (or local equivalent) representing the amount to credit the customer's balance, which will be automatically applied to their next invoice.
      sig { returns(T.nilable(Integer)) }
      def credit_amount; end
      sig { params(_credit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def credit_amount=(_credit_amount); end
      # The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
      sig { returns(T.nilable(Integer)) }
      def effective_at; end
      sig { params(_effective_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def effective_at=(_effective_at); end
      # Type of email to send to the customer, one of `credit_note` or `none` and the default is `credit_note`.
      sig { returns(T.nilable(String)) }
      def email_type; end
      sig { params(_email_type: T.nilable(String)).returns(T.nilable(String)) }
      def email_type=(_email_type); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # ID of the invoice.
      sig { returns(String) }
      def invoice; end
      sig { params(_invoice: String).returns(String) }
      def invoice=(_invoice); end
      # Line items that make up the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNoteService::PreviewParams::Line])) }
      def lines; end
      sig {
        params(_lines: T.nilable(T::Array[::Stripe::CreditNoteService::PreviewParams::Line])).returns(T.nilable(T::Array[::Stripe::CreditNoteService::PreviewParams::Line]))
       }
      def lines=(_lines); end
      # The credit note's memo appears on the credit note PDF.
      sig { returns(T.nilable(String)) }
      def memo; end
      sig { params(_memo: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_memo); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
      sig { returns(T.nilable(Integer)) }
      def out_of_band_amount; end
      sig { params(_out_of_band_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def out_of_band_amount=(_out_of_band_amount); end
      # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
      sig { returns(T.nilable(String)) }
      def reason; end
      sig { params(_reason: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_reason); end
      # The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
      sig { returns(T.nilable(Integer)) }
      def refund_amount; end
      sig { params(_refund_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def refund_amount=(_refund_amount); end
      # Refunds to link to this credit note.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNoteService::PreviewParams::Refund])) }
      def refunds; end
      sig {
        params(_refunds: T.nilable(T::Array[::Stripe::CreditNoteService::PreviewParams::Refund])).returns(T.nilable(T::Array[::Stripe::CreditNoteService::PreviewParams::Refund]))
       }
      def refunds=(_refunds); end
      # When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(::Stripe::CreditNoteService::PreviewParams::ShippingCost)) }
      def shipping_cost; end
      sig {
        params(_shipping_cost: T.nilable(::Stripe::CreditNoteService::PreviewParams::ShippingCost)).returns(T.nilable(::Stripe::CreditNoteService::PreviewParams::ShippingCost))
       }
      def shipping_cost=(_shipping_cost); end
      sig {
        params(amount: T.nilable(Integer), credit_amount: T.nilable(Integer), effective_at: T.nilable(Integer), email_type: T.nilable(String), expand: T.nilable(T::Array[String]), invoice: String, lines: T.nilable(T::Array[::Stripe::CreditNoteService::PreviewParams::Line]), memo: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), out_of_band_amount: T.nilable(Integer), reason: T.nilable(String), refund_amount: T.nilable(Integer), refunds: T.nilable(T::Array[::Stripe::CreditNoteService::PreviewParams::Refund]), shipping_cost: T.nilable(::Stripe::CreditNoteService::PreviewParams::ShippingCost)).void
       }
      def initialize(
        amount: nil,
        credit_amount: nil,
        effective_at: nil,
        email_type: nil,
        expand: nil,
        invoice: nil,
        lines: nil,
        memo: nil,
        metadata: nil,
        out_of_band_amount: nil,
        reason: nil,
        refund_amount: nil,
        refunds: nil,
        shipping_cost: nil
      ); end
    end
    class VoidCreditNoteParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # Issue a credit note to adjust the amount of a finalized invoice. A credit note will first reduce the invoice's amount_remaining (and amount_due), but not below zero.
    # This amount is indicated by the credit note's pre_payment_amount. The excess amount is indicated by post_payment_amount, and it can result in any combination of the following:
    #
    #
    # Refunds: create a new refund (using refund_amount) or link existing refunds (using refunds).
    # Customer balance credit: credit the customer's balance (using credit_amount) which will be automatically applied to their next invoice when it's finalized.
    # Outside of Stripe credit: record the amount that is or will be credited outside of Stripe (using out_of_band_amount).
    #
    #
    # The sum of refunds, customer balance credits, and outside of Stripe credits must equal the post_payment_amount.
    #
    # You may issue multiple credit notes for an invoice. Each credit note may increment the invoice's pre_payment_credit_notes_amount,
    # post_payment_credit_notes_amount, or both, depending on the invoice's amount_remaining at the time of credit note creation.
    sig {
      params(params: T.any(::Stripe::CreditNoteService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of credit notes.
    sig {
      params(params: T.any(::Stripe::CreditNoteService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Get a preview of a credit note without creating it.
    sig {
      params(params: T.any(::Stripe::CreditNoteService::PreviewParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def preview(params = {}, opts = {}); end

    # Retrieves the credit note object with the given identifier.
    sig {
      params(id: String, params: T.any(::Stripe::CreditNoteService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def retrieve(id, params = {}, opts = {}); end

    # Updates an existing credit note.
    sig {
      params(id: String, params: T.any(::Stripe::CreditNoteService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def update(id, params = {}, opts = {}); end

    # Marks a credit note as void. Learn more about [voiding credit notes](https://docs.stripe.com/docs/billing/invoices/credit-notes#voiding).
    sig {
      params(id: String, params: T.any(::Stripe::CreditNoteService::VoidCreditNoteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def void_credit_note(id, params = {}, opts = {}); end
  end
end