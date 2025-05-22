# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Products describe the specific goods or services you offer to your customers.
  # For example, you might offer a Standard and Premium version of your goods or service; each version would be a separate Product.
  # They can be used in conjunction with [Prices](https://stripe.com/docs/api#prices) to configure pricing in Payment Links, Checkout, and Subscriptions.
  #
  # Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription),
  # [share a Payment Link](https://stripe.com/docs/payment-links),
  # [accept payments with Checkout](https://stripe.com/docs/payments/accept-a-payment#create-product-prices-upfront),
  # and more about [Products and Prices](https://stripe.com/docs/products-prices/overview)
  class Product < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::NestedResource
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save

    OBJECT_NAME = "product"
    def self.object_name
      "product"
    end

    nested_resource_class_methods :feature, operations: %i[create retrieve delete list]

    class MarketingFeature < Stripe::StripeObject
      # The marketing feature name. Up to 80 characters long.
      attr_reader :name
    end

    class PackageDimensions < Stripe::StripeObject
      # Height, in inches.
      attr_reader :height
      # Length, in inches.
      attr_reader :length
      # Weight, in ounces.
      attr_reader :weight
      # Width, in inches.
      attr_reader :width
    end

    class DeleteParams < Stripe::RequestParams; end

    class UpdateParams < Stripe::RequestParams
      class MarketingFeature < Stripe::RequestParams
        # The marketing feature name. Up to 80 characters long.
        attr_accessor :name

        def initialize(name: nil)
          @name = name
        end
      end

      class PackageDimensions < Stripe::RequestParams
        # Height, in inches. Maximum precision is 2 decimal places.
        attr_accessor :height
        # Length, in inches. Maximum precision is 2 decimal places.
        attr_accessor :length
        # Weight, in ounces. Maximum precision is 2 decimal places.
        attr_accessor :weight
        # Width, in inches. Maximum precision is 2 decimal places.
        attr_accessor :width

        def initialize(height: nil, length: nil, weight: nil, width: nil)
          @height = height
          @length = length
          @weight = weight
          @width = width
        end
      end
      # Whether the product is available for purchase.
      attr_accessor :active
      # The ID of the [Price](https://stripe.com/docs/api/prices) object that is the default price for this product.
      attr_accessor :default_price
      # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
      attr_accessor :images
      # A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://stripe.com/docs/payments/checkout/pricing-table).
      attr_accessor :marketing_features
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The product's name, meant to be displayable to the customer.
      attr_accessor :name
      # The dimensions of this product for shipping purposes.
      attr_accessor :package_dimensions
      # Whether this product is shipped (i.e., physical goods).
      attr_accessor :shippable
      # An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
      #
      # This may be up to 22 characters. The statement description may not include `<`, `>`, `\`, `"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.
      #  It must contain at least one letter. May only be set if `type=service`. Only used for subscription payments.
      attr_accessor :statement_descriptor
      # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
      attr_accessor :tax_code
      # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal. May only be set if `type=service`.
      attr_accessor :unit_label
      # A URL of a publicly-accessible webpage for this product.
      attr_accessor :url

      def initialize(
        active: nil,
        default_price: nil,
        description: nil,
        expand: nil,
        images: nil,
        marketing_features: nil,
        metadata: nil,
        name: nil,
        package_dimensions: nil,
        shippable: nil,
        statement_descriptor: nil,
        tax_code: nil,
        unit_label: nil,
        url: nil
      )
        @active = active
        @default_price = default_price
        @description = description
        @expand = expand
        @images = images
        @marketing_features = marketing_features
        @metadata = metadata
        @name = name
        @package_dimensions = package_dimensions
        @shippable = shippable
        @statement_descriptor = statement_descriptor
        @tax_code = tax_code
        @unit_label = unit_label
        @url = url
      end
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
      # Only return products that are active or inactive (e.g., pass `false` to list all inactive products).
      attr_accessor :active
      # Only return products that were created during the given date interval.
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Only return products with the given IDs. Cannot be used with [starting_after](https://stripe.com/docs/api#list_products-starting_after) or [ending_before](https://stripe.com/docs/api#list_products-ending_before).
      attr_accessor :ids
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Only return products that can be shipped (i.e., physical, not digital products).
      attr_accessor :shippable
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # Only return products of this type.
      attr_accessor :type
      # Only return products with the given url.
      attr_accessor :url

      def initialize(
        active: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        ids: nil,
        limit: nil,
        shippable: nil,
        starting_after: nil,
        type: nil,
        url: nil
      )
        @active = active
        @created = created
        @ending_before = ending_before
        @expand = expand
        @ids = ids
        @limit = limit
        @shippable = shippable
        @starting_after = starting_after
        @type = type
        @url = url
      end
    end

    class CreateParams < Stripe::RequestParams
      class DefaultPriceData < Stripe::RequestParams
        class CurrencyOptions < Stripe::RequestParams
          class CustomUnitAmount < Stripe::RequestParams
            # Pass in `true` to enable `custom_unit_amount`, otherwise omit `custom_unit_amount`.
            attr_accessor :enabled
            # The maximum unit amount the customer can specify for this item.
            attr_accessor :maximum
            # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
            attr_accessor :minimum
            # The starting unit amount which can be updated by the customer.
            attr_accessor :preset

            def initialize(enabled: nil, maximum: nil, minimum: nil, preset: nil)
              @enabled = enabled
              @maximum = maximum
              @minimum = minimum
              @preset = preset
            end
          end

          class Tier < Stripe::RequestParams
            # The flat billing amount for an entire tier, regardless of the number of units in the tier.
            attr_accessor :flat_amount
            # Same as `flat_amount`, but accepts a decimal value representing an integer in the minor units of the currency. Only one of `flat_amount` and `flat_amount_decimal` can be set.
            attr_accessor :flat_amount_decimal
            # The per unit billing amount for each individual unit for which this tier applies.
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            attr_accessor :unit_amount_decimal
            # Specifies the upper bound of this tier. The lower bound of a tier is the upper bound of the previous tier adding one. Use `inf` to define a fallback tier.
            attr_accessor :up_to

            def initialize(
              flat_amount: nil,
              flat_amount_decimal: nil,
              unit_amount: nil,
              unit_amount_decimal: nil,
              up_to: nil
            )
              @flat_amount = flat_amount
              @flat_amount_decimal = flat_amount_decimal
              @unit_amount = unit_amount
              @unit_amount_decimal = unit_amount_decimal
              @up_to = up_to
            end
          end
          # When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
          attr_accessor :custom_unit_amount
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          attr_accessor :tax_behavior
          # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
          attr_accessor :tiers
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          attr_accessor :unit_amount_decimal

          def initialize(
            custom_unit_amount: nil,
            tax_behavior: nil,
            tiers: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          )
            @custom_unit_amount = custom_unit_amount
            @tax_behavior = tax_behavior
            @tiers = tiers
            @unit_amount = unit_amount
            @unit_amount_decimal = unit_amount_decimal
          end
        end

        class CustomUnitAmount < Stripe::RequestParams
          # Pass in `true` to enable `custom_unit_amount`, otherwise omit `custom_unit_amount`.
          attr_accessor :enabled
          # The maximum unit amount the customer can specify for this item.
          attr_accessor :maximum
          # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
          attr_accessor :minimum
          # The starting unit amount which can be updated by the customer.
          attr_accessor :preset

          def initialize(enabled: nil, maximum: nil, minimum: nil, preset: nil)
            @enabled = enabled
            @maximum = maximum
            @minimum = minimum
            @preset = preset
          end
        end

        class Recurring < Stripe::RequestParams
          # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
          attr_accessor :interval
          # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
          attr_accessor :interval_count

          def initialize(interval: nil, interval_count: nil)
            @interval = interval
            @interval_count = interval_count
          end
        end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency_options
        # When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
        attr_accessor :custom_unit_amount
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The recurring components of a price such as `interval` and `interval_count`.
        attr_accessor :recurring
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        attr_accessor :tax_behavior
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge. One of `unit_amount`, `unit_amount_decimal`, or `custom_unit_amount` is required.
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        attr_accessor :unit_amount_decimal

        def initialize(
          currency: nil,
          currency_options: nil,
          custom_unit_amount: nil,
          metadata: nil,
          recurring: nil,
          tax_behavior: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        )
          @currency = currency
          @currency_options = currency_options
          @custom_unit_amount = custom_unit_amount
          @metadata = metadata
          @recurring = recurring
          @tax_behavior = tax_behavior
          @unit_amount = unit_amount
          @unit_amount_decimal = unit_amount_decimal
        end
      end

      class MarketingFeature < Stripe::RequestParams
        # The marketing feature name. Up to 80 characters long.
        attr_accessor :name

        def initialize(name: nil)
          @name = name
        end
      end

      class PackageDimensions < Stripe::RequestParams
        # Height, in inches. Maximum precision is 2 decimal places.
        attr_accessor :height
        # Length, in inches. Maximum precision is 2 decimal places.
        attr_accessor :length
        # Weight, in ounces. Maximum precision is 2 decimal places.
        attr_accessor :weight
        # Width, in inches. Maximum precision is 2 decimal places.
        attr_accessor :width

        def initialize(height: nil, length: nil, weight: nil, width: nil)
          @height = height
          @length = length
          @weight = weight
          @width = width
        end
      end
      # Whether the product is currently available for purchase. Defaults to `true`.
      attr_accessor :active
      # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object. This Price will be set as the default price for this product.
      attr_accessor :default_price_data
      # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # An identifier will be randomly generated by Stripe. You can optionally override this ID, but the ID must be unique across all products in your Stripe account.
      attr_accessor :id
      # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
      attr_accessor :images
      # A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://stripe.com/docs/payments/checkout/pricing-table).
      attr_accessor :marketing_features
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The product's name, meant to be displayable to the customer.
      attr_accessor :name
      # The dimensions of this product for shipping purposes.
      attr_accessor :package_dimensions
      # Whether this product is shipped (i.e., physical goods).
      attr_accessor :shippable
      # An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
      #
      # This may be up to 22 characters. The statement description may not include `<`, `>`, `\`, `"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.
      #  It must contain at least one letter. Only used for subscription payments.
      attr_accessor :statement_descriptor
      # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
      attr_accessor :tax_code
      # The type of the product. Defaults to `service` if not explicitly specified, enabling use of this product with Subscriptions and Plans. Set this parameter to `good` to use this product with Orders and SKUs. On API versions before `2018-02-05`, this field defaults to `good` for compatibility reasons.
      attr_accessor :type
      # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
      attr_accessor :unit_label
      # A URL of a publicly-accessible webpage for this product.
      attr_accessor :url

      def initialize(
        active: nil,
        default_price_data: nil,
        description: nil,
        expand: nil,
        id: nil,
        images: nil,
        marketing_features: nil,
        metadata: nil,
        name: nil,
        package_dimensions: nil,
        shippable: nil,
        statement_descriptor: nil,
        tax_code: nil,
        type: nil,
        unit_label: nil,
        url: nil
      )
        @active = active
        @default_price_data = default_price_data
        @description = description
        @expand = expand
        @id = id
        @images = images
        @marketing_features = marketing_features
        @metadata = metadata
        @name = name
        @package_dimensions = package_dimensions
        @shippable = shippable
        @statement_descriptor = statement_descriptor
        @tax_code = tax_code
        @type = type
        @unit_label = unit_label
        @url = url
      end
    end

    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      attr_accessor :page
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for products](https://stripe.com/docs/search#query-fields-for-products).
      attr_accessor :query

      def initialize(expand: nil, limit: nil, page: nil, query: nil)
        @expand = expand
        @limit = limit
        @page = page
        @query = query
      end
    end
    # Whether the product is currently available for purchase.
    attr_reader :active
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # The ID of the [Price](https://stripe.com/docs/api/prices) object that is the default price for this product.
    attr_reader :default_price
    # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
    attr_reader :description
    # Unique identifier for the object.
    attr_reader :id
    # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
    attr_reader :images
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://stripe.com/docs/payments/checkout/pricing-table).
    attr_reader :marketing_features
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # The product's name, meant to be displayable to the customer.
    attr_reader :name
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The dimensions of this product for shipping purposes.
    attr_reader :package_dimensions
    # Whether this product is shipped (i.e., physical goods).
    attr_reader :shippable
    # Extra information about a product which will appear on your customer's credit card statement. In the case that multiple products are billed at once, the first statement descriptor will be used. Only used for subscription payments.
    attr_reader :statement_descriptor
    # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
    attr_reader :tax_code
    # The type of the product. The product is either of type `good`, which is eligible for use with Orders and SKUs, or `service`, which is eligible for use with Subscriptions and Plans.
    attr_reader :type
    # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
    attr_reader :unit_label
    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    attr_reader :updated
    # A URL of a publicly-accessible webpage for this product.
    attr_reader :url
    # Always true for a deleted object
    attr_reader :deleted

    # Creates a new product object.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/products", params: params, opts: opts)
    end

    # Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with type=good is only possible if it has no SKUs associated with it.
    def self.delete(id, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/products/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with type=good is only possible if it has no SKUs associated with it.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/products/%<id>s", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of your products. The products are returned sorted by creation date, with the most recently created products appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/products", params: params, opts: opts)
    end

    def self.search(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/products/search", params: params, opts: opts)
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end

    # Updates the specific product by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/products/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
