# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This object represents a customer of your business. Use it to [create recurring charges](https://stripe.com/docs/invoicing/customer), [save payment](https://stripe.com/docs/payments/save-during-payment) and contact information,
  # and track payments that belong to the same customer.
  class Customer < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::NestedResource
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save

    OBJECT_NAME = "customer"
    def self.object_name
      "customer"
    end

    nested_resource_class_methods :balance_transaction, operations: %i[create retrieve update list]
    nested_resource_class_methods :cash_balance_transaction, operations: %i[retrieve list]
    nested_resource_class_methods :source, operations: %i[create retrieve update delete list]
    nested_resource_class_methods :tax_id, operations: %i[create retrieve delete list]

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
      # State, county, province, or region.
      attr_reader :state
    end

    class InvoiceSettings < Stripe::StripeObject
      class CustomField < Stripe::StripeObject
        # The name of the custom field.
        attr_reader :name
        # The value of the custom field.
        attr_reader :value
      end

      class RenderingOptions < Stripe::StripeObject
        # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
        attr_reader :amount_tax_display
        # ID of the invoice rendering template to be used for this customer's invoices. If set, the template will be used on all invoices for this customer unless a template is set directly on the invoice.
        attr_reader :template
      end
      # Default custom fields to be displayed on invoices for this customer.
      attr_reader :custom_fields
      # ID of a payment method that's attached to the customer, to be used as the customer's default payment method for subscriptions and invoices.
      attr_reader :default_payment_method
      # Default footer to be displayed on invoices for this customer.
      attr_reader :footer
      # Default options for invoice PDF rendering for this customer.
      attr_reader :rendering_options
    end

    class Shipping < Stripe::StripeObject
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
        # State, county, province, or region.
        attr_reader :state
      end
      # Attribute for field address
      attr_reader :address
      # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
      attr_reader :carrier
      # Recipient name.
      attr_reader :name
      # Recipient phone (including extension).
      attr_reader :phone
      # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
      attr_reader :tracking_number
    end

    class Tax < Stripe::StripeObject
      class Location < Stripe::StripeObject
        # The identified tax country of the customer.
        attr_reader :country
        # The data source used to infer the customer's location.
        attr_reader :source
        # The identified tax state, county, province, or region of the customer.
        attr_reader :state
      end
      # Surfaces if automatic tax computation is possible given the current customer location information.
      attr_reader :automatic_tax
      # A recent IP address of the customer used for tax reporting and tax location inference.
      attr_reader :ip_address
      # The identified tax location of the customer.
      attr_reader :location
    end

    class DeleteParams < Stripe::RequestParams
    end

    class UpdateParams < Stripe::RequestParams
      class Address < Stripe::RequestParams
        # City, district, suburb, town, or village.
        attr_accessor :city
        # A freeform text field for the country. However, in order to activate some tax features, the format should be a two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_accessor :country
        # Address line 1 (e.g., street, PO Box, or company name).
        attr_accessor :line1
        # Address line 2 (e.g., apartment, suite, unit, or building).
        attr_accessor :line2
        # ZIP or postal code.
        attr_accessor :postal_code
        # State, county, province, or region.
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

      class CashBalance < Stripe::RequestParams
        class Settings < Stripe::RequestParams
          # Controls how funds transferred by the customer are applied to payment intents and invoices. Valid options are `automatic`, `manual`, or `merchant_default`. For more information about these reconciliation modes, see [Reconciliation](https://stripe.com/docs/payments/customer-balance/reconciliation).
          attr_accessor :reconciliation_mode

          def initialize(reconciliation_mode: nil)
            @reconciliation_mode = reconciliation_mode
          end
        end
        # Settings controlling the behavior of the customer's cash balance,
        # such as reconciliation of funds received.
        attr_accessor :settings

        def initialize(settings: nil)
          @settings = settings
        end
      end

      class InvoiceSettings < Stripe::RequestParams
        class CustomField < Stripe::RequestParams
          # The name of the custom field. This may be up to 40 characters.
          attr_accessor :name
          # The value of the custom field. This may be up to 140 characters.
          attr_accessor :value

          def initialize(name: nil, value: nil)
            @name = name
            @value = value
          end
        end

        class RenderingOptions < Stripe::RequestParams
          # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of `exclude_tax` or `include_inclusive_tax`. `include_inclusive_tax` will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. `exclude_tax` will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
          attr_accessor :amount_tax_display
          # ID of the invoice rendering template to use for future invoices.
          attr_accessor :template

          def initialize(amount_tax_display: nil, template: nil)
            @amount_tax_display = amount_tax_display
            @template = template
          end
        end
        # The list of up to 4 default custom fields to be displayed on invoices for this customer. When updating, pass an empty string to remove previously-defined fields.
        attr_accessor :custom_fields
        # ID of a payment method that's attached to the customer, to be used as the customer's default payment method for subscriptions and invoices.
        attr_accessor :default_payment_method
        # Default footer to be displayed on invoices for this customer.
        attr_accessor :footer
        # Default options for invoice PDF rendering for this customer.
        attr_accessor :rendering_options

        def initialize(
          custom_fields: nil,
          default_payment_method: nil,
          footer: nil,
          rendering_options: nil
        )
          @custom_fields = custom_fields
          @default_payment_method = default_payment_method
          @footer = footer
          @rendering_options = rendering_options
        end
      end

      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # A freeform text field for the country. However, in order to activate some tax features, the format should be a two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
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
        # Customer shipping address.
        attr_accessor :address
        # Customer name.
        attr_accessor :name
        # Customer phone (including extension).
        attr_accessor :phone

        def initialize(address: nil, name: nil, phone: nil)
          @address = address
          @name = name
          @phone = phone
        end
      end

      class Tax < Stripe::RequestParams
        # A recent IP address of the customer used for tax reporting and tax location inference. Stripe recommends updating the IP address when a new PaymentMethod is attached or the address field on the customer is updated. We recommend against updating this field more frequently since it could result in unexpected tax location/reporting outcomes.
        attr_accessor :ip_address
        # A flag that indicates when Stripe should validate the customer tax location. Defaults to `auto`.
        attr_accessor :validate_location

        def initialize(ip_address: nil, validate_location: nil)
          @ip_address = ip_address
          @validate_location = validate_location
        end
      end
      # The customer's address.
      attr_accessor :address
      # An integer amount in cents (or local equivalent) that represents the customer's current balance, which affect the customer's future invoices. A negative amount represents a credit that decreases the amount due on an invoice; a positive amount increases the amount due on an invoice.
      attr_accessor :balance
      # Balance information and default balance settings for this customer.
      attr_accessor :cash_balance
      # If you are using payment methods created via the PaymentMethods API, see the [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/update#update_customer-invoice_settings-default_payment_method) parameter.
      #
      # Provide the ID of a payment source already attached to this customer to make it this customer's default payment source.
      #
      # If you want to add a new payment source and make it the default, see the [source](https://stripe.com/docs/api/customers/update#update_customer-source) property.
      attr_accessor :default_source
      # An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard.
      attr_accessor :description
      # Customer's email address. It's displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to *512 characters*.
      attr_accessor :email
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
      attr_accessor :invoice_prefix
      # Default invoice settings for this customer.
      attr_accessor :invoice_settings
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The customer's full name or business name.
      attr_accessor :name
      # The sequence to be used on the customer's next invoice. Defaults to 1.
      attr_accessor :next_invoice_sequence
      # The customer's phone number.
      attr_accessor :phone
      # Customer's preferred languages, ordered by preference.
      attr_accessor :preferred_locales
      # The customer's shipping information. Appears on invoices emailed to this customer.
      attr_accessor :shipping
      # Attribute for param field source
      attr_accessor :source
      # Tax details about the customer.
      attr_accessor :tax
      # The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
      attr_accessor :tax_exempt
      # Attribute for param field validate
      attr_accessor :validate

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
      )
        @address = address
        @balance = balance
        @cash_balance = cash_balance
        @default_source = default_source
        @description = description
        @email = email
        @expand = expand
        @invoice_prefix = invoice_prefix
        @invoice_settings = invoice_settings
        @metadata = metadata
        @name = name
        @next_invoice_sequence = next_invoice_sequence
        @phone = phone
        @preferred_locales = preferred_locales
        @shipping = shipping
        @source = source
        @tax = tax
        @tax_exempt = tax_exempt
        @validate = validate
      end
    end

    class DeleteDiscountParams < Stripe::RequestParams
    end

    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # Only return customers that were created during the given date interval.
      attr_accessor :created
      # A case-sensitive filter on the list based on the customer's `email` field. The value must be a string.
      attr_accessor :email
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # Provides a list of customers that are associated with the specified test clock. The response will not include customers with test clocks if this parameter is not set.
      attr_accessor :test_clock

      def initialize(
        created: nil,
        email: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        test_clock: nil
      )
        @created = created
        @email = email
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
        @test_clock = test_clock
      end
    end

    class CreateParams < Stripe::RequestParams
      class Address < Stripe::RequestParams
        # City, district, suburb, town, or village.
        attr_accessor :city
        # A freeform text field for the country. However, in order to activate some tax features, the format should be a two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_accessor :country
        # Address line 1 (e.g., street, PO Box, or company name).
        attr_accessor :line1
        # Address line 2 (e.g., apartment, suite, unit, or building).
        attr_accessor :line2
        # ZIP or postal code.
        attr_accessor :postal_code
        # State, county, province, or region.
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

      class CashBalance < Stripe::RequestParams
        class Settings < Stripe::RequestParams
          # Controls how funds transferred by the customer are applied to payment intents and invoices. Valid options are `automatic`, `manual`, or `merchant_default`. For more information about these reconciliation modes, see [Reconciliation](https://stripe.com/docs/payments/customer-balance/reconciliation).
          attr_accessor :reconciliation_mode

          def initialize(reconciliation_mode: nil)
            @reconciliation_mode = reconciliation_mode
          end
        end
        # Settings controlling the behavior of the customer's cash balance,
        # such as reconciliation of funds received.
        attr_accessor :settings

        def initialize(settings: nil)
          @settings = settings
        end
      end

      class InvoiceSettings < Stripe::RequestParams
        class CustomField < Stripe::RequestParams
          # The name of the custom field. This may be up to 40 characters.
          attr_accessor :name
          # The value of the custom field. This may be up to 140 characters.
          attr_accessor :value

          def initialize(name: nil, value: nil)
            @name = name
            @value = value
          end
        end

        class RenderingOptions < Stripe::RequestParams
          # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of `exclude_tax` or `include_inclusive_tax`. `include_inclusive_tax` will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. `exclude_tax` will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
          attr_accessor :amount_tax_display
          # ID of the invoice rendering template to use for future invoices.
          attr_accessor :template

          def initialize(amount_tax_display: nil, template: nil)
            @amount_tax_display = amount_tax_display
            @template = template
          end
        end
        # The list of up to 4 default custom fields to be displayed on invoices for this customer. When updating, pass an empty string to remove previously-defined fields.
        attr_accessor :custom_fields
        # ID of a payment method that's attached to the customer, to be used as the customer's default payment method for subscriptions and invoices.
        attr_accessor :default_payment_method
        # Default footer to be displayed on invoices for this customer.
        attr_accessor :footer
        # Default options for invoice PDF rendering for this customer.
        attr_accessor :rendering_options

        def initialize(
          custom_fields: nil,
          default_payment_method: nil,
          footer: nil,
          rendering_options: nil
        )
          @custom_fields = custom_fields
          @default_payment_method = default_payment_method
          @footer = footer
          @rendering_options = rendering_options
        end
      end

      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # A freeform text field for the country. However, in order to activate some tax features, the format should be a two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
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
        # Customer shipping address.
        attr_accessor :address
        # Customer name.
        attr_accessor :name
        # Customer phone (including extension).
        attr_accessor :phone

        def initialize(address: nil, name: nil, phone: nil)
          @address = address
          @name = name
          @phone = phone
        end
      end

      class Tax < Stripe::RequestParams
        # A recent IP address of the customer used for tax reporting and tax location inference. Stripe recommends updating the IP address when a new PaymentMethod is attached or the address field on the customer is updated. We recommend against updating this field more frequently since it could result in unexpected tax location/reporting outcomes.
        attr_accessor :ip_address
        # A flag that indicates when Stripe should validate the customer tax location. Defaults to `deferred`.
        attr_accessor :validate_location

        def initialize(ip_address: nil, validate_location: nil)
          @ip_address = ip_address
          @validate_location = validate_location
        end
      end

      class TaxIdDatum < Stripe::RequestParams
        # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `aw_tin`, `az_tin`, `ba_tin`, `bb_tin`, `bd_bin`, `bf_ifu`, `bg_uic`, `bh_vat`, `bj_ifu`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cm_niu`, `cn_tin`, `co_nit`, `cr_tin`, `cv_nif`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `et_tin`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kg_tin`, `kh_tin`, `kr_brn`, `kz_bin`, `la_tin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
        attr_accessor :type
        # Value of the tax ID.
        attr_accessor :value

        def initialize(type: nil, value: nil)
          @type = type
          @value = value
        end
      end
      # The customer's address.
      attr_accessor :address
      # An integer amount in cents (or local equivalent) that represents the customer's current balance, which affect the customer's future invoices. A negative amount represents a credit that decreases the amount due on an invoice; a positive amount increases the amount due on an invoice.
      attr_accessor :balance
      # Balance information and default balance settings for this customer.
      attr_accessor :cash_balance
      # An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard.
      attr_accessor :description
      # Customer's email address. It's displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to *512 characters*.
      attr_accessor :email
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
      attr_accessor :invoice_prefix
      # Default invoice settings for this customer.
      attr_accessor :invoice_settings
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The customer's full name or business name.
      attr_accessor :name
      # The sequence to be used on the customer's next invoice. Defaults to 1.
      attr_accessor :next_invoice_sequence
      # Attribute for param field payment_method
      attr_accessor :payment_method
      # The customer's phone number.
      attr_accessor :phone
      # Customer's preferred languages, ordered by preference.
      attr_accessor :preferred_locales
      # The customer's shipping information. Appears on invoices emailed to this customer.
      attr_accessor :shipping
      # Attribute for param field source
      attr_accessor :source
      # Tax details about the customer.
      attr_accessor :tax
      # The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
      attr_accessor :tax_exempt
      # The customer's tax IDs.
      attr_accessor :tax_id_data
      # ID of the test clock to attach to the customer.
      attr_accessor :test_clock
      # Attribute for param field validate
      attr_accessor :validate

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
      )
        @address = address
        @balance = balance
        @cash_balance = cash_balance
        @description = description
        @email = email
        @expand = expand
        @invoice_prefix = invoice_prefix
        @invoice_settings = invoice_settings
        @metadata = metadata
        @name = name
        @next_invoice_sequence = next_invoice_sequence
        @payment_method = payment_method
        @phone = phone
        @preferred_locales = preferred_locales
        @shipping = shipping
        @source = source
        @tax = tax
        @tax_exempt = tax_exempt
        @tax_id_data = tax_id_data
        @test_clock = test_clock
        @validate = validate
      end
    end

    class ListPaymentMethodsParams < Stripe::RequestParams
      # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow.
      attr_accessor :allow_redisplay
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # An optional filter on the list, based on the object `type` field. Without the filter, the list includes all current and future payment method types. If your integration expects only one type of payment method in the response, make sure to provide a type value in the request.
      attr_accessor :type

      def initialize(
        allow_redisplay: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        type: nil
      )
        @allow_redisplay = allow_redisplay
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
        @type = type
      end
    end

    class RetrievePaymentMethodParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      attr_accessor :page
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for customers](https://stripe.com/docs/search#query-fields-for-customers).
      attr_accessor :query

      def initialize(expand: nil, limit: nil, page: nil, query: nil)
        @expand = expand
        @limit = limit
        @page = page
        @query = query
      end
    end

    class CreateFundingInstructionsParams < Stripe::RequestParams
      class BankTransfer < Stripe::RequestParams
        class EuBankTransfer < Stripe::RequestParams
          # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
          attr_accessor :country

          def initialize(country: nil)
            @country = country
          end
        end
        # Configuration for eu_bank_transfer funding type.
        attr_accessor :eu_bank_transfer
        # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
        #
        # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
        attr_accessor :requested_address_types
        # The type of the `bank_transfer`
        attr_accessor :type

        def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil)
          @eu_bank_transfer = eu_bank_transfer
          @requested_address_types = requested_address_types
          @type = type
        end
      end
      # Additional parameters for `bank_transfer` funding types
      attr_accessor :bank_transfer
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The `funding_type` to get the instructions for.
      attr_accessor :funding_type

      def initialize(bank_transfer: nil, currency: nil, expand: nil, funding_type: nil)
        @bank_transfer = bank_transfer
        @currency = currency
        @expand = expand
        @funding_type = funding_type
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class FundCashBalanceParams < Stripe::RequestParams
      # Amount to be used for this test cash balance transaction. A positive integer representing how much to fund in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to fund $1.00 or 100 to fund ¥100, a zero-decimal currency).
      attr_accessor :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A description of the test funding. This simulates free-text references supplied by customers when making bank transfers to their cash balance. You can use this to test how Stripe's [reconciliation algorithm](https://stripe.com/docs/payments/customer-balance/reconciliation) applies to different user inputs.
      attr_accessor :reference

      def initialize(amount: nil, currency: nil, expand: nil, reference: nil)
        @amount = amount
        @currency = currency
        @expand = expand
        @reference = reference
      end
    end
    # The customer's address.
    attr_reader :address
    # The current balance, if any, that's stored on the customer. If negative, the customer has credit to apply to their next invoice. If positive, the customer has an amount owed that's added to their next invoice. The balance only considers amounts that Stripe hasn't successfully applied to any invoice. It doesn't reflect unpaid invoices. This balance is only taken into account after invoices finalize.
    attr_reader :balance
    # The current funds being held by Stripe on behalf of the customer. You can apply these funds towards payment intents when the source is "cash_balance". The `settings[reconciliation_mode]` field describes if these funds apply to these payment intents manually or automatically.
    attr_reader :cash_balance
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) the customer can be charged in for recurring billing purposes.
    attr_reader :currency
    # ID of the default payment source for the customer.
    #
    # If you use payment methods created through the PaymentMethods API, see the [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) field instead.
    attr_reader :default_source
    # Tracks the most recent state change on any invoice belonging to the customer. Paying an invoice or marking it uncollectible via the API will set this field to false. An automatic payment failure or passing the `invoice.due_date` will set this field to `true`.
    #
    # If an invoice becomes uncollectible by [dunning](https://stripe.com/docs/billing/automatic-collection), `delinquent` doesn't reset to `false`.
    #
    # If you care whether the customer has paid their most recent subscription invoice, use `subscription.status` instead. Paying or marking uncollectible any customer invoice regardless of whether it is the latest invoice for a subscription will always set this field to `false`.
    attr_reader :delinquent
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # Describes the current discount active on the customer, if there is one.
    attr_reader :discount
    # The customer's email address.
    attr_reader :email
    # Unique identifier for the object.
    attr_reader :id
    # The current multi-currency balances, if any, that's stored on the customer. If positive in a currency, the customer has a credit to apply to their next invoice denominated in that currency. If negative, the customer has an amount owed that's added to their next invoice denominated in that currency. These balances don't apply to unpaid invoices. They solely track amounts that Stripe hasn't successfully applied to any invoice. Stripe only applies a balance in a specific currency to an invoice after that invoice (which is in the same currency) finalizes.
    attr_reader :invoice_credit_balance
    # The prefix for the customer used to generate unique invoice numbers.
    attr_reader :invoice_prefix
    # Attribute for field invoice_settings
    attr_reader :invoice_settings
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # The customer's full name or business name.
    attr_reader :name
    # The suffix of the customer's next invoice number (for example, 0001). When the account uses account level sequencing, this parameter is ignored in API requests and the field omitted in API responses.
    attr_reader :next_invoice_sequence
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The customer's phone number.
    attr_reader :phone
    # The customer's preferred locales (languages), ordered by preference.
    attr_reader :preferred_locales
    # Mailing and shipping address for the customer. Appears on invoices emailed to this customer.
    attr_reader :shipping
    # The customer's payment sources, if any.
    attr_reader :sources
    # The customer's current subscriptions, if any.
    attr_reader :subscriptions
    # Attribute for field tax
    attr_reader :tax
    # Describes the customer's tax exemption status, which is `none`, `exempt`, or `reverse`. When set to `reverse`, invoice and receipt PDFs include the following text: **"Reverse charge"**.
    attr_reader :tax_exempt
    # The customer's tax IDs.
    attr_reader :tax_ids
    # ID of the test clock that this customer belongs to.
    attr_reader :test_clock
    # Always true for a deleted object
    attr_reader :deleted

    # Creates a new customer object.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/customers", params: params, opts: opts)
    end

    # Retrieve funding instructions for a customer cash balance. If funding instructions do not yet exist for the customer, new
    # funding instructions will be created. If funding instructions have already been created for a given customer, the same
    # funding instructions will be retrieved. In other words, we will return the same funding instructions each time.
    def create_funding_instructions(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/customers/%<customer>s/funding_instructions", { customer: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Retrieve funding instructions for a customer cash balance. If funding instructions do not yet exist for the customer, new
    # funding instructions will be created. If funding instructions have already been created for a given customer, the same
    # funding instructions will be retrieved. In other words, we will return the same funding instructions each time.
    def self.create_funding_instructions(customer, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/customers/%<customer>s/funding_instructions", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    # Permanently deletes a customer. It cannot be undone. Also immediately cancels any active subscriptions on the customer.
    def self.delete(customer, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/customers/%<customer>s", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    # Permanently deletes a customer. It cannot be undone. Also immediately cancels any active subscriptions on the customer.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/customers/%<customer>s", { customer: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Removes the currently applied discount on a customer.
    def delete_discount(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/customers/%<customer>s/discount", { customer: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Removes the currently applied discount on a customer.
    def self.delete_discount(customer, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/customers/%<customer>s/discount", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of your customers. The customers are returned sorted by creation date, with the most recent customers appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/customers", params: params, opts: opts)
    end

    # Returns a list of PaymentMethods for a given Customer
    def list_payment_methods(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/payment_methods", { customer: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of PaymentMethods for a given Customer
    def self.list_payment_methods(customer, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/payment_methods", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    # Retrieves a customer's cash balance.
    def self.retrieve_cash_balance(customer, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/cash_balance", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    # Retrieves a PaymentMethod object for a given Customer.
    def retrieve_payment_method(payment_method, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/payment_methods/%<payment_method>s", { customer: CGI.escape(self["id"]), payment_method: CGI.escape(payment_method) }),
        params: params,
        opts: opts
      )
    end

    # Retrieves a PaymentMethod object for a given Customer.
    def self.retrieve_payment_method(customer, payment_method, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/payment_methods/%<payment_method>s", { customer: CGI.escape(customer), payment_method: CGI.escape(payment_method) }),
        params: params,
        opts: opts
      )
    end

    def self.search(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/customers/search", params: params, opts: opts)
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end

    # Updates the specified customer by setting the values of the parameters passed. Any parameters not provided will be left unchanged. For example, if you pass the source parameter, that becomes the customer's active source (e.g., a card) to be used for all charges in the future. When you update a customer to a new valid card source by passing the source parameter: for each of the customer's current subscriptions, if the subscription bills automatically and is in the past_due state, then the latest open invoice for the subscription with automatic collection enabled will be retried. This retry will not count as an automatic retry, and will not affect the next regularly scheduled payment for the invoice. Changing the default_source for a customer will not trigger this behavior.
    #
    # This request accepts mostly the same arguments as the customer creation call.
    def self.update(customer, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/customers/%<customer>s", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    # Changes the settings on a customer's cash balance.
    def self.update_cash_balance(customer, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/customers/%<customer>s/cash_balance", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    save_nested_resource :source

    # The API request for deleting a card or bank account and for detaching a
    # source object are the same.
    class << self
      alias detach_source delete_source
    end

    def test_helpers
      TestHelpers.new(self)
    end

    class TestHelpers < APIResourceTestHelpers
      RESOURCE_CLASS = Customer
      def self.resource_class
        "Customer"
      end

      # Create an incoming testmode bank transfer
      def self.fund_cash_balance(customer, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/test_helpers/customers/%<customer>s/fund_cash_balance", { customer: CGI.escape(customer) }),
          params: params,
          opts: opts
        )
      end

      # Create an incoming testmode bank transfer
      def fund_cash_balance(params = {}, opts = {})
        @resource.request_stripe_object(
          method: :post,
          path: format("/v1/test_helpers/customers/%<customer>s/fund_cash_balance", { customer: CGI.escape(@resource["id"]) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
