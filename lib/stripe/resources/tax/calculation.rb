# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # A Tax Calculation allows you to calculate the tax to collect from your customer.
    #
    # Related guide: [Calculate tax in your custom payment flow](https://stripe.com/docs/tax/custom)
    class Calculation < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "tax.calculation"
      def self.object_name
        "tax.calculation"
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
          # The type of the tax ID, one of `ad_nrt`, `ar_cuit`, `eu_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `cn_tin`, `co_nit`, `cr_tin`, `do_rcn`, `ec_ruc`, `eu_oss_vat`, `hr_oib`, `pe_ruc`, `ro_tin`, `rs_pib`, `sv_nit`, `uy_ruc`, `ve_rif`, `vn_tin`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `no_voec`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `li_uid`, `li_vat`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, `ke_pin`, `tr_tin`, `eg_tin`, `ph_tin`, `al_tin`, `bh_vat`, `kz_bin`, `ng_tin`, `om_vat`, `de_stn`, `ch_uid`, `tz_vat`, `uz_vat`, `uz_tin`, `md_vat`, `ma_vat`, `by_tin`, `ao_tin`, `bs_tin`, `bb_tin`, `cd_nif`, `mr_nif`, `me_pib`, `zw_tin`, `ba_tin`, `gn_nif`, `mk_vat`, `sr_fin`, `sn_ninea`, `am_tin`, `np_pan`, `tj_tin`, `ug_tin`, `zm_tin`, `kh_tin`, `aw_tin`, `az_tin`, `bd_bin`, `bj_ifu`, `et_tin`, `kg_tin`, `la_tin`, `cm_niu`, `cv_nif`, `bf_ifu`, or `unknown`
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
        # Detailed account of taxes relevant to shipping cost.
        attr_reader :tax_breakdown
        # The [tax code](https://stripe.com/docs/tax/tax-categories) ID used for shipping.
        attr_reader :tax_code
      end

      class TaxBreakdown < Stripe::StripeObject
        class TaxRateDetails < Stripe::StripeObject
          class FlatAmount < Stripe::StripeObject
            # Amount of the tax when the `rate_type` is `flat_amount`. This positive integer represents how much to charge in the smallest currency unit (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
            attr_reader :amount
            # Three-letter ISO currency code, in lowercase.
            attr_reader :currency
          end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_reader :country
          # The amount of the tax rate when the `rate_type` is `flat_amount`. Tax rates with `rate_type` `percentage` can vary based on the transaction, resulting in this field being `null`. This field exposes the amount and currency of the flat tax rate.
          attr_reader :flat_amount
          # The tax rate percentage as a string. For example, 8.5% is represented as `"8.5"`.
          attr_reader :percentage_decimal
          # Indicates the type of tax rate applied to the taxable amount. This value can be `null` when no tax applies to the location. This field is only present for TaxRates created by Stripe Tax.
          attr_reader :rate_type
          # State, county, province, or region.
          attr_reader :state
          # The tax type, such as `vat` or `sales_tax`.
          attr_reader :tax_type
        end
        # The amount of tax, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        attr_reader :amount
        # Specifies whether the tax amount is included in the line item amount.
        attr_reader :inclusive
        # Attribute for field tax_rate_details
        attr_reader :tax_rate_details
        # The reasoning behind this tax, for example, if the product is tax exempt. We might extend the possible values for this field to support new tax rules.
        attr_reader :taxability_reason
        # The amount on which tax is calculated, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        attr_reader :taxable_amount
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

      class CreateParams < Stripe::RequestParams
        class CustomerDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region. We recommend sending [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code value when possible.
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end

          class TaxId < Stripe::RequestParams
            # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `aw_tin`, `az_tin`, `ba_tin`, `bb_tin`, `bd_bin`, `bf_ifu`, `bg_uic`, `bh_vat`, `bj_ifu`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cm_niu`, `cn_tin`, `co_nit`, `cr_tin`, `cv_nif`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `et_tin`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kg_tin`, `kh_tin`, `kr_brn`, `kz_bin`, `la_tin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
            attr_accessor :type
            # Value of the tax ID.
            attr_accessor :value

            def initialize(type: nil, value: nil)
              @type = type
              @value = value
            end
          end
          # The customer's postal address (for example, home or business location).
          attr_accessor :address
          # The type of customer address provided.
          attr_accessor :address_source
          # The customer's IP address (IPv4 or IPv6).
          attr_accessor :ip_address
          # The customer's tax IDs. Stripe Tax might consider a transaction with applicable tax IDs to be B2B, which might affect the tax calculation result. Stripe Tax doesn't validate tax IDs for correctness.
          attr_accessor :tax_ids
          # Overrides the tax calculation result to allow you to not collect tax from your customer. Use this if you've manually checked your customer's tax exemptions. Prefer providing the customer's `tax_ids` where possible, which automatically determines whether `reverse_charge` applies.
          attr_accessor :taxability_override

          def initialize(
            address: nil,
            address_source: nil,
            ip_address: nil,
            tax_ids: nil,
            taxability_override: nil
          )
            @address = address
            @address_source = address_source
            @ip_address = ip_address
            @tax_ids = tax_ids
            @taxability_override = taxability_override
          end
        end

        class LineItem < Stripe::RequestParams
          # A positive integer representing the line item's total price in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          # If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes are calculated on top of this amount.
          attr_accessor :amount
          # If provided, the product's `tax_code` will be used as the line item's `tax_code`.
          attr_accessor :product
          # The number of units of the item being purchased. Used to calculate the per-unit price from the total `amount` for the line. For example, if `amount=100` and `quantity=4`, the calculated unit price is 25.
          attr_accessor :quantity
          # A custom identifier for this line item, which must be unique across the line items in the calculation. The reference helps identify each line item in exported [tax reports](https://stripe.com/docs/tax/reports).
          attr_accessor :reference
          # Specifies whether the `amount` includes taxes. Defaults to `exclusive`.
          attr_accessor :tax_behavior
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID to use for this line item. If not provided, we will use the tax code from the provided `product` param. If neither `tax_code` nor `product` is provided, we will use the default tax code from your Tax Settings.
          attr_accessor :tax_code

          def initialize(
            amount: nil,
            product: nil,
            quantity: nil,
            reference: nil,
            tax_behavior: nil,
            tax_code: nil
          )
            @amount = amount
            @product = product
            @quantity = quantity
            @reference = reference
            @tax_behavior = tax_behavior
            @tax_code = tax_code
          end
        end

        class ShipFromDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end
          # The address from which the goods are being shipped from.
          attr_accessor :address

          def initialize(address: nil)
            @address = address
          end
        end

        class ShippingCost < Stripe::RequestParams
          # A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) representing the shipping charge. If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes are calculated on top of this amount.
          attr_accessor :amount
          # If provided, the [shipping rate](https://stripe.com/docs/api/shipping_rates/object)'s `amount`, `tax_code` and `tax_behavior` are used. If you provide a shipping rate, then you cannot pass the `amount`, `tax_code`, or `tax_behavior` parameters.
          attr_accessor :shipping_rate
          # Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes. Defaults to `exclusive`.
          attr_accessor :tax_behavior
          # The [tax code](https://stripe.com/docs/tax/tax-categories) used to calculate tax on shipping. If not provided, the default shipping tax code from your [Tax Settings](https://dashboard.stripe.com/settings/tax) is used.
          attr_accessor :tax_code

          def initialize(amount: nil, shipping_rate: nil, tax_behavior: nil, tax_code: nil)
            @amount = amount
            @shipping_rate = shipping_rate
            @tax_behavior = tax_behavior
            @tax_code = tax_code
          end
        end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # The ID of an existing customer to use for this calculation. If provided, the customer's address and tax IDs are copied to `customer_details`.
        attr_accessor :customer
        # Details about the customer, including address and tax IDs.
        attr_accessor :customer_details
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A list of items the customer is purchasing.
        attr_accessor :line_items
        # Details about the address from which the goods are being shipped.
        attr_accessor :ship_from_details
        # Shipping cost details to be used for the calculation.
        attr_accessor :shipping_cost
        # Timestamp of date at which the tax rules and rates in effect applies for the calculation. Measured in seconds since the Unix epoch. Can be up to 48 hours in the past, and up to 48 hours in the future.
        attr_accessor :tax_date

        def initialize(
          currency: nil,
          customer: nil,
          customer_details: nil,
          expand: nil,
          line_items: nil,
          ship_from_details: nil,
          shipping_cost: nil,
          tax_date: nil
        )
          @currency = currency
          @customer = customer
          @customer_details = customer_details
          @expand = expand
          @line_items = line_items
          @ship_from_details = ship_from_details
          @shipping_cost = shipping_cost
          @tax_date = tax_date
        end
      end
      # Total amount after taxes in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      attr_reader :amount_total
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # The ID of an existing [Customer](https://stripe.com/docs/api/customers/object) used for the resource.
      attr_reader :customer
      # Attribute for field customer_details
      attr_reader :customer_details
      # Timestamp of date at which the tax calculation will expire.
      attr_reader :expires_at
      # Unique identifier for the calculation.
      attr_reader :id
      # The list of items the customer is purchasing.
      attr_reader :line_items
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The details of the ship from location, such as the address.
      attr_reader :ship_from_details
      # The shipping cost details for the calculation.
      attr_reader :shipping_cost
      # The amount of tax to be collected on top of the line item prices.
      attr_reader :tax_amount_exclusive
      # The amount of tax already included in the line item prices.
      attr_reader :tax_amount_inclusive
      # Breakdown of individual tax amounts that add up to the total.
      attr_reader :tax_breakdown
      # Timestamp of date at which the tax rules and rates in effect applies for the calculation.
      attr_reader :tax_date

      # Calculates tax based on the input and returns a Tax Calculation object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/tax/calculations",
          params: params,
          opts: opts
        )
      end

      # Retrieves the line items of a tax calculation as a collection, if the calculation hasn't expired.
      def list_line_items(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/calculations/%<calculation>s/line_items", { calculation: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Retrieves the line items of a tax calculation as a collection, if the calculation hasn't expired.
      def self.list_line_items(calculation, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/calculations/%<calculation>s/line_items", { calculation: CGI.escape(calculation) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
