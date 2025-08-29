# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class CustomerService < StripeService
    attr_reader :balance_transactions
    attr_reader :cash_balance
    attr_reader :cash_balance_transactions
    attr_reader :funding_instructions
    attr_reader :payment_methods
    attr_reader :payment_sources
    attr_reader :tax_ids
    class DeleteParams < Stripe::RequestParams; end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class Address < Stripe::RequestParams
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        attr_accessor :city
        # A freeform text field for the country. However, in order to activate some tax features, the format should be a two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
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
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        attr_accessor :state
        sig {
          params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
      class CashBalance < Stripe::RequestParams
        class Settings < Stripe::RequestParams
          # Controls how funds transferred by the customer are applied to payment intents and invoices. Valid options are `automatic`, `manual`, or `merchant_default`. For more information about these reconciliation modes, see [Reconciliation](https://stripe.com/docs/payments/customer-balance/reconciliation).
          sig { returns(T.nilable(String)) }
          attr_accessor :reconciliation_mode
          sig { params(reconciliation_mode: T.nilable(String)).void }
          def initialize(reconciliation_mode: nil); end
        end
        # Settings controlling the behavior of the customer's cash balance,
        # such as reconciliation of funds received.
        sig { returns(T.nilable(::Stripe::CustomerService::UpdateParams::CashBalance::Settings)) }
        attr_accessor :settings
        sig {
          params(settings: T.nilable(::Stripe::CustomerService::UpdateParams::CashBalance::Settings)).void
         }
        def initialize(settings: nil); end
      end
      class InvoiceSettings < Stripe::RequestParams
        class CustomField < Stripe::RequestParams
          # The name of the custom field. This may be up to 40 characters.
          sig { returns(String) }
          attr_accessor :name
          # The value of the custom field. This may be up to 140 characters.
          sig { returns(String) }
          attr_accessor :value
          sig { params(name: String, value: String).void }
          def initialize(name: nil, value: nil); end
        end
        class RenderingOptions < Stripe::RequestParams
          # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of `exclude_tax` or `include_inclusive_tax`. `include_inclusive_tax` will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. `exclude_tax` will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :amount_tax_display
          # ID of the invoice rendering template to use for future invoices.
          sig { returns(T.nilable(String)) }
          attr_accessor :template
          sig {
            params(amount_tax_display: T.nilable(T.any(String, String)), template: T.nilable(String)).void
           }
          def initialize(amount_tax_display: nil, template: nil); end
        end
        # The list of up to 4 default custom fields to be displayed on invoices for this customer. When updating, pass an empty string to remove previously-defined fields.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::CustomerService::UpdateParams::InvoiceSettings::CustomField])))
         }
        attr_accessor :custom_fields
        # ID of a payment method that's attached to the customer, to be used as the customer's default payment method for subscriptions and invoices.
        sig { returns(T.nilable(String)) }
        attr_accessor :default_payment_method
        # Default footer to be displayed on invoices for this customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :footer
        # Default options for invoice PDF rendering for this customer.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::CustomerService::UpdateParams::InvoiceSettings::RenderingOptions)))
         }
        attr_accessor :rendering_options
        sig {
          params(custom_fields: T.nilable(T.any(String, T::Array[::Stripe::CustomerService::UpdateParams::InvoiceSettings::CustomField])), default_payment_method: T.nilable(String), footer: T.nilable(String), rendering_options: T.nilable(T.any(String, ::Stripe::CustomerService::UpdateParams::InvoiceSettings::RenderingOptions))).void
         }
        def initialize(
          custom_fields: nil,
          default_payment_method: nil,
          footer: nil,
          rendering_options: nil
        ); end
      end
      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_accessor :city
          # A freeform text field for the country. However, in order to activate some tax features, the format should be a two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
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
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          attr_accessor :state
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
        sig { returns(::Stripe::CustomerService::UpdateParams::Shipping::Address) }
        attr_accessor :address
        # Customer name.
        sig { returns(String) }
        attr_accessor :name
        # Customer phone (including extension).
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        sig {
          params(address: ::Stripe::CustomerService::UpdateParams::Shipping::Address, name: String, phone: T.nilable(String)).void
         }
        def initialize(address: nil, name: nil, phone: nil); end
      end
      class Tax < Stripe::RequestParams
        # A recent IP address of the customer used for tax reporting and tax location inference. Stripe recommends updating the IP address when a new PaymentMethod is attached or the address field on the customer is updated. We recommend against updating this field more frequently since it could result in unexpected tax location/reporting outcomes.
        sig { returns(T.nilable(String)) }
        attr_accessor :ip_address
        # A flag that indicates when Stripe should validate the customer tax location. Defaults to `auto`.
        sig { returns(T.nilable(String)) }
        attr_accessor :validate_location
        sig { params(ip_address: T.nilable(String), validate_location: T.nilable(String)).void }
        def initialize(ip_address: nil, validate_location: nil); end
      end
      # The customer's address.
      sig { returns(T.nilable(T.any(String, ::Stripe::CustomerService::UpdateParams::Address))) }
      attr_accessor :address
      # An integer amount in cents (or local equivalent) that represents the customer's current balance, which affect the customer's future invoices. A negative amount represents a credit that decreases the amount due on an invoice; a positive amount increases the amount due on an invoice.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :balance
      # Balance information and default balance settings for this customer.
      sig { returns(T.nilable(::Stripe::CustomerService::UpdateParams::CashBalance)) }
      attr_accessor :cash_balance
      # If you are using payment methods created via the PaymentMethods API, see the [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/update#update_customer-invoice_settings-default_payment_method) parameter.
      #
      # Provide the ID of a payment source already attached to this customer to make it this customer's default payment source.
      #
      # If you want to add a new payment source and make it the default, see the [source](https://stripe.com/docs/api/customers/update#update_customer-source) property.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_source
      # An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # Customer's email address. It's displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to *512 characters*.
      sig { returns(T.nilable(String)) }
      attr_accessor :email
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_prefix
      # Default invoice settings for this customer.
      sig { returns(T.nilable(::Stripe::CustomerService::UpdateParams::InvoiceSettings)) }
      attr_accessor :invoice_settings
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # The customer's full name or business name.
      sig { returns(T.nilable(String)) }
      attr_accessor :name
      # The sequence to be used on the customer's next invoice. Defaults to 1.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :next_invoice_sequence
      # The customer's phone number.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone
      # Customer's preferred languages, ordered by preference.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :preferred_locales
      # The customer's shipping information. Appears on invoices emailed to this customer.
      sig { returns(T.nilable(T.any(String, ::Stripe::CustomerService::UpdateParams::Shipping))) }
      attr_accessor :shipping
      # Attribute for param field source
      sig { returns(T.nilable(String)) }
      attr_accessor :source
      # Tax details about the customer.
      sig { returns(T.nilable(::Stripe::CustomerService::UpdateParams::Tax)) }
      attr_accessor :tax
      # The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
      sig { returns(T.nilable(T.any(String, String))) }
      attr_accessor :tax_exempt
      # Attribute for param field validate
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :validate
      sig {
        params(address: T.nilable(T.any(String, ::Stripe::CustomerService::UpdateParams::Address)), balance: T.nilable(Integer), cash_balance: T.nilable(::Stripe::CustomerService::UpdateParams::CashBalance), default_source: T.nilable(String), description: T.nilable(String), email: T.nilable(String), expand: T.nilable(T::Array[String]), invoice_prefix: T.nilable(String), invoice_settings: T.nilable(::Stripe::CustomerService::UpdateParams::InvoiceSettings), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: T.nilable(String), next_invoice_sequence: T.nilable(Integer), phone: T.nilable(String), preferred_locales: T.nilable(T::Array[String]), shipping: T.nilable(T.any(String, ::Stripe::CustomerService::UpdateParams::Shipping)), source: T.nilable(String), tax: T.nilable(::Stripe::CustomerService::UpdateParams::Tax), tax_exempt: T.nilable(T.any(String, String)), validate: T.nilable(T::Boolean)).void
       }
      def initialize(
        address: nil,
        balance: nil,
        cash_balance: nil,
        default_source: nil,
        description: nil,
        email: nil,
        expand: nil,
        invoice_prefix: nil,
        invoice_settings: nil,
        metadata: nil,
        name: nil,
        next_invoice_sequence: nil,
        phone: nil,
        preferred_locales: nil,
        shipping: nil,
        source: nil,
        tax: nil,
        tax_exempt: nil,
        validate: nil
      ); end
    end
    class DeleteDiscountParams < Stripe::RequestParams; end
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lte
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return customers that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::CustomerService::ListParams::Created, Integer))) }
      attr_accessor :created
      # A case-sensitive filter on the list based on the customer's `email` field. The value must be a string.
      sig { returns(T.nilable(String)) }
      attr_accessor :email
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      # Provides a list of customers that are associated with the specified test clock. The response will not include customers with test clocks if this parameter is not set.
      sig { returns(T.nilable(String)) }
      attr_accessor :test_clock
      sig {
        params(created: T.nilable(T.any(::Stripe::CustomerService::ListParams::Created, Integer)), email: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), test_clock: T.nilable(String)).void
       }
      def initialize(
        created: nil,
        email: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        test_clock: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class Address < Stripe::RequestParams
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        attr_accessor :city
        # A freeform text field for the country. However, in order to activate some tax features, the format should be a two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
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
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        attr_accessor :state
        sig {
          params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
      class CashBalance < Stripe::RequestParams
        class Settings < Stripe::RequestParams
          # Controls how funds transferred by the customer are applied to payment intents and invoices. Valid options are `automatic`, `manual`, or `merchant_default`. For more information about these reconciliation modes, see [Reconciliation](https://stripe.com/docs/payments/customer-balance/reconciliation).
          sig { returns(T.nilable(String)) }
          attr_accessor :reconciliation_mode
          sig { params(reconciliation_mode: T.nilable(String)).void }
          def initialize(reconciliation_mode: nil); end
        end
        # Settings controlling the behavior of the customer's cash balance,
        # such as reconciliation of funds received.
        sig { returns(T.nilable(::Stripe::CustomerService::CreateParams::CashBalance::Settings)) }
        attr_accessor :settings
        sig {
          params(settings: T.nilable(::Stripe::CustomerService::CreateParams::CashBalance::Settings)).void
         }
        def initialize(settings: nil); end
      end
      class InvoiceSettings < Stripe::RequestParams
        class CustomField < Stripe::RequestParams
          # The name of the custom field. This may be up to 40 characters.
          sig { returns(String) }
          attr_accessor :name
          # The value of the custom field. This may be up to 140 characters.
          sig { returns(String) }
          attr_accessor :value
          sig { params(name: String, value: String).void }
          def initialize(name: nil, value: nil); end
        end
        class RenderingOptions < Stripe::RequestParams
          # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of `exclude_tax` or `include_inclusive_tax`. `include_inclusive_tax` will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. `exclude_tax` will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :amount_tax_display
          # ID of the invoice rendering template to use for future invoices.
          sig { returns(T.nilable(String)) }
          attr_accessor :template
          sig {
            params(amount_tax_display: T.nilable(T.any(String, String)), template: T.nilable(String)).void
           }
          def initialize(amount_tax_display: nil, template: nil); end
        end
        # The list of up to 4 default custom fields to be displayed on invoices for this customer. When updating, pass an empty string to remove previously-defined fields.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::CustomerService::CreateParams::InvoiceSettings::CustomField])))
         }
        attr_accessor :custom_fields
        # ID of a payment method that's attached to the customer, to be used as the customer's default payment method for subscriptions and invoices.
        sig { returns(T.nilable(String)) }
        attr_accessor :default_payment_method
        # Default footer to be displayed on invoices for this customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :footer
        # Default options for invoice PDF rendering for this customer.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::CustomerService::CreateParams::InvoiceSettings::RenderingOptions)))
         }
        attr_accessor :rendering_options
        sig {
          params(custom_fields: T.nilable(T.any(String, T::Array[::Stripe::CustomerService::CreateParams::InvoiceSettings::CustomField])), default_payment_method: T.nilable(String), footer: T.nilable(String), rendering_options: T.nilable(T.any(String, ::Stripe::CustomerService::CreateParams::InvoiceSettings::RenderingOptions))).void
         }
        def initialize(
          custom_fields: nil,
          default_payment_method: nil,
          footer: nil,
          rendering_options: nil
        ); end
      end
      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_accessor :city
          # A freeform text field for the country. However, in order to activate some tax features, the format should be a two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
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
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          attr_accessor :state
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
        sig { returns(::Stripe::CustomerService::CreateParams::Shipping::Address) }
        attr_accessor :address
        # Customer name.
        sig { returns(String) }
        attr_accessor :name
        # Customer phone (including extension).
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        sig {
          params(address: ::Stripe::CustomerService::CreateParams::Shipping::Address, name: String, phone: T.nilable(String)).void
         }
        def initialize(address: nil, name: nil, phone: nil); end
      end
      class Tax < Stripe::RequestParams
        # A recent IP address of the customer used for tax reporting and tax location inference. Stripe recommends updating the IP address when a new PaymentMethod is attached or the address field on the customer is updated. We recommend against updating this field more frequently since it could result in unexpected tax location/reporting outcomes.
        sig { returns(T.nilable(String)) }
        attr_accessor :ip_address
        # A flag that indicates when Stripe should validate the customer tax location. Defaults to `deferred`.
        sig { returns(T.nilable(String)) }
        attr_accessor :validate_location
        sig { params(ip_address: T.nilable(String), validate_location: T.nilable(String)).void }
        def initialize(ip_address: nil, validate_location: nil); end
      end
      class TaxIdDatum < Stripe::RequestParams
        # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `aw_tin`, `az_tin`, `ba_tin`, `bb_tin`, `bd_bin`, `bf_ifu`, `bg_uic`, `bh_vat`, `bj_ifu`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cm_niu`, `cn_tin`, `co_nit`, `cr_tin`, `cv_nif`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `et_tin`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kg_tin`, `kh_tin`, `kr_brn`, `kz_bin`, `la_tin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
        sig { returns(String) }
        attr_accessor :type
        # Value of the tax ID.
        sig { returns(String) }
        attr_accessor :value
        sig { params(type: String, value: String).void }
        def initialize(type: nil, value: nil); end
      end
      # The customer's address.
      sig { returns(T.nilable(T.any(String, ::Stripe::CustomerService::CreateParams::Address))) }
      attr_accessor :address
      # An integer amount in cents (or local equivalent) that represents the customer's current balance, which affect the customer's future invoices. A negative amount represents a credit that decreases the amount due on an invoice; a positive amount increases the amount due on an invoice.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :balance
      # Balance information and default balance settings for this customer.
      sig { returns(T.nilable(::Stripe::CustomerService::CreateParams::CashBalance)) }
      attr_accessor :cash_balance
      # An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # Customer's email address. It's displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to *512 characters*.
      sig { returns(T.nilable(String)) }
      attr_accessor :email
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_prefix
      # Default invoice settings for this customer.
      sig { returns(T.nilable(::Stripe::CustomerService::CreateParams::InvoiceSettings)) }
      attr_accessor :invoice_settings
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # The customer's full name or business name.
      sig { returns(T.nilable(String)) }
      attr_accessor :name
      # The sequence to be used on the customer's next invoice. Defaults to 1.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :next_invoice_sequence
      # Attribute for param field payment_method
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method
      # The customer's phone number.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone
      # Customer's preferred languages, ordered by preference.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :preferred_locales
      # The customer's shipping information. Appears on invoices emailed to this customer.
      sig { returns(T.nilable(T.any(String, ::Stripe::CustomerService::CreateParams::Shipping))) }
      attr_accessor :shipping
      # Attribute for param field source
      sig { returns(T.nilable(String)) }
      attr_accessor :source
      # Tax details about the customer.
      sig { returns(T.nilable(::Stripe::CustomerService::CreateParams::Tax)) }
      attr_accessor :tax
      # The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
      sig { returns(T.nilable(T.any(String, String))) }
      attr_accessor :tax_exempt
      # The customer's tax IDs.
      sig { returns(T.nilable(T::Array[::Stripe::CustomerService::CreateParams::TaxIdDatum])) }
      attr_accessor :tax_id_data
      # ID of the test clock to attach to the customer.
      sig { returns(T.nilable(String)) }
      attr_accessor :test_clock
      # Attribute for param field validate
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :validate
      sig {
        params(address: T.nilable(T.any(String, ::Stripe::CustomerService::CreateParams::Address)), balance: T.nilable(Integer), cash_balance: T.nilable(::Stripe::CustomerService::CreateParams::CashBalance), description: T.nilable(String), email: T.nilable(String), expand: T.nilable(T::Array[String]), invoice_prefix: T.nilable(String), invoice_settings: T.nilable(::Stripe::CustomerService::CreateParams::InvoiceSettings), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: T.nilable(String), next_invoice_sequence: T.nilable(Integer), payment_method: T.nilable(String), phone: T.nilable(String), preferred_locales: T.nilable(T::Array[String]), shipping: T.nilable(T.any(String, ::Stripe::CustomerService::CreateParams::Shipping)), source: T.nilable(String), tax: T.nilable(::Stripe::CustomerService::CreateParams::Tax), tax_exempt: T.nilable(T.any(String, String)), tax_id_data: T.nilable(T::Array[::Stripe::CustomerService::CreateParams::TaxIdDatum]), test_clock: T.nilable(String), validate: T.nilable(T::Boolean)).void
       }
      def initialize(
        address: nil,
        balance: nil,
        cash_balance: nil,
        description: nil,
        email: nil,
        expand: nil,
        invoice_prefix: nil,
        invoice_settings: nil,
        metadata: nil,
        name: nil,
        next_invoice_sequence: nil,
        payment_method: nil,
        phone: nil,
        preferred_locales: nil,
        shipping: nil,
        source: nil,
        tax: nil,
        tax_exempt: nil,
        tax_id_data: nil,
        test_clock: nil,
        validate: nil
      ); end
    end
    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      sig { returns(T.nilable(String)) }
      attr_accessor :page
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for customers](https://stripe.com/docs/search#query-fields-for-customers).
      sig { returns(String) }
      attr_accessor :query
      sig {
        params(expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), page: T.nilable(String), query: String).void
       }
      def initialize(expand: nil, limit: nil, page: nil, query: nil); end
    end
    # Creates a new customer object.
    sig {
      params(params: T.any(::Stripe::CustomerService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Customer)
     }
    def create(params = {}, opts = {}); end

    # Permanently deletes a customer. It cannot be undone. Also immediately cancels any active subscriptions on the customer.
    sig {
      params(customer: String, params: T.any(::Stripe::CustomerService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Customer)
     }
    def delete(customer, params = {}, opts = {}); end

    # Removes the currently applied discount on a customer.
    sig {
      params(customer: String, params: T.any(::Stripe::CustomerService::DeleteDiscountParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Discount)
     }
    def delete_discount(customer, params = {}, opts = {}); end

    # Returns a list of your customers. The customers are returned sorted by creation date, with the most recent customers appearing first.
    sig {
      params(params: T.any(::Stripe::CustomerService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves a Customer object.
    sig {
      params(customer: String, params: T.any(::Stripe::CustomerService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Customer)
     }
    def retrieve(customer, params = {}, opts = {}); end

    # Search for customers you've previously created using Stripe's [Search Query Language](https://docs.stripe.com/docs/search#search-query-language).
    # Don't use search in read-after-write flows where strict consistency is necessary. Under normal operating
    # conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up
    # to an hour behind during outages. Search functionality is not available to merchants in India.
    sig {
      params(params: T.any(::Stripe::CustomerService::SearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SearchResultObject)
     }
    def search(params = {}, opts = {}); end

    # Updates the specified customer by setting the values of the parameters passed. Any parameters not provided will be left unchanged. For example, if you pass the source parameter, that becomes the customer's active source (e.g., a card) to be used for all charges in the future. When you update a customer to a new valid card source by passing the source parameter: for each of the customer's current subscriptions, if the subscription bills automatically and is in the past_due state, then the latest open invoice for the subscription with automatic collection enabled will be retried. This retry will not count as an automatic retry, and will not affect the next regularly scheduled payment for the invoice. Changing the default_source for a customer will not trigger this behavior.
    #
    # This request accepts mostly the same arguments as the customer creation call.
    sig {
      params(customer: String, params: T.any(::Stripe::CustomerService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Customer)
     }
    def update(customer, params = {}, opts = {}); end
  end
end