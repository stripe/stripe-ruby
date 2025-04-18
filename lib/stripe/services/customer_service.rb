# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerService < StripeService
    attr_reader :cash_balance, :balance_transactions, :cash_balance_transactions, :payment_sources, :tax_ids, :payment_methods, :funding_instructions

    def initialize(requestor)
      super
      @cash_balance = Stripe::CustomerCashBalanceService.new(@requestor)
      @balance_transactions = Stripe::CustomerBalanceTransactionService.new(@requestor)
      @cash_balance_transactions = Stripe::CustomerCashBalanceTransactionService.new(@requestor)
      @payment_sources = Stripe::CustomerPaymentSourceService.new(@requestor)
      @tax_ids = Stripe::CustomerTaxIdService.new(@requestor)
      @payment_methods = Stripe::CustomerPaymentMethodService.new(@requestor)
      @funding_instructions = Stripe::CustomerFundingInstructionsService.new(@requestor)
    end

    class DeleteParams < Stripe::RequestParams
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
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

    # Creates a new customer object.
    def create(params = {}, opts = {})
      request(method: :post, path: "/v1/customers", params: params, opts: opts, base_address: :api)
    end

    # Permanently deletes a customer. It cannot be undone. Also immediately cancels any active subscriptions on the customer.
    def delete(customer, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/customers/%<customer>s", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Removes the currently applied discount on a customer.
    def delete_discount(customer, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/customers/%<customer>s/discount", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of your customers. The customers are returned sorted by creation date, with the most recent customers appearing first.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/customers", params: params, opts: opts, base_address: :api)
    end

    # Retrieves a Customer object.
    def retrieve(customer, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer>s", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Search for customers you've previously created using Stripe's [Search Query Language](https://stripe.com/docs/search#search-query-language).
    # Don't use search in read-after-write flows where strict consistency is necessary. Under normal operating
    # conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up
    # to an hour behind during outages. Search functionality is not available to merchants in India.
    def search(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/customers/search",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the specified customer by setting the values of the parameters passed. Any parameters not provided will be left unchanged. For example, if you pass the source parameter, that becomes the customer's active source (e.g., a card) to be used for all charges in the future. When you update a customer to a new valid card source by passing the source parameter: for each of the customer's current subscriptions, if the subscription bills automatically and is in the past_due state, then the latest open invoice for the subscription with automatic collection enabled will be retried. This retry will not count as an automatic retry, and will not affect the next regularly scheduled payment for the invoice. Changing the default_source for a customer will not trigger this behavior.
    #
    # This request accepts mostly the same arguments as the customer creation call.
    def update(customer, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<customer>s", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
