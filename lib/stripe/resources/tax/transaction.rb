# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # A Tax Transaction records the tax collected from or refunded to your customer.
    #
    # Related guide: [Calculate tax in your custom payment flow](https://stripe.com/docs/tax/custom#tax-transaction)
    class Transaction < APIResource
      OBJECT_NAME = "tax.transaction"
      def self.object_name
        "tax.transaction"
      end

      class CustomerDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_reader :line2
          # ZIP or postal code.
          attr_reader :postal_code
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
          attr_reader :state
        end

        class TaxId < Stripe::StripeObject
          # The type of the tax ID, one of `ad_nrt`, `ar_cuit`, `eu_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `cn_tin`, `co_nit`, `cr_tin`, `do_rcn`, `ec_ruc`, `eu_oss_vat`, `hr_oib`, `pe_ruc`, `ro_tin`, `rs_pib`, `sv_nit`, `uy_ruc`, `ve_rif`, `vn_tin`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `no_voec`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `li_uid`, `li_vat`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, `ke_pin`, `tr_tin`, `eg_tin`, `ph_tin`, `al_tin`, `bh_vat`, `kz_bin`, `ng_tin`, `om_vat`, `de_stn`, `ch_uid`, `tz_vat`, `uz_vat`, `uz_tin`, `md_vat`, `ma_vat`, `by_tin`, `ao_tin`, `bs_tin`, `bb_tin`, `cd_nif`, `mr_nif`, `me_pib`, `zw_tin`, `ba_tin`, `gn_nif`, `mk_vat`, `sr_fin`, `sn_ninea`, `am_tin`, `np_pan`, `tj_tin`, `ug_tin`, `zm_tin`, `kh_tin`, or `unknown`
          attr_reader :type
          # The value of the tax ID.
          attr_reader :value
        end
        # The customer's postal address (for example, home or business location).
        attr_reader :address
        # The type of customer address provided.
        attr_reader :address_source
        # The customer's IP address (IPv4 or IPv6).
        attr_reader :ip_address
        # The customer's tax IDs (for example, EU VAT numbers).
        attr_reader :tax_ids
        # The taxability override used for taxation.
        attr_reader :taxability_override
      end

      class Reversal < Stripe::StripeObject
        # The `id` of the reversed `Transaction` object.
        attr_reader :original_transaction
      end

      class ShipFromDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_reader :line2
          # ZIP or postal code.
          attr_reader :postal_code
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
          attr_reader :state
        end
        # Attribute for field address
        attr_reader :address
      end

      class ShippingCost < Stripe::StripeObject
        class TaxBreakdown < Stripe::StripeObject
          class Jurisdiction < Stripe::StripeObject
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_reader :country
            # A human-readable name for the jurisdiction imposing the tax.
            attr_reader :display_name
            # Indicates the level of the jurisdiction imposing the tax.
            attr_reader :level
            # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2), without country prefix. For example, "NY" for New York, United States.
            attr_reader :state
          end

          class TaxRateDetails < Stripe::StripeObject
            # A localized display name for tax type, intended to be human-readable. For example, "Local Sales and Use Tax", "Value-added tax (VAT)", or "Umsatzsteuer (USt.)".
            attr_reader :display_name
            # The tax rate percentage as a string. For example, 8.5% is represented as "8.5".
            attr_reader :percentage_decimal
            # The tax type, such as `vat` or `sales_tax`.
            attr_reader :tax_type
          end
          # The amount of tax, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          attr_reader :amount
          # Attribute for field jurisdiction
          attr_reader :jurisdiction
          # Indicates whether the jurisdiction was determined by the origin (merchant's address) or destination (customer's address).
          attr_reader :sourcing
          # Details regarding the rate for this tax. This field will be `null` when the tax is not imposed, for example if the product is exempt from tax.
          attr_reader :tax_rate_details
          # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
          attr_reader :taxability_reason
          # The amount on which tax is calculated, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          attr_reader :taxable_amount
        end
        # The shipping amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes were calculated on top of this amount.
        attr_reader :amount
        # The amount of tax calculated for shipping, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        attr_reader :amount_tax
        # The ID of an existing [ShippingRate](https://stripe.com/docs/api/shipping_rates/object).
        attr_reader :shipping_rate
        # Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
        attr_reader :tax_behavior
        # Detailed account of taxes relevant to shipping cost. (It is not populated for the transaction resource object and will be removed in the next API version.)
        attr_reader :tax_breakdown
        # The [tax code](https://stripe.com/docs/tax/tax-categories) ID used for shipping.
        attr_reader :tax_code
      end

      class ListLineItemsParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end

      class CreateFromCalculationParams < Stripe::RequestParams
        # Tax Calculation ID to be used as input when creating the transaction.
        attr_accessor :calculation
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The Unix timestamp representing when the tax liability is assumed or reduced, which determines the liability posting period and handling in tax liability reports. The timestamp must fall within the `tax_date` and the current time, unless the `tax_date` is scheduled in advance. Defaults to the current time.
        attr_accessor :posted_at
        # A custom order or sale identifier, such as 'myOrder_123'. Must be unique across all transactions, including reversals.
        attr_accessor :reference

        def initialize(calculation: nil, expand: nil, metadata: nil, posted_at: nil, reference: nil)
          @calculation = calculation
          @expand = expand
          @metadata = metadata
          @posted_at = posted_at
          @reference = reference
        end
      end

      class CreateReversalParams < Stripe::RequestParams
        class LineItem < Stripe::RequestParams
          # The amount to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
          attr_accessor :amount
          # The amount of tax to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
          attr_accessor :amount_tax
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # The `id` of the line item to reverse in the original transaction.
          attr_accessor :original_line_item
          # The quantity reversed. Appears in [tax exports](https://stripe.com/docs/tax/reports), but does not affect the amount of tax reversed.
          attr_accessor :quantity
          # A custom identifier for this line item in the reversal transaction, such as 'L1-refund'.
          attr_accessor :reference

          def initialize(
            amount: nil,
            amount_tax: nil,
            metadata: nil,
            original_line_item: nil,
            quantity: nil,
            reference: nil
          )
            @amount = amount
            @amount_tax = amount_tax
            @metadata = metadata
            @original_line_item = original_line_item
            @quantity = quantity
            @reference = reference
          end
        end

        class ShippingCost < Stripe::RequestParams
          # The amount to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
          attr_accessor :amount
          # The amount of tax to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
          attr_accessor :amount_tax

          def initialize(amount: nil, amount_tax: nil)
            @amount = amount
            @amount_tax = amount_tax
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A flat amount to reverse across the entire transaction, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative. This value represents the total amount to refund from the transaction, including taxes.
        attr_accessor :flat_amount
        # The line item amounts to reverse.
        attr_accessor :line_items
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # If `partial`, the provided line item or shipping cost amounts are reversed. If `full`, the original transaction is fully reversed.
        attr_accessor :mode
        # The ID of the Transaction to partially or fully reverse.
        attr_accessor :original_transaction
        # A custom identifier for this reversal, such as `myOrder_123-refund_1`, which must be unique across all transactions. The reference helps identify this reversal transaction in exported [tax reports](https://stripe.com/docs/tax/reports).
        attr_accessor :reference
        # The shipping cost to reverse.
        attr_accessor :shipping_cost

        def initialize(
          expand: nil,
          flat_amount: nil,
          line_items: nil,
          metadata: nil,
          mode: nil,
          original_transaction: nil,
          reference: nil,
          shipping_cost: nil
        )
          @expand = expand
          @flat_amount = flat_amount
          @line_items = line_items
          @metadata = metadata
          @mode = mode
          @original_transaction = original_transaction
          @reference = reference
          @shipping_cost = shipping_cost
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # The ID of an existing [Customer](https://stripe.com/docs/api/customers/object) used for the resource.
      attr_reader :customer
      # Attribute for field customer_details
      attr_reader :customer_details
      # Unique identifier for the transaction.
      attr_reader :id
      # The tax collected or refunded, by line item.
      attr_reader :line_items
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The Unix timestamp representing when the tax liability is assumed or reduced.
      attr_reader :posted_at
      # A custom unique identifier, such as 'myOrder_123'.
      attr_reader :reference
      # If `type=reversal`, contains information about what was reversed.
      attr_reader :reversal
      # The details of the ship from location, such as the address.
      attr_reader :ship_from_details
      # The shipping cost details for the transaction.
      attr_reader :shipping_cost
      # Timestamp of date at which the tax rules and rates in effect applies for the calculation.
      attr_reader :tax_date
      # If `reversal`, this transaction reverses an earlier transaction.
      attr_reader :type

      # Creates a Tax Transaction from a calculation, if that calculation hasn't expired. Calculations expire after 90 days.
      def self.create_from_calculation(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/tax/transactions/create_from_calculation",
          params: params,
          opts: opts
        )
      end

      # Partially or fully reverses a previously created Transaction.
      def self.create_reversal(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/tax/transactions/create_reversal",
          params: params,
          opts: opts
        )
      end

      # Retrieves the line items of a committed standalone transaction as a collection.
      def list_line_items(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/transactions/%<transaction>s/line_items", { transaction: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Retrieves the line items of a committed standalone transaction as a collection.
      def self.list_line_items(transaction, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/transactions/%<transaction>s/line_items", { transaction: CGI.escape(transaction) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
