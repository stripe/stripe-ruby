# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class InvoiceUpcomingLinesService < StripeService
    class ListParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(String) }
          attr_accessor :account
          # Type of the account referenced in the request.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: String, type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Whether Stripe automatically computes tax on this invoice. Note that incompatible invoice items (invoice items with manually specified [tax rates](https://stripe.com/docs/api/tax_rates), negative amounts, or `tax_behavior=unspecified`) cannot be added to automatic tax invoices.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig { returns(::Stripe::InvoiceUpcomingLinesService::ListParams::AutomaticTax::Liability) }
        attr_accessor :liability
        sig {
          params(enabled: T::Boolean, liability: ::Stripe::InvoiceUpcomingLinesService::ListParams::AutomaticTax::Liability).void
         }
        def initialize(enabled: nil, liability: nil); end
      end
      class CustomerDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(String) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(String) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(String) }
          attr_accessor :state
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
        class Shipping < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # A freeform text field for the country. However, in order to activate some tax features, the format should be a two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          # Customer shipping address.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::CustomerDetails::Shipping::Address)
           }
          attr_accessor :address
          # Customer name.
          sig { returns(String) }
          attr_accessor :name
          # Customer phone (including extension).
          sig { returns(String) }
          attr_accessor :phone
          sig {
            params(address: ::Stripe::InvoiceUpcomingLinesService::ListParams::CustomerDetails::Shipping::Address, name: String, phone: String).void
           }
          def initialize(address: nil, name: nil, phone: nil); end
        end
        class Tax < Stripe::RequestParams
          # A recent IP address of the customer used for tax reporting and tax location inference. Stripe recommends updating the IP address when a new PaymentMethod is attached or the address field on the customer is updated. We recommend against updating this field more frequently since it could result in unexpected tax location/reporting outcomes.
          sig { returns(T.nilable(String)) }
          attr_accessor :ip_address
          sig { params(ip_address: T.nilable(String)).void }
          def initialize(ip_address: nil); end
        end
        class TaxId < Stripe::RequestParams
          # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `ba_tin`, `bb_tin`, `bg_uic`, `bh_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cn_tin`, `co_nit`, `cr_tin`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kh_tin`, `kr_brn`, `kz_bin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
          sig { returns(String) }
          attr_accessor :type
          # Value of the tax ID.
          sig { returns(String) }
          attr_accessor :value
          sig { params(type: String, value: String).void }
          def initialize(type: nil, value: nil); end
        end
        # The customer's address.
        sig {
          returns(T.nilable(::Stripe::InvoiceUpcomingLinesService::ListParams::CustomerDetails::Address))
         }
        attr_accessor :address
        # The customer's shipping information. Appears on invoices emailed to this customer.
        sig {
          returns(T.nilable(::Stripe::InvoiceUpcomingLinesService::ListParams::CustomerDetails::Shipping))
         }
        attr_accessor :shipping
        # Tax details about the customer.
        sig { returns(::Stripe::InvoiceUpcomingLinesService::ListParams::CustomerDetails::Tax) }
        attr_accessor :tax
        # The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_exempt
        # The customer's tax IDs.
        sig {
          returns(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::CustomerDetails::TaxId])
         }
        attr_accessor :tax_ids
        sig {
          params(address: T.nilable(::Stripe::InvoiceUpcomingLinesService::ListParams::CustomerDetails::Address), shipping: T.nilable(::Stripe::InvoiceUpcomingLinesService::ListParams::CustomerDetails::Shipping), tax: ::Stripe::InvoiceUpcomingLinesService::ListParams::CustomerDetails::Tax, tax_exempt: T.nilable(String), tax_ids: T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::CustomerDetails::TaxId]).void
         }
        def initialize(address: nil, shipping: nil, tax: nil, tax_exempt: nil, tax_ids: nil); end
      end
      class Discount < Stripe::RequestParams
        class DiscountEnd < Stripe::RequestParams
          class Duration < Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Time span for the redeemed discount.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::Discount::DiscountEnd::Duration)
           }
          attr_accessor :duration
          # A precise Unix timestamp for the discount to end. Must be in the future.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # The type of calculation made to determine when the discount ends.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(duration: ::Stripe::InvoiceUpcomingLinesService::ListParams::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
           }
          def initialize(duration: nil, timestamp: nil, type: nil); end
        end
        # ID of the coupon to create a new discount for.
        sig { returns(String) }
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(String) }
        attr_accessor :discount
        # Details to determine how long the discount should be applied for.
        sig { returns(::Stripe::InvoiceUpcomingLinesService::ListParams::Discount::DiscountEnd) }
        attr_accessor :discount_end
        # ID of the promotion code to create a new discount for.
        sig { returns(String) }
        attr_accessor :promotion_code
        sig {
          params(coupon: String, discount: String, discount_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::Discount::DiscountEnd, promotion_code: String).void
         }
        def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
      end
      class InvoiceItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Time span for the redeemed discount.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::InvoiceItem::Discount::DiscountEnd::Duration)
             }
            attr_accessor :duration
            # A precise Unix timestamp for the discount to end. Must be in the future.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: ::Stripe::InvoiceUpcomingLinesService::ListParams::InvoiceItem::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
             }
            def initialize(duration: nil, timestamp: nil, type: nil); end
          end
          # ID of the coupon to create a new discount for.
          sig { returns(String) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(String) }
          attr_accessor :discount
          # Details to determine how long the discount should be applied for.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::InvoiceItem::Discount::DiscountEnd)
           }
          attr_accessor :discount_end
          # ID of the promotion code to create a new discount for.
          sig { returns(String) }
          attr_accessor :promotion_code
          sig {
            params(coupon: String, discount: String, discount_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::InvoiceItem::Discount::DiscountEnd, promotion_code: String).void
           }
          def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
        end
        class Period < Stripe::RequestParams
          # The end of the period, which must be greater than or equal to the start. This value is inclusive.
          sig { returns(Integer) }
          attr_accessor :end
          # The start of the period. This value is inclusive.
          sig { returns(Integer) }
          attr_accessor :start
          sig { params(end_: Integer, start: Integer).void }
          def initialize(end_: nil, start: nil); end
        end
        class PriceData < Stripe::RequestParams
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # The ID of the product that this price will belong to.
          sig { returns(String) }
          attr_accessor :product
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(String) }
          attr_accessor :tax_behavior
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          sig { returns(Integer) }
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(String) }
          attr_accessor :unit_amount_decimal
          sig {
            params(currency: String, product: String, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
           }
          def initialize(
            currency: nil,
            product: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          ); end
        end
        # The integer amount in cents (or local equivalent) of previewed invoice item.
        sig { returns(Integer) }
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Only applicable to new invoice items.
        sig { returns(String) }
        attr_accessor :currency
        # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
        sig { returns(String) }
        attr_accessor :description
        # Explicitly controls whether discounts apply to this invoice item. Defaults to true, except for negative invoice items.
        sig { returns(T::Boolean) }
        attr_accessor :discountable
        # The coupons to redeem into discounts for the invoice item in the preview.
        sig {
          returns(T.nilable(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::InvoiceItem::Discount]))
         }
        attr_accessor :discounts
        # The ID of the invoice item to update in preview. If not specified, a new invoice item will be added to the preview of the upcoming invoice.
        sig { returns(String) }
        attr_accessor :invoiceitem
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
        sig { returns(::Stripe::InvoiceUpcomingLinesService::ListParams::InvoiceItem::Period) }
        attr_accessor :period
        # The ID of the price object. One of `price` or `price_data` is required.
        sig { returns(String) }
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        sig { returns(::Stripe::InvoiceUpcomingLinesService::ListParams::InvoiceItem::PriceData) }
        attr_accessor :price_data
        # Non-negative integer. The quantity of units for the invoice item.
        sig { returns(Integer) }
        attr_accessor :quantity
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(String) }
        attr_accessor :tax_behavior
        # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_code
        # The tax rates that apply to the item. When set, any `default_tax_rates` do not apply to this item.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :tax_rates
        # The integer unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This unit_amount will be multiplied by the quantity to get the full amount. If you want to apply a credit to the customer's account, pass a negative unit_amount.
        sig { returns(Integer) }
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(String) }
        attr_accessor :unit_amount_decimal
        sig {
          params(amount: Integer, currency: String, description: String, discountable: T::Boolean, discounts: T.nilable(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::InvoiceItem::Discount]), invoiceitem: String, metadata: T.nilable(T::Hash[String, String]), period: ::Stripe::InvoiceUpcomingLinesService::ListParams::InvoiceItem::Period, price: String, price_data: ::Stripe::InvoiceUpcomingLinesService::ListParams::InvoiceItem::PriceData, quantity: Integer, tax_behavior: String, tax_code: T.nilable(String), tax_rates: T.nilable(T::Array[String]), unit_amount: Integer, unit_amount_decimal: String).void
         }
        def initialize(
          amount: nil,
          currency: nil,
          description: nil,
          discountable: nil,
          discounts: nil,
          invoiceitem: nil,
          metadata: nil,
          period: nil,
          price: nil,
          price_data: nil,
          quantity: nil,
          tax_behavior: nil,
          tax_code: nil,
          tax_rates: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      class Issuer < Stripe::RequestParams
        # The connected account being referenced when `type` is `account`.
        sig { returns(String) }
        attr_accessor :account
        # Type of the account referenced in the request.
        sig { returns(String) }
        attr_accessor :type
        sig { params(account: String, type: String).void }
        def initialize(account: nil, type: nil); end
      end
      class ScheduleDetails < Stripe::RequestParams
        class Amendment < Stripe::RequestParams
          class AmendmentEnd < Stripe::RequestParams
            class DiscountEnd < Stripe::RequestParams
              # The ID of a specific discount.
              sig { returns(String) }
              attr_accessor :discount
              sig { params(discount: String).void }
              def initialize(discount: nil); end
            end
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Use the `end` time of a given discount.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::AmendmentEnd::DiscountEnd)
             }
            attr_accessor :discount_end
            # Time span for the amendment starting from the `amendment_start`.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::AmendmentEnd::Duration)
             }
            attr_accessor :duration
            # A precise Unix timestamp for the amendment to end. Must be after the `amendment_start`.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # Select one of three ways to pass the `amendment_end`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(discount_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::AmendmentEnd::DiscountEnd, duration: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::AmendmentEnd::Duration, timestamp: Integer, type: String).void
             }
            def initialize(discount_end: nil, duration: nil, timestamp: nil, type: nil); end
          end
          class AmendmentStart < Stripe::RequestParams
            class AmendmentEnd < Stripe::RequestParams
              # The position of the previous amendment in the `amendments` array after which this amendment should begin. Indexes start from 0 and must be less than the index of the current amendment in the array.
              sig { returns(Integer) }
              attr_accessor :index
              sig { params(index: Integer).void }
              def initialize(index: nil); end
            end
            class DiscountEnd < Stripe::RequestParams
              # The ID of a specific discount.
              sig { returns(String) }
              attr_accessor :discount
              sig { params(discount: String).void }
              def initialize(discount: nil); end
            end
            # Details of another amendment in the same array, immediately after which this amendment should begin.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::AmendmentStart::AmendmentEnd)
             }
            attr_accessor :amendment_end
            # Use the `end` time of a given discount.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::AmendmentStart::DiscountEnd)
             }
            attr_accessor :discount_end
            # A precise Unix timestamp for the amendment to start.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # Select one of three ways to pass the `amendment_start`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(amendment_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::AmendmentStart::AmendmentEnd, discount_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::AmendmentStart::DiscountEnd, timestamp: Integer, type: String).void
             }
            def initialize(amendment_end: nil, discount_end: nil, timestamp: nil, type: nil); end
          end
          class DiscountAction < Stripe::RequestParams
            class Add < Stripe::RequestParams
              class DiscountEnd < Stripe::RequestParams
                # The type of calculation made to determine when the discount ends.
                sig { returns(String) }
                attr_accessor :type
                sig { params(type: String).void }
                def initialize(type: nil); end
              end
              # The coupon code to redeem.
              sig { returns(String) }
              attr_accessor :coupon
              # An ID of an existing discount for a coupon that was already redeemed.
              sig { returns(String) }
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              sig {
                returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::DiscountAction::Add::DiscountEnd)
               }
              attr_accessor :discount_end
              # The index, starting at 0, at which to position the new discount. When not supplied, Stripe defaults to appending the discount to the end of the `discounts` array.
              sig { returns(Integer) }
              attr_accessor :index
              # The promotion code to redeem.
              sig { returns(String) }
              attr_accessor :promotion_code
              sig {
                params(coupon: String, discount: String, discount_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::DiscountAction::Add::DiscountEnd, index: Integer, promotion_code: String).void
               }
              def initialize(
                coupon: nil,
                discount: nil,
                discount_end: nil,
                index: nil,
                promotion_code: nil
              ); end
            end
            class Remove < Stripe::RequestParams
              # The coupon code to remove from the `discounts` array.
              sig { returns(String) }
              attr_accessor :coupon
              # The ID of a discount to remove from the `discounts` array.
              sig { returns(String) }
              attr_accessor :discount
              # The ID of a promotion code to remove from the `discounts` array.
              sig { returns(String) }
              attr_accessor :promotion_code
              sig { params(coupon: String, discount: String, promotion_code: String).void }
              def initialize(coupon: nil, discount: nil, promotion_code: nil); end
            end
            class Set < Stripe::RequestParams
              # The coupon code to replace the `discounts` array with.
              sig { returns(String) }
              attr_accessor :coupon
              # An ID of an existing discount to replace the `discounts` array with.
              sig { returns(String) }
              attr_accessor :discount
              # An ID of an existing promotion code to replace the `discounts` array with.
              sig { returns(String) }
              attr_accessor :promotion_code
              sig { params(coupon: String, discount: String, promotion_code: String).void }
              def initialize(coupon: nil, discount: nil, promotion_code: nil); end
            end
            # Details of the discount to add.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::DiscountAction::Add)
             }
            attr_accessor :add
            # Details of the discount to remove.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::DiscountAction::Remove)
             }
            attr_accessor :remove
            # Details of the discount to replace the existing discounts with.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::DiscountAction::Set)
             }
            attr_accessor :set
            # Determines the type of discount action.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(add: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::DiscountAction::Add, remove: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::DiscountAction::Remove, set: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::DiscountAction::Set, type: String).void
             }
            def initialize(add: nil, remove: nil, set: nil, type: nil); end
          end
          class ItemAction < Stripe::RequestParams
            class Add < Stripe::RequestParams
              class Discount < Stripe::RequestParams
                class DiscountEnd < Stripe::RequestParams
                  class Duration < Stripe::RequestParams
                    # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                    sig { returns(String) }
                    attr_accessor :interval
                    # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                    sig { returns(Integer) }
                    attr_accessor :interval_count
                    sig { params(interval: String, interval_count: Integer).void }
                    def initialize(interval: nil, interval_count: nil); end
                  end
                  # Time span for the redeemed discount.
                  sig {
                    returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Add::Discount::DiscountEnd::Duration)
                   }
                  attr_accessor :duration
                  # A precise Unix timestamp for the discount to end. Must be in the future.
                  sig { returns(Integer) }
                  attr_accessor :timestamp
                  # The type of calculation made to determine when the discount ends.
                  sig { returns(String) }
                  attr_accessor :type
                  sig {
                    params(duration: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Add::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
                   }
                  def initialize(duration: nil, timestamp: nil, type: nil); end
                end
                # ID of the coupon to create a new discount for.
                sig { returns(String) }
                attr_accessor :coupon
                # ID of an existing discount on the object (or one of its ancestors) to reuse.
                sig { returns(String) }
                attr_accessor :discount
                # Details to determine how long the discount should be applied for.
                sig {
                  returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Add::Discount::DiscountEnd)
                 }
                attr_accessor :discount_end
                # ID of the promotion code to create a new discount for.
                sig { returns(String) }
                attr_accessor :promotion_code
                sig {
                  params(coupon: String, discount: String, discount_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Add::Discount::DiscountEnd, promotion_code: String).void
                 }
                def initialize(
                  coupon: nil,
                  discount: nil,
                  discount_end: nil,
                  promotion_code: nil
                ); end
              end
              class Trial < Stripe::RequestParams
                # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
                sig { returns(T::Array[String]) }
                attr_accessor :converts_to
                # Determines the type of trial for this item.
                sig { returns(String) }
                attr_accessor :type
                sig { params(converts_to: T::Array[String], type: String).void }
                def initialize(converts_to: nil, type: nil); end
              end
              # The discounts applied to the item. Subscription item discounts are applied before subscription discounts.
              sig {
                returns(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Add::Discount])
               }
              attr_accessor :discounts
              # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
              sig { returns(T::Hash[String, String]) }
              attr_accessor :metadata
              # The ID of the price object.
              sig { returns(String) }
              attr_accessor :price
              # Quantity for this item.
              sig { returns(Integer) }
              attr_accessor :quantity
              # The tax rates that apply to this subscription item. When set, the `default_tax_rates` on the subscription do not apply to this `subscription_item`.
              sig { returns(T::Array[String]) }
              attr_accessor :tax_rates
              # Options that configure the trial on the subscription item.
              sig {
                returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Add::Trial)
               }
              attr_accessor :trial
              sig {
                params(discounts: T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Add::Discount], metadata: T::Hash[String, String], price: String, quantity: Integer, tax_rates: T::Array[String], trial: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Add::Trial).void
               }
              def initialize(
                discounts: nil,
                metadata: nil,
                price: nil,
                quantity: nil,
                tax_rates: nil,
                trial: nil
              ); end
            end
            class Remove < Stripe::RequestParams
              # ID of a price to remove.
              sig { returns(String) }
              attr_accessor :price
              sig { params(price: String).void }
              def initialize(price: nil); end
            end
            class Set < Stripe::RequestParams
              class Discount < Stripe::RequestParams
                class DiscountEnd < Stripe::RequestParams
                  class Duration < Stripe::RequestParams
                    # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                    sig { returns(String) }
                    attr_accessor :interval
                    # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                    sig { returns(Integer) }
                    attr_accessor :interval_count
                    sig { params(interval: String, interval_count: Integer).void }
                    def initialize(interval: nil, interval_count: nil); end
                  end
                  # Time span for the redeemed discount.
                  sig {
                    returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Set::Discount::DiscountEnd::Duration)
                   }
                  attr_accessor :duration
                  # A precise Unix timestamp for the discount to end. Must be in the future.
                  sig { returns(Integer) }
                  attr_accessor :timestamp
                  # The type of calculation made to determine when the discount ends.
                  sig { returns(String) }
                  attr_accessor :type
                  sig {
                    params(duration: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Set::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
                   }
                  def initialize(duration: nil, timestamp: nil, type: nil); end
                end
                # ID of the coupon to create a new discount for.
                sig { returns(String) }
                attr_accessor :coupon
                # ID of an existing discount on the object (or one of its ancestors) to reuse.
                sig { returns(String) }
                attr_accessor :discount
                # Details to determine how long the discount should be applied for.
                sig {
                  returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Set::Discount::DiscountEnd)
                 }
                attr_accessor :discount_end
                # ID of the promotion code to create a new discount for.
                sig { returns(String) }
                attr_accessor :promotion_code
                sig {
                  params(coupon: String, discount: String, discount_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Set::Discount::DiscountEnd, promotion_code: String).void
                 }
                def initialize(
                  coupon: nil,
                  discount: nil,
                  discount_end: nil,
                  promotion_code: nil
                ); end
              end
              class Trial < Stripe::RequestParams
                # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
                sig { returns(T::Array[String]) }
                attr_accessor :converts_to
                # Determines the type of trial for this item.
                sig { returns(String) }
                attr_accessor :type
                sig { params(converts_to: T::Array[String], type: String).void }
                def initialize(converts_to: nil, type: nil); end
              end
              # If an item with the `price` already exists, passing this will override the `discounts` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `discounts`.
              sig {
                returns(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Set::Discount])
               }
              attr_accessor :discounts
              # If an item with the `price` already exists, passing this will override the `metadata` on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `metadata`.
              sig { returns(T::Hash[String, String]) }
              attr_accessor :metadata
              # The ID of the price object.
              sig { returns(String) }
              attr_accessor :price
              # If an item with the `price` already exists, passing this will override the quantity on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `quantity`.
              sig { returns(Integer) }
              attr_accessor :quantity
              # If an item with the `price` already exists, passing this will override the `tax_rates` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `tax_rates`.
              sig { returns(T::Array[String]) }
              attr_accessor :tax_rates
              # If an item with the `price` already exists, passing this will override the `trial` configuration on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `trial`.
              sig {
                returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Set::Trial)
               }
              attr_accessor :trial
              sig {
                params(discounts: T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Set::Discount], metadata: T::Hash[String, String], price: String, quantity: Integer, tax_rates: T::Array[String], trial: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Set::Trial).void
               }
              def initialize(
                discounts: nil,
                metadata: nil,
                price: nil,
                quantity: nil,
                tax_rates: nil,
                trial: nil
              ); end
            end
            # Details of the subscription item to add. If an item with the same `price` exists, it will be replaced by this new item. Otherwise, it adds the new item.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Add)
             }
            attr_accessor :add
            # Details of the subscription item to remove.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Remove)
             }
            attr_accessor :remove
            # Details of the subscription item to replace the existing items with. If an item with the `set[price]` already exists, the `items` array is not cleared. Instead, all of the other `set` properties that are passed in this request will replace the existing values for the configuration item.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Set)
             }
            attr_accessor :set
            # Determines the type of item action.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(add: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Add, remove: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Remove, set: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction::Set, type: String).void
             }
            def initialize(add: nil, remove: nil, set: nil, type: nil); end
          end
          class MetadataAction < Stripe::RequestParams
            # Key-value pairs to add to schedule phase metadata. These values will merge with existing schedule phase metadata.
            sig { returns(T::Hash[String, String]) }
            attr_accessor :add
            # Keys to remove from schedule phase metadata.
            sig { returns(T::Array[String]) }
            attr_accessor :remove
            # Key-value pairs to set as schedule phase metadata. Existing schedule phase metadata will be overwritten.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :set
            # Select one of three ways to update phase-level `metadata` on subscription schedules.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(add: T::Hash[String, String], remove: T::Array[String], set: T.nilable(T::Hash[String, String]), type: String).void
             }
            def initialize(add: nil, remove: nil, set: nil, type: nil); end
          end
          class SetPauseCollection < Stripe::RequestParams
            class Set < Stripe::RequestParams
              # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
              sig { returns(String) }
              attr_accessor :behavior
              sig { params(behavior: String).void }
              def initialize(behavior: nil); end
            end
            # Details of the pause_collection behavior to apply to the amendment.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::SetPauseCollection::Set)
             }
            attr_accessor :set
            # Determines the type of the pause_collection amendment.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(set: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::SetPauseCollection::Set, type: String).void
             }
            def initialize(set: nil, type: nil); end
          end
          class TrialSettings < Stripe::RequestParams
            class EndBehavior < Stripe::RequestParams
              # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
              sig { returns(String) }
              attr_accessor :prorate_up_front
              sig { params(prorate_up_front: String).void }
              def initialize(prorate_up_front: nil); end
            end
            # Defines how the subscription should behave when a trial ends.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::TrialSettings::EndBehavior)
             }
            attr_accessor :end_behavior
            sig {
              params(end_behavior: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::TrialSettings::EndBehavior).void
             }
            def initialize(end_behavior: nil); end
          end
          # Details to identify the end of the time range modified by the proposed change. If not supplied, the amendment is considered a point-in-time operation that only affects the exact timestamp at `amendment_start`, and a restricted set of attributes is supported on the amendment.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::AmendmentEnd)
           }
          attr_accessor :amendment_end
          # Details to identify the earliest timestamp where the proposed change should take effect.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::AmendmentStart)
           }
          attr_accessor :amendment_start
          # For point-in-time amendments (having no `amendment_end`), this attribute lets you set or remove whether the subscription's billing cycle anchor is reset at the `amendment_start` timestamp.For time-span based amendments (having both `amendment_start` and `amendment_end`), the only value valid is `automatic`, which removes any previously configured billing cycle anchor resets scheduled to occur during the window of time spanned by the amendment.
          sig { returns(String) }
          attr_accessor :billing_cycle_anchor
          # Changes to the coupons being redeemed or discounts being applied during the amendment time span.
          sig {
            returns(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::DiscountAction])
           }
          attr_accessor :discount_actions
          # Changes to the subscription items during the amendment time span.
          sig {
            returns(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction])
           }
          attr_accessor :item_actions
          # Instructions for how to modify phase metadata
          sig {
            returns(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::MetadataAction])
           }
          attr_accessor :metadata_actions
          # Changes to how Stripe handles prorations during the amendment time span. Affects if and how prorations are created when a future phase starts. In cases where the amendment changes the currently active phase, it is used to determine whether or how to prorate now, at the time of the request. Also supported as a point-in-time operation when `amendment_end` is `null`.
          sig { returns(String) }
          attr_accessor :proration_behavior
          # Defines how to pause collection for the underlying subscription throughout the duration of the amendment.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::SetPauseCollection)
           }
          attr_accessor :set_pause_collection
          # Ends the subscription schedule early as dictated by either the accompanying amendment's start or end.
          sig { returns(String) }
          attr_accessor :set_schedule_end
          # Settings related to subscription trials.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::TrialSettings)
           }
          attr_accessor :trial_settings
          sig {
            params(amendment_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::AmendmentEnd, amendment_start: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::AmendmentStart, billing_cycle_anchor: String, discount_actions: T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::DiscountAction], item_actions: T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::ItemAction], metadata_actions: T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::MetadataAction], proration_behavior: String, set_pause_collection: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::SetPauseCollection, set_schedule_end: String, trial_settings: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment::TrialSettings).void
           }
          def initialize(
            amendment_end: nil,
            amendment_start: nil,
            billing_cycle_anchor: nil,
            discount_actions: nil,
            item_actions: nil,
            metadata_actions: nil,
            proration_behavior: nil,
            set_pause_collection: nil,
            set_schedule_end: nil,
            trial_settings: nil
          ); end
        end
        class Phase < Stripe::RequestParams
          class AddInvoiceItem < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              class DiscountEnd < Stripe::RequestParams
                class Duration < Stripe::RequestParams
                  # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                  sig { returns(String) }
                  attr_accessor :interval
                  # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                  sig { returns(Integer) }
                  attr_accessor :interval_count
                  sig { params(interval: String, interval_count: Integer).void }
                  def initialize(interval: nil, interval_count: nil); end
                end
                # Time span for the redeemed discount.
                sig {
                  returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::AddInvoiceItem::Discount::DiscountEnd::Duration)
                 }
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                sig { returns(Integer) }
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(duration: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::AddInvoiceItem::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
                 }
                def initialize(duration: nil, timestamp: nil, type: nil); end
              end
              # ID of the coupon to create a new discount for.
              sig { returns(String) }
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              sig { returns(String) }
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              sig {
                returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::AddInvoiceItem::Discount::DiscountEnd)
               }
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              sig { returns(String) }
              attr_accessor :promotion_code
              sig {
                params(coupon: String, discount: String, discount_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::AddInvoiceItem::Discount::DiscountEnd, promotion_code: String).void
               }
              def initialize(
                coupon: nil,
                discount: nil,
                discount_end: nil,
                promotion_code: nil
              ); end
            end
            class PriceData < Stripe::RequestParams
              # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
              sig { returns(String) }
              attr_accessor :currency
              # The ID of the product that this price will belong to.
              sig { returns(String) }
              attr_accessor :product
              # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
              sig { returns(String) }
              attr_accessor :tax_behavior
              # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge or a negative integer representing the amount to credit to the customer.
              sig { returns(Integer) }
              attr_accessor :unit_amount
              # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
              sig { returns(String) }
              attr_accessor :unit_amount_decimal
              sig {
                params(currency: String, product: String, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
               }
              def initialize(
                currency: nil,
                product: nil,
                tax_behavior: nil,
                unit_amount: nil,
                unit_amount_decimal: nil
              ); end
            end
            # The coupons to redeem into discounts for the item.
            sig {
              returns(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::AddInvoiceItem::Discount])
             }
            attr_accessor :discounts
            # The ID of the price object. One of `price` or `price_data` is required.
            sig { returns(String) }
            attr_accessor :price
            # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::AddInvoiceItem::PriceData)
             }
            attr_accessor :price_data
            # Quantity for this item. Defaults to 1.
            sig { returns(Integer) }
            attr_accessor :quantity
            # The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :tax_rates
            sig {
              params(discounts: T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::AddInvoiceItem::Discount], price: String, price_data: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::AddInvoiceItem::PriceData, quantity: Integer, tax_rates: T.nilable(T::Array[String])).void
             }
            def initialize(
              discounts: nil,
              price: nil,
              price_data: nil,
              quantity: nil,
              tax_rates: nil
            ); end
          end
          class AutomaticTax < Stripe::RequestParams
            class Liability < Stripe::RequestParams
              # The connected account being referenced when `type` is `account`.
              sig { returns(String) }
              attr_accessor :account
              # Type of the account referenced in the request.
              sig { returns(String) }
              attr_accessor :type
              sig { params(account: String, type: String).void }
              def initialize(account: nil, type: nil); end
            end
            # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::AutomaticTax::Liability)
             }
            attr_accessor :liability
            sig {
              params(enabled: T::Boolean, liability: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::AutomaticTax::Liability).void
             }
            def initialize(enabled: nil, liability: nil); end
          end
          class BillingThresholds < Stripe::RequestParams
            # Monetary threshold that triggers the subscription to advance to a new billing period
            sig { returns(Integer) }
            attr_accessor :amount_gte
            # Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged.
            sig { returns(T::Boolean) }
            attr_accessor :reset_billing_cycle_anchor
            sig { params(amount_gte: Integer, reset_billing_cycle_anchor: T::Boolean).void }
            def initialize(amount_gte: nil, reset_billing_cycle_anchor: nil); end
          end
          class Discount < Stripe::RequestParams
            class DiscountEnd < Stripe::RequestParams
              class Duration < Stripe::RequestParams
                # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                sig { returns(String) }
                attr_accessor :interval
                # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                sig { returns(Integer) }
                attr_accessor :interval_count
                sig { params(interval: String, interval_count: Integer).void }
                def initialize(interval: nil, interval_count: nil); end
              end
              # Time span for the redeemed discount.
              sig {
                returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Discount::DiscountEnd::Duration)
               }
              attr_accessor :duration
              # A precise Unix timestamp for the discount to end. Must be in the future.
              sig { returns(Integer) }
              attr_accessor :timestamp
              # The type of calculation made to determine when the discount ends.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(duration: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
               }
              def initialize(duration: nil, timestamp: nil, type: nil); end
            end
            # ID of the coupon to create a new discount for.
            sig { returns(String) }
            attr_accessor :coupon
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            sig { returns(String) }
            attr_accessor :discount
            # Details to determine how long the discount should be applied for.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Discount::DiscountEnd)
             }
            attr_accessor :discount_end
            # ID of the promotion code to create a new discount for.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig {
              params(coupon: String, discount: String, discount_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Discount::DiscountEnd, promotion_code: String).void
             }
            def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
          end
          class InvoiceSettings < Stripe::RequestParams
            class Issuer < Stripe::RequestParams
              # The connected account being referenced when `type` is `account`.
              sig { returns(String) }
              attr_accessor :account
              # Type of the account referenced in the request.
              sig { returns(String) }
              attr_accessor :type
              sig { params(account: String, type: String).void }
              def initialize(account: nil, type: nil); end
            end
            # The account tax IDs associated with this phase of the subscription schedule. Will be set on invoices generated by this phase of the subscription schedule.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :account_tax_ids
            # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `billing=charge_automatically`.
            sig { returns(Integer) }
            attr_accessor :days_until_due
            # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::InvoiceSettings::Issuer)
             }
            attr_accessor :issuer
            sig {
              params(account_tax_ids: T.nilable(T::Array[String]), days_until_due: Integer, issuer: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::InvoiceSettings::Issuer).void
             }
            def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil); end
          end
          class Item < Stripe::RequestParams
            class BillingThresholds < Stripe::RequestParams
              # Number of units that meets the billing threshold to advance the subscription to a new billing period (e.g., it takes 10 $5 units to meet a $50 [monetary threshold](https://stripe.com/docs/api/subscriptions/update#update_subscription-billing_thresholds-amount_gte))
              sig { returns(Integer) }
              attr_accessor :usage_gte
              sig { params(usage_gte: Integer).void }
              def initialize(usage_gte: nil); end
            end
            class Discount < Stripe::RequestParams
              class DiscountEnd < Stripe::RequestParams
                class Duration < Stripe::RequestParams
                  # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                  sig { returns(String) }
                  attr_accessor :interval
                  # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                  sig { returns(Integer) }
                  attr_accessor :interval_count
                  sig { params(interval: String, interval_count: Integer).void }
                  def initialize(interval: nil, interval_count: nil); end
                end
                # Time span for the redeemed discount.
                sig {
                  returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item::Discount::DiscountEnd::Duration)
                 }
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                sig { returns(Integer) }
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(duration: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
                 }
                def initialize(duration: nil, timestamp: nil, type: nil); end
              end
              # ID of the coupon to create a new discount for.
              sig { returns(String) }
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              sig { returns(String) }
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              sig {
                returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item::Discount::DiscountEnd)
               }
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              sig { returns(String) }
              attr_accessor :promotion_code
              sig {
                params(coupon: String, discount: String, discount_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item::Discount::DiscountEnd, promotion_code: String).void
               }
              def initialize(
                coupon: nil,
                discount: nil,
                discount_end: nil,
                promotion_code: nil
              ); end
            end
            class PriceData < Stripe::RequestParams
              class Recurring < Stripe::RequestParams
                # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
                sig { returns(String) }
                attr_accessor :interval
                # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
                sig { returns(Integer) }
                attr_accessor :interval_count
                sig { params(interval: String, interval_count: Integer).void }
                def initialize(interval: nil, interval_count: nil); end
              end
              # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
              sig { returns(String) }
              attr_accessor :currency
              # The ID of the product that this price will belong to.
              sig { returns(String) }
              attr_accessor :product
              # The recurring components of a price such as `interval` and `interval_count`.
              sig {
                returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item::PriceData::Recurring)
               }
              attr_accessor :recurring
              # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
              sig { returns(String) }
              attr_accessor :tax_behavior
              # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
              sig { returns(Integer) }
              attr_accessor :unit_amount
              # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
              sig { returns(String) }
              attr_accessor :unit_amount_decimal
              sig {
                params(currency: String, product: String, recurring: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item::PriceData::Recurring, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
               }
              def initialize(
                currency: nil,
                product: nil,
                recurring: nil,
                tax_behavior: nil,
                unit_amount: nil,
                unit_amount_decimal: nil
              ); end
            end
            class Trial < Stripe::RequestParams
              # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
              sig { returns(T::Array[String]) }
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              sig { returns(String) }
              attr_accessor :type
              sig { params(converts_to: T::Array[String], type: String).void }
              def initialize(converts_to: nil, type: nil); end
            end
            # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. When updating, pass an empty string to remove previously-defined thresholds.
            sig {
              returns(T.nilable(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item::BillingThresholds))
             }
            attr_accessor :billing_thresholds
            # The coupons to redeem into discounts for the subscription item.
            sig {
              returns(T.nilable(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item::Discount]))
             }
            attr_accessor :discounts
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a configuration item. Metadata on a configuration item will update the underlying subscription item's `metadata` when the phase is entered, adding new keys and replacing existing keys. Individual keys in the subscription item's `metadata` can be unset by posting an empty value to them in the configuration item's `metadata`. To unset all keys in the subscription item's `metadata`, update the subscription item directly or unset every key individually from the configuration item's `metadata`.
            sig { returns(T::Hash[String, String]) }
            attr_accessor :metadata
            # The plan ID to subscribe to. You may specify the same ID in `plan` and `price`.
            sig { returns(String) }
            attr_accessor :plan
            # The ID of the price object.
            sig { returns(String) }
            attr_accessor :price
            # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item::PriceData)
             }
            attr_accessor :price_data
            # Quantity for the given price. Can be set only if the price's `usage_type` is `licensed` and not `metered`.
            sig { returns(Integer) }
            attr_accessor :quantity
            # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :tax_rates
            # Options that configure the trial on the subscription item.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item::Trial)
             }
            attr_accessor :trial
            sig {
              params(billing_thresholds: T.nilable(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item::BillingThresholds), discounts: T.nilable(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item::Discount]), metadata: T::Hash[String, String], plan: String, price: String, price_data: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item::PriceData, quantity: Integer, tax_rates: T.nilable(T::Array[String]), trial: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item::Trial).void
             }
            def initialize(
              billing_thresholds: nil,
              discounts: nil,
              metadata: nil,
              plan: nil,
              price: nil,
              price_data: nil,
              quantity: nil,
              tax_rates: nil,
              trial: nil
            ); end
          end
          class PauseCollection < Stripe::RequestParams
            # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
            sig { returns(String) }
            attr_accessor :behavior
            sig { params(behavior: String).void }
            def initialize(behavior: nil); end
          end
          class TransferData < Stripe::RequestParams
            # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
            sig { returns(Float) }
            attr_accessor :amount_percent
            # ID of an existing, connected Stripe account.
            sig { returns(String) }
            attr_accessor :destination
            sig { params(amount_percent: Float, destination: String).void }
            def initialize(amount_percent: nil, destination: nil); end
          end
          class TrialSettings < Stripe::RequestParams
            class EndBehavior < Stripe::RequestParams
              # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
              sig { returns(String) }
              attr_accessor :prorate_up_front
              sig { params(prorate_up_front: String).void }
              def initialize(prorate_up_front: nil); end
            end
            # Defines how the subscription should behave when a trial ends.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::TrialSettings::EndBehavior)
             }
            attr_accessor :end_behavior
            sig {
              params(end_behavior: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::TrialSettings::EndBehavior).void
             }
            def initialize(end_behavior: nil); end
          end
          # A list of prices and quantities that will generate invoice items appended to the next invoice for this phase. You may pass up to 20 items.
          sig {
            returns(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::AddInvoiceItem])
           }
          attr_accessor :add_invoice_items
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
          sig { returns(Float) }
          attr_accessor :application_fee_percent
          # Automatic tax settings for this phase.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::AutomaticTax)
           }
          attr_accessor :automatic_tax
          # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
          sig { returns(String) }
          attr_accessor :billing_cycle_anchor
          # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
          sig {
            returns(T.nilable(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::BillingThresholds))
           }
          attr_accessor :billing_thresholds
          # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
          sig { returns(String) }
          attr_accessor :collection_method
          # The ID of the coupon to apply to this phase of the subscription schedule. This field has been deprecated and will be removed in a future API version. Use `discounts` instead.
          sig { returns(String) }
          attr_accessor :coupon
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
          sig { returns(String) }
          attr_accessor :default_payment_method
          # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will set the Subscription's [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates), which means they will be the Invoice's [`default_tax_rates`](https://stripe.com/docs/api/invoices/create#create_invoice-default_tax_rates) for any Invoices issued by the Subscription during this Phase.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :default_tax_rates
          # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
          sig { returns(T.nilable(String)) }
          attr_accessor :description
          # The coupons to redeem into discounts for the schedule phase. If not specified, inherits the discount from the subscription's customer. Pass an empty string to avoid inheriting any discounts.
          sig {
            returns(T.nilable(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Discount]))
           }
          attr_accessor :discounts
          # The date at which this phase of the subscription schedule ends. If set, `iterations` must not be set.
          sig { returns(T.any(Integer, String)) }
          attr_accessor :end_date
          # All invoices will be billed using the specified settings.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::InvoiceSettings)
           }
          attr_accessor :invoice_settings
          # List of configuration items, each with an attached price, to apply during this phase of the subscription schedule.
          sig {
            returns(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item])
           }
          attr_accessor :items
          # Integer representing the multiplier applied to the price interval. For example, `iterations=2` applied to a price with `interval=month` and `interval_count=3` results in a phase of duration `2 * 3 months = 6 months`. If set, `end_date` must not be set.
          sig { returns(Integer) }
          attr_accessor :iterations
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a phase. Metadata on a schedule's phase will update the underlying subscription's `metadata` when the phase is entered, adding new keys and replacing existing keys in the subscription's `metadata`. Individual keys in the subscription's `metadata` can be unset by posting an empty value to them in the phase's `metadata`. To unset all keys in the subscription's `metadata`, update the subscription directly or unset every key individually from the phase's `metadata`.
          sig { returns(T::Hash[String, String]) }
          attr_accessor :metadata
          # The account on behalf of which to charge, for each of the associated subscription's invoices.
          sig { returns(String) }
          attr_accessor :on_behalf_of
          # If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://stripe.com/docs/billing/subscriptions/pause-payment).
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::PauseCollection)
           }
          attr_accessor :pause_collection
          # Whether the subscription schedule will create [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when transitioning to this phase. The default value is `create_prorations`. This setting controls prorations when a phase is started asynchronously and it is persisted as a field on the phase. It's different from the request-level [proration_behavior](https://stripe.com/docs/api/subscription_schedules/update#update_subscription_schedule-proration_behavior) parameter which controls what happens if the update request affects the billing configuration of the current phase.
          sig { returns(String) }
          attr_accessor :proration_behavior
          # The date at which this phase of the subscription schedule starts or `now`. Must be set on the first phase.
          sig { returns(T.any(Integer, String)) }
          attr_accessor :start_date
          # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::TransferData)
           }
          attr_accessor :transfer_data
          # If set to true the entire phase is counted as a trial and the customer will not be charged for any fees.
          sig { returns(T::Boolean) }
          attr_accessor :trial
          # Specify trial behavior when crossing phase boundaries
          sig { returns(String) }
          attr_accessor :trial_continuation
          # Sets the phase to trialing from the start date to this date. Must be before the phase end date, can not be combined with `trial`
          sig { returns(T.any(Integer, String)) }
          attr_accessor :trial_end
          # Settings related to subscription trials.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::TrialSettings)
           }
          attr_accessor :trial_settings
          sig {
            params(add_invoice_items: T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::AddInvoiceItem], application_fee_percent: Float, automatic_tax: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::AutomaticTax, billing_cycle_anchor: String, billing_thresholds: T.nilable(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::BillingThresholds), collection_method: String, coupon: String, currency: String, default_payment_method: String, default_tax_rates: T.nilable(T::Array[String]), description: T.nilable(String), discounts: T.nilable(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Discount]), end_date: T.any(Integer, String), invoice_settings: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::InvoiceSettings, items: T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::Item], iterations: Integer, metadata: T::Hash[String, String], on_behalf_of: String, pause_collection: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::PauseCollection, proration_behavior: String, start_date: T.any(Integer, String), transfer_data: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::TransferData, trial: T::Boolean, trial_continuation: String, trial_end: T.any(Integer, String), trial_settings: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase::TrialSettings).void
           }
          def initialize(
            add_invoice_items: nil,
            application_fee_percent: nil,
            automatic_tax: nil,
            billing_cycle_anchor: nil,
            billing_thresholds: nil,
            collection_method: nil,
            coupon: nil,
            currency: nil,
            default_payment_method: nil,
            default_tax_rates: nil,
            description: nil,
            discounts: nil,
            end_date: nil,
            invoice_settings: nil,
            items: nil,
            iterations: nil,
            metadata: nil,
            on_behalf_of: nil,
            pause_collection: nil,
            proration_behavior: nil,
            start_date: nil,
            transfer_data: nil,
            trial: nil,
            trial_continuation: nil,
            trial_end: nil,
            trial_settings: nil
          ); end
        end
        class Prebilling < Stripe::RequestParams
          class BillUntil < Stripe::RequestParams
            class AmendmentEnd < Stripe::RequestParams
              # The position of the amendment in the `amendments` array at which prebilling should end. Indexes start from 0 and must be less than the total number of supplied amendments.
              sig { returns(Integer) }
              attr_accessor :index
              sig { params(index: Integer).void }
              def initialize(index: nil); end
            end
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # End the prebilled period when a specified amendment ends.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Prebilling::BillUntil::AmendmentEnd)
             }
            attr_accessor :amendment_end
            # Time span for prebilling, starting from `bill_from`.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Prebilling::BillUntil::Duration)
             }
            attr_accessor :duration
            # End the prebilled period at a precise integer timestamp, starting from the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # Select one of several ways to pass the `bill_until` value.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(amendment_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Prebilling::BillUntil::AmendmentEnd, duration: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Prebilling::BillUntil::Duration, timestamp: Integer, type: String).void
             }
            def initialize(amendment_end: nil, duration: nil, timestamp: nil, type: nil); end
          end
          # The end of the prebilled time period.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Prebilling::BillUntil)
           }
          attr_accessor :bill_until
          # This is used to determine the number of billing cycles to prebill.
          sig { returns(Integer) }
          attr_accessor :iterations
          sig {
            params(bill_until: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Prebilling::BillUntil, iterations: Integer).void
           }
          def initialize(bill_until: nil, iterations: nil); end
        end
        # Changes to apply to the phases of the subscription schedule, in the order provided.
        sig {
          returns(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment])
         }
        attr_accessor :amendments
        # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
        sig { returns(String) }
        attr_accessor :billing_behavior
        # Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
        sig { returns(String) }
        attr_accessor :end_behavior
        # List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase.
        sig {
          returns(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase])
         }
        attr_accessor :phases
        # Provide any time periods to bill in advance.
        sig {
          returns(T.nilable(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Prebilling]))
         }
        attr_accessor :prebilling
        # In cases where the `schedule_details` params update the currently active phase, specifies if and how to prorate at the time of the request.
        sig { returns(String) }
        attr_accessor :proration_behavior
        sig {
          params(amendments: T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Amendment], billing_behavior: String, end_behavior: String, phases: T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Phase], prebilling: T.nilable(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails::Prebilling]), proration_behavior: String).void
         }
        def initialize(
          amendments: nil,
          billing_behavior: nil,
          end_behavior: nil,
          phases: nil,
          prebilling: nil,
          proration_behavior: nil
        ); end
      end
      class SubscriptionDetails < Stripe::RequestParams
        class Item < Stripe::RequestParams
          class BillingThresholds < Stripe::RequestParams
            # Number of units that meets the billing threshold to advance the subscription to a new billing period (e.g., it takes 10 $5 units to meet a $50 [monetary threshold](https://stripe.com/docs/api/subscriptions/update#update_subscription-billing_thresholds-amount_gte))
            sig { returns(Integer) }
            attr_accessor :usage_gte
            sig { params(usage_gte: Integer).void }
            def initialize(usage_gte: nil); end
          end
          class Discount < Stripe::RequestParams
            class DiscountEnd < Stripe::RequestParams
              class Duration < Stripe::RequestParams
                # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                sig { returns(String) }
                attr_accessor :interval
                # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                sig { returns(Integer) }
                attr_accessor :interval_count
                sig { params(interval: String, interval_count: Integer).void }
                def initialize(interval: nil, interval_count: nil); end
              end
              # Time span for the redeemed discount.
              sig {
                returns(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Item::Discount::DiscountEnd::Duration)
               }
              attr_accessor :duration
              # A precise Unix timestamp for the discount to end. Must be in the future.
              sig { returns(Integer) }
              attr_accessor :timestamp
              # The type of calculation made to determine when the discount ends.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(duration: ::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Item::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
               }
              def initialize(duration: nil, timestamp: nil, type: nil); end
            end
            # ID of the coupon to create a new discount for.
            sig { returns(String) }
            attr_accessor :coupon
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            sig { returns(String) }
            attr_accessor :discount
            # Details to determine how long the discount should be applied for.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Item::Discount::DiscountEnd)
             }
            attr_accessor :discount_end
            # ID of the promotion code to create a new discount for.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig {
              params(coupon: String, discount: String, discount_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Item::Discount::DiscountEnd, promotion_code: String).void
             }
            def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
          end
          class PriceData < Stripe::RequestParams
            class Recurring < Stripe::RequestParams
              # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # The ID of the product that this price will belong to.
            sig { returns(String) }
            attr_accessor :product
            # The recurring components of a price such as `interval` and `interval_count`.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Item::PriceData::Recurring)
             }
            attr_accessor :recurring
            # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            sig { returns(String) }
            attr_accessor :tax_behavior
            # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
            sig { returns(Integer) }
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            sig { returns(String) }
            attr_accessor :unit_amount_decimal
            sig {
              params(currency: String, product: String, recurring: ::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Item::PriceData::Recurring, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
             }
            def initialize(
              currency: nil,
              product: nil,
              recurring: nil,
              tax_behavior: nil,
              unit_amount: nil,
              unit_amount_decimal: nil
            ); end
          end
          # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. When updating, pass an empty string to remove previously-defined thresholds.
          sig {
            returns(T.nilable(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Item::BillingThresholds))
           }
          attr_accessor :billing_thresholds
          # Delete all usage for a given subscription item. You must pass this when deleting a usage records subscription item. `clear_usage` has no effect if the plan has a billing meter attached.
          sig { returns(T::Boolean) }
          attr_accessor :clear_usage
          # A flag that, if set to `true`, will delete the specified item.
          sig { returns(T::Boolean) }
          attr_accessor :deleted
          # The coupons to redeem into discounts for the subscription item.
          sig {
            returns(T.nilable(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Item::Discount]))
           }
          attr_accessor :discounts
          # Subscription item to update.
          sig { returns(String) }
          attr_accessor :id
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # Plan ID for this item, as a string.
          sig { returns(String) }
          attr_accessor :plan
          # The ID of the price object. One of `price` or `price_data` is required. When changing a subscription item's price, `quantity` is set to 1 unless a `quantity` parameter is provided.
          sig { returns(String) }
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Item::PriceData)
           }
          attr_accessor :price_data
          # Quantity for this item.
          sig { returns(Integer) }
          attr_accessor :quantity
          # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :tax_rates
          sig {
            params(billing_thresholds: T.nilable(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Item::BillingThresholds), clear_usage: T::Boolean, deleted: T::Boolean, discounts: T.nilable(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Item::Discount]), id: String, metadata: T.nilable(T::Hash[String, String]), plan: String, price: String, price_data: ::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Item::PriceData, quantity: Integer, tax_rates: T.nilable(T::Array[String])).void
           }
          def initialize(
            billing_thresholds: nil,
            clear_usage: nil,
            deleted: nil,
            discounts: nil,
            id: nil,
            metadata: nil,
            plan: nil,
            price: nil,
            price_data: nil,
            quantity: nil,
            tax_rates: nil
          ); end
        end
        class Prebilling < Stripe::RequestParams
          # This is used to determine the number of billing cycles to prebill.
          sig { returns(Integer) }
          attr_accessor :iterations
          sig { params(iterations: Integer).void }
          def initialize(iterations: nil); end
        end
        # For new subscriptions, a future timestamp to anchor the subscription's [billing cycle](https://stripe.com/docs/subscriptions/billing-cycle). This is used to determine the date of the first full invoice, and, for plans with `month` or `year` intervals, the day of the month for subsequent invoices. For existing subscriptions, the value can only be set to `now` or `unchanged`.
        sig { returns(T.any(String, Integer)) }
        attr_accessor :billing_cycle_anchor
        # A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using `proration_behavior`. If set during a future period, this will always cause a proration for that period.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :cancel_at
        # Indicate whether this subscription should cancel at the end of the current period (`current_period_end`). Defaults to `false`.
        sig { returns(T::Boolean) }
        attr_accessor :cancel_at_period_end
        # This simulates the subscription being canceled or expired immediately.
        sig { returns(T::Boolean) }
        attr_accessor :cancel_now
        # If provided, the invoice returned will preview updating or creating a subscription with these default tax rates. The default tax rates will apply to any line item that does not have `tax_rates` set.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :default_tax_rates
        # A list of up to 20 subscription items, each with an attached price.
        sig {
          returns(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Item])
         }
        attr_accessor :items
        # The pre-billing to apply to the subscription as a preview.
        sig {
          returns(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Prebilling)
         }
        attr_accessor :prebilling
        # Determines how to handle [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
        sig { returns(String) }
        attr_accessor :proration_behavior
        # If previewing an update to a subscription, and doing proration, `subscription_details.proration_date` forces the proration to be calculated as though the update was done at the specified time. The time given must be within the current subscription period and within the current phase of the schedule backing this subscription, if the schedule exists. If set, `subscription`, and one of `subscription_details.items`, or `subscription_details.trial_end` are required. Also, `subscription_details.proration_behavior` cannot be set to 'none'.
        sig { returns(Integer) }
        attr_accessor :proration_date
        # For paused subscriptions, setting `subscription_details.resume_at` to `now` will preview the invoice that will be generated if the subscription is resumed.
        sig { returns(String) }
        attr_accessor :resume_at
        # Date a subscription is intended to start (can be future or past).
        sig { returns(Integer) }
        attr_accessor :start_date
        # If provided, the invoice returned will preview updating or creating a subscription with that trial end. If set, one of `subscription_details.items` or `subscription` is required.
        sig { returns(T.any(String, Integer)) }
        attr_accessor :trial_end
        sig {
          params(billing_cycle_anchor: T.any(String, Integer), cancel_at: T.nilable(Integer), cancel_at_period_end: T::Boolean, cancel_now: T::Boolean, default_tax_rates: T.nilable(T::Array[String]), items: T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Item], prebilling: ::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails::Prebilling, proration_behavior: String, proration_date: Integer, resume_at: String, start_date: Integer, trial_end: T.any(String, Integer)).void
         }
        def initialize(
          billing_cycle_anchor: nil,
          cancel_at: nil,
          cancel_at_period_end: nil,
          cancel_now: nil,
          default_tax_rates: nil,
          items: nil,
          prebilling: nil,
          proration_behavior: nil,
          proration_date: nil,
          resume_at: nil,
          start_date: nil,
          trial_end: nil
        ); end
      end
      class SubscriptionItem < Stripe::RequestParams
        class BillingThresholds < Stripe::RequestParams
          # Number of units that meets the billing threshold to advance the subscription to a new billing period (e.g., it takes 10 $5 units to meet a $50 [monetary threshold](https://stripe.com/docs/api/subscriptions/update#update_subscription-billing_thresholds-amount_gte))
          sig { returns(Integer) }
          attr_accessor :usage_gte
          sig { params(usage_gte: Integer).void }
          def initialize(usage_gte: nil); end
        end
        class Discount < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Time span for the redeemed discount.
            sig {
              returns(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionItem::Discount::DiscountEnd::Duration)
             }
            attr_accessor :duration
            # A precise Unix timestamp for the discount to end. Must be in the future.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: ::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionItem::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
             }
            def initialize(duration: nil, timestamp: nil, type: nil); end
          end
          # ID of the coupon to create a new discount for.
          sig { returns(String) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(String) }
          attr_accessor :discount
          # Details to determine how long the discount should be applied for.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionItem::Discount::DiscountEnd)
           }
          attr_accessor :discount_end
          # ID of the promotion code to create a new discount for.
          sig { returns(String) }
          attr_accessor :promotion_code
          sig {
            params(coupon: String, discount: String, discount_end: ::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionItem::Discount::DiscountEnd, promotion_code: String).void
           }
          def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
        end
        class PriceData < Stripe::RequestParams
          class Recurring < Stripe::RequestParams
            # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
            sig { returns(Integer) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # The ID of the product that this price will belong to.
          sig { returns(String) }
          attr_accessor :product
          # The recurring components of a price such as `interval` and `interval_count`.
          sig {
            returns(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionItem::PriceData::Recurring)
           }
          attr_accessor :recurring
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(String) }
          attr_accessor :tax_behavior
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          sig { returns(Integer) }
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(String) }
          attr_accessor :unit_amount_decimal
          sig {
            params(currency: String, product: String, recurring: ::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionItem::PriceData::Recurring, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
           }
          def initialize(
            currency: nil,
            product: nil,
            recurring: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          ); end
        end
        # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. When updating, pass an empty string to remove previously-defined thresholds.
        sig {
          returns(T.nilable(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionItem::BillingThresholds))
         }
        attr_accessor :billing_thresholds
        # Delete all usage for a given subscription item. You must pass this when deleting a usage records subscription item. `clear_usage` has no effect if the plan has a billing meter attached.
        sig { returns(T::Boolean) }
        attr_accessor :clear_usage
        # A flag that, if set to `true`, will delete the specified item.
        sig { returns(T::Boolean) }
        attr_accessor :deleted
        # The coupons to redeem into discounts for the subscription item.
        sig {
          returns(T.nilable(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionItem::Discount]))
         }
        attr_accessor :discounts
        # Subscription item to update.
        sig { returns(String) }
        attr_accessor :id
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # Plan ID for this item, as a string.
        sig { returns(String) }
        attr_accessor :plan
        # The ID of the price object. One of `price` or `price_data` is required. When changing a subscription item's price, `quantity` is set to 1 unless a `quantity` parameter is provided.
        sig { returns(String) }
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        sig {
          returns(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionItem::PriceData)
         }
        attr_accessor :price_data
        # Quantity for this item.
        sig { returns(Integer) }
        attr_accessor :quantity
        # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :tax_rates
        sig {
          params(billing_thresholds: T.nilable(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionItem::BillingThresholds), clear_usage: T::Boolean, deleted: T::Boolean, discounts: T.nilable(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionItem::Discount]), id: String, metadata: T.nilable(T::Hash[String, String]), plan: String, price: String, price_data: ::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionItem::PriceData, quantity: Integer, tax_rates: T.nilable(T::Array[String])).void
         }
        def initialize(
          billing_thresholds: nil,
          clear_usage: nil,
          deleted: nil,
          discounts: nil,
          id: nil,
          metadata: nil,
          plan: nil,
          price: nil,
          price_data: nil,
          quantity: nil,
          tax_rates: nil
        ); end
      end
      class SubscriptionPrebilling < Stripe::RequestParams
        # This is used to determine the number of billing cycles to prebill.
        sig { returns(Integer) }
        attr_accessor :iterations
        sig { params(iterations: Integer).void }
        def initialize(iterations: nil); end
      end
      # Settings for automatic tax lookup for this invoice preview.
      sig { returns(::Stripe::InvoiceUpcomingLinesService::ListParams::AutomaticTax) }
      attr_accessor :automatic_tax
      # The ID of the coupon to apply to this phase of the subscription schedule. This field has been deprecated and will be removed in a future API version. Use `discounts` instead.
      sig { returns(String) }
      attr_accessor :coupon
      # The currency to preview this invoice in. Defaults to that of `customer` if not specified.
      sig { returns(String) }
      attr_accessor :currency
      # The identifier of the customer whose upcoming invoice you'd like to retrieve. If `automatic_tax` is enabled then one of `customer`, `customer_details`, `subscription`, or `schedule` must be set.
      sig { returns(String) }
      attr_accessor :customer
      # Details about the customer you want to invoice or overrides for an existing customer. If `automatic_tax` is enabled then one of `customer`, `customer_details`, `subscription`, or `schedule` must be set.
      sig { returns(::Stripe::InvoiceUpcomingLinesService::ListParams::CustomerDetails) }
      attr_accessor :customer_details
      # The coupons to redeem into discounts for the invoice preview. If not specified, inherits the discount from the subscription or customer. This works for both coupons directly applied to an invoice and coupons applied to a subscription. Pass an empty string to avoid inheriting any discounts.
      sig {
        returns(T.nilable(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::Discount]))
       }
      attr_accessor :discounts
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(String) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # List of invoice items to add or update in the upcoming invoice preview (up to 250).
      sig { returns(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::InvoiceItem]) }
      attr_accessor :invoice_items
      # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
      sig { returns(::Stripe::InvoiceUpcomingLinesService::ListParams::Issuer) }
      attr_accessor :issuer
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://stripe.com/docs/billing/invoices/connect) documentation for details.
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # Customizes the types of values to include when calculating the invoice. Defaults to `next` if unspecified.
      sig { returns(String) }
      attr_accessor :preview_mode
      # The identifier of the schedule whose upcoming invoice you'd like to retrieve. Cannot be used with subscription or subscription fields.
      sig { returns(String) }
      attr_accessor :schedule
      # The schedule creation or modification params to apply as a preview. Cannot be used with `subscription` or `subscription_` prefixed fields.
      sig { returns(::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails) }
      attr_accessor :schedule_details
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      # The identifier of the subscription for which you'd like to retrieve the upcoming invoice. If not provided, but a `subscription_details.items` is provided, you will preview creating a subscription with those items. If neither `subscription` nor `subscription_details.items` is provided, you will retrieve the next upcoming invoice from among the customer's subscriptions.
      sig { returns(String) }
      attr_accessor :subscription
      # For new subscriptions, a future timestamp to anchor the subscription's [billing cycle](https://stripe.com/docs/subscriptions/billing-cycle). This is used to determine the date of the first full invoice, and, for plans with `month` or `year` intervals, the day of the month for subsequent invoices. For existing subscriptions, the value can only be set to `now` or `unchanged`. This field has been deprecated and will be removed in a future API version. Use `subscription_details.billing_cycle_anchor` instead.
      sig { returns(T.any(String, Integer)) }
      attr_accessor :subscription_billing_cycle_anchor
      # A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using `proration_behavior`. If set during a future period, this will always cause a proration for that period. This field has been deprecated and will be removed in a future API version. Use `subscription_details.cancel_at` instead.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :subscription_cancel_at
      # Indicate whether this subscription should cancel at the end of the current period (`current_period_end`). Defaults to `false`. This field has been deprecated and will be removed in a future API version. Use `subscription_details.cancel_at_period_end` instead.
      sig { returns(T::Boolean) }
      attr_accessor :subscription_cancel_at_period_end
      # This simulates the subscription being canceled or expired immediately. This field has been deprecated and will be removed in a future API version. Use `subscription_details.cancel_now` instead.
      sig { returns(T::Boolean) }
      attr_accessor :subscription_cancel_now
      # If provided, the invoice returned will preview updating or creating a subscription with these default tax rates. The default tax rates will apply to any line item that does not have `tax_rates` set. This field has been deprecated and will be removed in a future API version. Use `subscription_details.default_tax_rates` instead.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :subscription_default_tax_rates
      # The subscription creation or modification params to apply as a preview. Cannot be used with `schedule` or `schedule_details` fields.
      sig { returns(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails) }
      attr_accessor :subscription_details
      # A list of up to 20 subscription items, each with an attached price. This field has been deprecated and will be removed in a future API version. Use `subscription_details.items` instead.
      sig { returns(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionItem]) }
      attr_accessor :subscription_items
      # The pre-billing to apply to the subscription as a preview. This field has been deprecated and will be removed in a future API version. Use `subscription_details.prebilling` instead.
      sig { returns(::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionPrebilling) }
      attr_accessor :subscription_prebilling
      # Determines how to handle [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`. This field has been deprecated and will be removed in a future API version. Use `subscription_details.proration_behavior` instead.
      sig { returns(String) }
      attr_accessor :subscription_proration_behavior
      # If previewing an update to a subscription, and doing proration, `subscription_proration_date` forces the proration to be calculated as though the update was done at the specified time. The time given must be within the current subscription period and within the current phase of the schedule backing this subscription, if the schedule exists. If set, `subscription`, and one of `subscription_items`, or `subscription_trial_end` are required. Also, `subscription_proration_behavior` cannot be set to 'none'. This field has been deprecated and will be removed in a future API version. Use `subscription_details.proration_date` instead.
      sig { returns(Integer) }
      attr_accessor :subscription_proration_date
      # For paused subscriptions, setting `subscription_resume_at` to `now` will preview the invoice that will be generated if the subscription is resumed. This field has been deprecated and will be removed in a future API version. Use `subscription_details.resume_at` instead.
      sig { returns(String) }
      attr_accessor :subscription_resume_at
      # Date a subscription is intended to start (can be future or past). This field has been deprecated and will be removed in a future API version. Use `subscription_details.start_date` instead.
      sig { returns(Integer) }
      attr_accessor :subscription_start_date
      # If provided, the invoice returned will preview updating or creating a subscription with that trial end. If set, one of `subscription_items` or `subscription` is required. This field has been deprecated and will be removed in a future API version. Use `subscription_details.trial_end` instead.
      sig { returns(T.any(String, Integer)) }
      attr_accessor :subscription_trial_end
      # Indicates if a plan's `trial_period_days` should be applied to the subscription. Setting `subscription_trial_end` per subscription is preferred, and this defaults to `false`. Setting this flag to `true` together with `subscription_trial_end` is not allowed. See [Using trial periods on subscriptions](https://stripe.com/docs/billing/subscriptions/trials) to learn more.
      sig { returns(T::Boolean) }
      attr_accessor :subscription_trial_from_plan
      sig {
        params(automatic_tax: ::Stripe::InvoiceUpcomingLinesService::ListParams::AutomaticTax, coupon: String, currency: String, customer: String, customer_details: ::Stripe::InvoiceUpcomingLinesService::ListParams::CustomerDetails, discounts: T.nilable(T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::Discount]), ending_before: String, expand: T::Array[String], invoice_items: T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::InvoiceItem], issuer: ::Stripe::InvoiceUpcomingLinesService::ListParams::Issuer, limit: Integer, on_behalf_of: T.nilable(String), preview_mode: String, schedule: String, schedule_details: ::Stripe::InvoiceUpcomingLinesService::ListParams::ScheduleDetails, starting_after: String, subscription: String, subscription_billing_cycle_anchor: T.any(String, Integer), subscription_cancel_at: T.nilable(Integer), subscription_cancel_at_period_end: T::Boolean, subscription_cancel_now: T::Boolean, subscription_default_tax_rates: T.nilable(T::Array[String]), subscription_details: ::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionDetails, subscription_items: T::Array[::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionItem], subscription_prebilling: ::Stripe::InvoiceUpcomingLinesService::ListParams::SubscriptionPrebilling, subscription_proration_behavior: String, subscription_proration_date: Integer, subscription_resume_at: String, subscription_start_date: Integer, subscription_trial_end: T.any(String, Integer), subscription_trial_from_plan: T::Boolean).void
       }
      def initialize(
        automatic_tax: nil,
        coupon: nil,
        currency: nil,
        customer: nil,
        customer_details: nil,
        discounts: nil,
        ending_before: nil,
        expand: nil,
        invoice_items: nil,
        issuer: nil,
        limit: nil,
        on_behalf_of: nil,
        preview_mode: nil,
        schedule: nil,
        schedule_details: nil,
        starting_after: nil,
        subscription: nil,
        subscription_billing_cycle_anchor: nil,
        subscription_cancel_at: nil,
        subscription_cancel_at_period_end: nil,
        subscription_cancel_now: nil,
        subscription_default_tax_rates: nil,
        subscription_details: nil,
        subscription_items: nil,
        subscription_prebilling: nil,
        subscription_proration_behavior: nil,
        subscription_proration_date: nil,
        subscription_resume_at: nil,
        subscription_start_date: nil,
        subscription_trial_end: nil,
        subscription_trial_from_plan: nil
      ); end
    end
    # When retrieving an upcoming invoice, you'll get a lines property containing the total count of line items and the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(params: T.any(::Stripe::InvoiceUpcomingLinesService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end
  end
end