# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class CalculationService < StripeService
      attr_reader :line_items
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class CreateParams < Stripe::RequestParams
        class CustomerDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_accessor :postal_code
            # State, county, province, or region. We recommend sending [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code value when possible.
            sig { returns(T.nilable(String)) }
            attr_accessor :state
            sig {
              params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
             }
            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            ); end
          end
          class TaxId < Stripe::RequestParams
            # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `aw_tin`, `az_tin`, `ba_tin`, `bb_tin`, `bd_bin`, `bf_ifu`, `bg_uic`, `bh_vat`, `bj_ifu`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cm_niu`, `cn_tin`, `co_nit`, `cr_tin`, `cv_nif`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `et_tin`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kg_tin`, `kh_tin`, `kr_brn`, `kz_bin`, `la_tin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
            sig { returns(String) }
            attr_accessor :type
            # Value of the tax ID.
            sig { returns(String) }
            attr_accessor :value
            sig { params(type: String, value: String).void }
            def initialize(type: nil, value: nil); end
          end
          # The customer's postal address (for example, home or business location).
          sig {
            returns(T.nilable(::Stripe::Tax::CalculationService::CreateParams::CustomerDetails::Address))
           }
          attr_accessor :address
          # The type of customer address provided.
          sig { returns(T.nilable(String)) }
          attr_accessor :address_source
          # The customer's IP address (IPv4 or IPv6).
          sig { returns(T.nilable(String)) }
          attr_accessor :ip_address
          # The customer's tax IDs. Stripe Tax might consider a transaction with applicable tax IDs to be B2B, which might affect the tax calculation result. Stripe Tax doesn't validate tax IDs for correctness.
          sig {
            returns(T.nilable(T::Array[::Stripe::Tax::CalculationService::CreateParams::CustomerDetails::TaxId]))
           }
          attr_accessor :tax_ids
          # Overrides the tax calculation result to allow you to not collect tax from your customer. Use this if you've manually checked your customer's tax exemptions. Prefer providing the customer's `tax_ids` where possible, which automatically determines whether `reverse_charge` applies.
          sig { returns(T.nilable(String)) }
          attr_accessor :taxability_override
          sig {
            params(address: T.nilable(::Stripe::Tax::CalculationService::CreateParams::CustomerDetails::Address), address_source: T.nilable(String), ip_address: T.nilable(String), tax_ids: T.nilable(T::Array[::Stripe::Tax::CalculationService::CreateParams::CustomerDetails::TaxId]), taxability_override: T.nilable(String)).void
           }
          def initialize(
            address: nil,
            address_source: nil,
            ip_address: nil,
            tax_ids: nil,
            taxability_override: nil
          ); end
        end
        class LineItem < Stripe::RequestParams
          # A positive integer representing the line item's total price in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          # If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes are calculated on top of this amount.
          sig { returns(Integer) }
          attr_accessor :amount
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # If provided, the product's `tax_code` will be used as the line item's `tax_code`.
          sig { returns(T.nilable(String)) }
          attr_accessor :product
          # The number of units of the item being purchased. Used to calculate the per-unit price from the total `amount` for the line. For example, if `amount=100` and `quantity=4`, the calculated unit price is 25.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :quantity
          # A custom identifier for this line item, which must be unique across the line items in the calculation. The reference helps identify each line item in exported [tax reports](https://stripe.com/docs/tax/reports).
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # Specifies whether the `amount` includes taxes. Defaults to `exclusive`.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_behavior
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID to use for this line item. If not provided, we will use the tax code from the provided `product` param. If neither `tax_code` nor `product` is provided, we will use the default tax code from your Tax Settings.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_code
          sig {
            params(amount: Integer, metadata: T.nilable(T::Hash[String, String]), product: T.nilable(String), quantity: T.nilable(Integer), reference: T.nilable(String), tax_behavior: T.nilable(String), tax_code: T.nilable(String)).void
           }
          def initialize(
            amount: nil,
            metadata: nil,
            product: nil,
            quantity: nil,
            reference: nil,
            tax_behavior: nil,
            tax_code: nil
          ); end
        end
        class ShipFromDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_accessor :postal_code
            # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
            sig { returns(T.nilable(String)) }
            attr_accessor :state
            sig {
              params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
             }
            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            ); end
          end
          # The address from which the goods are being shipped from.
          sig { returns(::Stripe::Tax::CalculationService::CreateParams::ShipFromDetails::Address) }
          attr_accessor :address
          sig {
            params(address: ::Stripe::Tax::CalculationService::CreateParams::ShipFromDetails::Address).void
           }
          def initialize(address: nil); end
        end
        class ShippingCost < Stripe::RequestParams
          # A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) representing the shipping charge. If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes are calculated on top of this amount.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount
          # If provided, the [shipping rate](https://stripe.com/docs/api/shipping_rates/object)'s `amount`, `tax_code` and `tax_behavior` are used. If you provide a shipping rate, then you cannot pass the `amount`, `tax_code`, or `tax_behavior` parameters.
          sig { returns(T.nilable(String)) }
          attr_accessor :shipping_rate
          # Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes. Defaults to `exclusive`.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_behavior
          # The [tax code](https://stripe.com/docs/tax/tax-categories) used to calculate tax on shipping. If not provided, the default shipping tax code from your [Tax Settings](https://dashboard.stripe.com/settings/tax) is used.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_code
          sig {
            params(amount: T.nilable(Integer), shipping_rate: T.nilable(String), tax_behavior: T.nilable(String), tax_code: T.nilable(String)).void
           }
          def initialize(amount: nil, shipping_rate: nil, tax_behavior: nil, tax_code: nil); end
        end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # The ID of an existing customer to use for this calculation. If provided, the customer's address and tax IDs are copied to `customer_details`.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer
        # Details about the customer, including address and tax IDs.
        sig { returns(T.nilable(::Stripe::Tax::CalculationService::CreateParams::CustomerDetails)) }
        attr_accessor :customer_details
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A list of items the customer is purchasing.
        sig { returns(T::Array[::Stripe::Tax::CalculationService::CreateParams::LineItem]) }
        attr_accessor :line_items
        # Details about the address from which the goods are being shipped.
        sig { returns(T.nilable(::Stripe::Tax::CalculationService::CreateParams::ShipFromDetails)) }
        attr_accessor :ship_from_details
        # Shipping cost details to be used for the calculation.
        sig { returns(T.nilable(::Stripe::Tax::CalculationService::CreateParams::ShippingCost)) }
        attr_accessor :shipping_cost
        # Timestamp of date at which the tax rules and rates in effect applies for the calculation. Measured in seconds since the Unix epoch. Can be up to 48 hours in the past, and up to 48 hours in the future.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :tax_date
        sig {
          params(currency: String, customer: T.nilable(String), customer_details: T.nilable(::Stripe::Tax::CalculationService::CreateParams::CustomerDetails), expand: T.nilable(T::Array[String]), line_items: T::Array[::Stripe::Tax::CalculationService::CreateParams::LineItem], ship_from_details: T.nilable(::Stripe::Tax::CalculationService::CreateParams::ShipFromDetails), shipping_cost: T.nilable(::Stripe::Tax::CalculationService::CreateParams::ShippingCost), tax_date: T.nilable(Integer)).void
         }
        def initialize(
          currency: nil,
          customer: nil,
          customer_details: nil,
          expand: nil,
          line_items: nil,
          ship_from_details: nil,
          shipping_cost: nil,
          tax_date: nil
        ); end
      end
      # Calculates tax based on the input and returns a Tax Calculation object.
      sig {
        params(params: T.any(::Stripe::Tax::CalculationService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Calculation)
       }
      def create(params = {}, opts = {}); end

      # Retrieves a Tax Calculation object, if the calculation hasn't expired.
      sig {
        params(calculation: String, params: T.any(::Stripe::Tax::CalculationService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Calculation)
       }
      def retrieve(calculation, params = {}, opts = {}); end
    end
  end
end