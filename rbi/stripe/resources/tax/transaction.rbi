# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    # A Tax Transaction records the tax collected from or refunded to your customer.
    #
    # Related guide: [Calculate tax in your custom payment flow](https://stripe.com/docs/tax/custom#tax-transaction)
    class Transaction < APIResource
      class CustomerDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
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
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        class TaxId < Stripe::StripeObject
          # The type of the tax ID, one of `ad_nrt`, `ar_cuit`, `eu_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `cn_tin`, `co_nit`, `cr_tin`, `do_rcn`, `ec_ruc`, `eu_oss_vat`, `hr_oib`, `pe_ruc`, `ro_tin`, `rs_pib`, `sv_nit`, `uy_ruc`, `ve_rif`, `vn_tin`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `no_voec`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `li_uid`, `li_vat`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, `ke_pin`, `tr_tin`, `eg_tin`, `ph_tin`, `bh_vat`, `kz_bin`, `ng_tin`, `om_vat`, `de_stn`, `ch_uid`, `tz_vat`, `uz_vat`, `uz_tin`, `md_vat`, `ma_vat`, `by_tin`, or `unknown`
          sig { returns(String) }
          attr_reader :type
          # The value of the tax ID.
          sig { returns(String) }
          attr_reader :value
        end
        # The customer's postal address (for example, home or business location).
        sig { returns(T.nilable(Address)) }
        attr_reader :address
        # The type of customer address provided.
        sig { returns(T.nilable(String)) }
        attr_reader :address_source
        # The customer's IP address (IPv4 or IPv6).
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address
        # The customer's tax IDs (for example, EU VAT numbers).
        sig { returns(T::Array[TaxId]) }
        attr_reader :tax_ids
        # The taxability override used for taxation.
        sig { returns(String) }
        attr_reader :taxability_override
      end
      class Reversal < Stripe::StripeObject
        # The `id` of the reversed `Transaction` object.
        sig { returns(T.nilable(String)) }
        attr_reader :original_transaction
      end
      class ShipFromDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
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
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        # Attribute for field address
        sig { returns(Address) }
        attr_reader :address
      end
      class ShippingCost < Stripe::StripeObject
        class TaxBreakdown < Stripe::StripeObject
          class Jurisdiction < Stripe::StripeObject
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_reader :country
            # A human-readable name for the jurisdiction imposing the tax.
            sig { returns(String) }
            attr_reader :display_name
            # Indicates the level of the jurisdiction imposing the tax.
            sig { returns(String) }
            attr_reader :level
            # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, "NY" for New York, United States.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          class TaxRateDetails < Stripe::StripeObject
            # A localized display name for tax type, intended to be human-readable. For example, "Local Sales and Use Tax", "Value-added tax (VAT)", or "Umsatzsteuer (USt.)".
            sig { returns(String) }
            attr_reader :display_name
            # The tax rate percentage as a string. For example, 8.5% is represented as "8.5".
            sig { returns(String) }
            attr_reader :percentage_decimal
            # The tax type, such as `vat` or `sales_tax`.
            sig { returns(String) }
            attr_reader :tax_type
          end
          # The amount of tax, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(Integer) }
          attr_reader :amount
          # Attribute for field jurisdiction
          sig { returns(Jurisdiction) }
          attr_reader :jurisdiction
          # Indicates whether the jurisdiction was determined by the origin (merchant's address) or destination (customer's address).
          sig { returns(String) }
          attr_reader :sourcing
          # Details regarding the rate for this tax. This field will be `null` when the tax is not imposed, for example if the product is exempt from tax.
          sig { returns(T.nilable(TaxRateDetails)) }
          attr_reader :tax_rate_details
          # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
          sig { returns(String) }
          attr_reader :taxability_reason
          # The amount on which tax is calculated, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(Integer) }
          attr_reader :taxable_amount
        end
        # The shipping amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes were calculated on top of this amount.
        sig { returns(Integer) }
        attr_reader :amount
        # The amount of tax calculated for shipping, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(Integer) }
        attr_reader :amount_tax
        # The ID of an existing [ShippingRate](https://stripe.com/docs/api/shipping_rates/object).
        sig { returns(String) }
        attr_reader :shipping_rate
        # Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
        sig { returns(String) }
        attr_reader :tax_behavior
        # Detailed account of taxes relevant to shipping cost. (It is not populated for the transaction resource object and will be removed in the next API version.)
        sig { returns(T::Array[TaxBreakdown]) }
        attr_reader :tax_breakdown
        # The [tax code](https://stripe.com/docs/tax/tax-categories) ID used for shipping.
        sig { returns(String) }
        attr_reader :tax_code
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency

      # The ID of an existing [Customer](https://stripe.com/docs/api/customers/object) used for the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :customer

      # Attribute for field customer_details
      sig { returns(CustomerDetails) }
      attr_reader :customer_details

      # Unique identifier for the transaction.
      sig { returns(String) }
      attr_reader :id

      # The tax collected or refunded, by line item.
      sig { returns(T.nilable(Stripe::ListObject)) }
      attr_reader :line_items

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The Unix timestamp representing when the tax liability is assumed or reduced.
      sig { returns(Integer) }
      attr_reader :posted_at

      # A custom unique identifier, such as 'myOrder_123'.
      sig { returns(String) }
      attr_reader :reference

      # If `type=reversal`, contains information about what was reversed.
      sig { returns(T.nilable(Reversal)) }
      attr_reader :reversal

      # The details of the ship from location, such as the address.
      sig { returns(T.nilable(ShipFromDetails)) }
      attr_reader :ship_from_details

      # The shipping cost details for the transaction.
      sig { returns(T.nilable(ShippingCost)) }
      attr_reader :shipping_cost

      # Timestamp of date at which the tax rules and rates in effect applies for the calculation.
      sig { returns(Integer) }
      attr_reader :tax_date

      # If `reversal`, this transaction reverses an earlier transaction.
      sig { returns(String) }
      attr_reader :type
    end
  end
end