# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A credit grant is an API resource that documents the allocation of some billing credits to a customer.
    #
    # Related guide: [Billing credits](https://docs.stripe.com/billing/subscriptions/usage-based/billing-credits)
    class CreditGrant < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "billing.credit_grant"
      def self.object_name
        "billing.credit_grant"
      end

      class Amount < Stripe::StripeObject
        class Monetary < Stripe::StripeObject
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_reader :currency
          # A positive integer representing the amount.
          attr_reader :value
        end
        # The monetary amount.
        attr_reader :monetary
        # The type of this amount. We currently only support `monetary` billing credits.
        attr_reader :type
      end

      class ApplicabilityConfig < Stripe::StripeObject
        class Scope < Stripe::StripeObject
          class Price < Stripe::StripeObject
            # Unique identifier for the object.
            attr_reader :id
          end
          # The price type that credit grants can apply to. We currently only support the `metered` price type. This refers to prices that have a [Billing Meter](https://docs.stripe.com/api/billing/meter) attached to them. Cannot be used in combination with `prices`.
          attr_reader :price_type
          # The prices that credit grants can apply to. We currently only support `metered` prices. This refers to prices that have a [Billing Meter](https://docs.stripe.com/api/billing/meter) attached to them. Cannot be used in combination with `price_type`.
          attr_reader :prices
        end
        # Attribute for field scope
        attr_reader :scope
      end

      class ListParams < Stripe::RequestParams
        # Only return credit grants for this customer.
        attr_accessor :customer
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(
          customer: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil
        )
          @customer = customer
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end

      class CreateParams < Stripe::RequestParams
        class Amount < Stripe::RequestParams
          class Monetary < Stripe::RequestParams
            # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the `value` parameter.
            attr_accessor :currency
            # A positive integer representing the amount of the credit grant.
            attr_accessor :value

            def initialize(currency: nil, value: nil)
              @currency = currency
              @value = value
            end
          end
          # The monetary amount.
          attr_accessor :monetary
          # Specify the type of this amount. We currently only support `monetary` billing credits.
          attr_accessor :type

          def initialize(monetary: nil, type: nil)
            @monetary = monetary
            @type = type
          end
        end

        class ApplicabilityConfig < Stripe::RequestParams
          class Scope < Stripe::RequestParams
            class Price < Stripe::RequestParams
              # The price ID this credit grant should apply to.
              attr_accessor :id

              def initialize(id: nil)
                @id = id
              end
            end
            # The price type that credit grants can apply to. We currently only support the `metered` price type. Cannot be used in combination with `prices`.
            attr_accessor :price_type
            # A list of prices that the credit grant can apply to. We currently only support the `metered` prices. Cannot be used in combination with `price_type`.
            attr_accessor :prices

            def initialize(price_type: nil, prices: nil)
              @price_type = price_type
              @prices = prices
            end
          end
          # Specify the scope of this applicability config.
          attr_accessor :scope

          def initialize(scope: nil)
            @scope = scope
          end
        end
        # Amount of this credit grant.
        attr_accessor :amount
        # Configuration specifying what this credit grant applies to. We currently only support `metered` prices that have a [Billing Meter](https://docs.stripe.com/api/billing/meter) attached to them.
        attr_accessor :applicability_config
        # The category of this credit grant.
        attr_accessor :category
        # ID of the customer to receive the billing credits.
        attr_accessor :customer
        # The time when the billing credits become effective-when they're eligible for use. It defaults to the current timestamp if not specified.
        attr_accessor :effective_at
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The time when the billing credits expire. If not specified, the billing credits don't expire.
        attr_accessor :expires_at
        # Set of key-value pairs that you can attach to an object. You can use this to store additional information about the object (for example, cost basis) in a structured format.
        attr_accessor :metadata
        # A descriptive name shown in the Dashboard.
        attr_accessor :name
        # The desired priority for applying this credit grant. If not specified, it will be set to the default value of 50. The highest priority is 0 and the lowest is 100.
        attr_accessor :priority

        def initialize(
          amount: nil,
          applicability_config: nil,
          category: nil,
          customer: nil,
          effective_at: nil,
          expand: nil,
          expires_at: nil,
          metadata: nil,
          name: nil,
          priority: nil
        )
          @amount = amount
          @applicability_config = applicability_config
          @category = category
          @customer = customer
          @effective_at = effective_at
          @expand = expand
          @expires_at = expires_at
          @metadata = metadata
          @name = name
          @priority = priority
        end
      end

      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The time when the billing credits created by this credit grant expire. If set to empty, the billing credits never expire.
        attr_accessor :expires_at
        # Set of key-value pairs you can attach to an object. You can use this to store additional information about the object (for example, cost basis) in a structured format.
        attr_accessor :metadata

        def initialize(expand: nil, expires_at: nil, metadata: nil)
          @expand = expand
          @expires_at = expires_at
          @metadata = metadata
        end
      end

      class ExpireParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class VoidGrantParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end
      # Attribute for field amount
      attr_reader :amount
      # Attribute for field applicability_config
      attr_reader :applicability_config
      # The category of this credit grant. This is for tracking purposes and isn't displayed to the customer.
      attr_reader :category
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # ID of the customer receiving the billing credits.
      attr_reader :customer
      # The time when the billing credits become effective-when they're eligible for use.
      attr_reader :effective_at
      # The time when the billing credits expire. If not present, the billing credits don't expire.
      attr_reader :expires_at
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # A descriptive name shown in dashboard.
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The priority for applying this credit grant. The highest priority is 0 and the lowest is 100.
      attr_reader :priority
      # ID of the test clock this credit grant belongs to.
      attr_reader :test_clock
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      attr_reader :updated
      # The time when this credit grant was voided. If not present, the credit grant hasn't been voided.
      attr_reader :voided_at

      # Creates a credit grant.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/billing/credit_grants",
          params: params,
          opts: opts
        )
      end

      # Expires a credit grant.
      def expire(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s/expire", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Expires a credit grant.
      def self.expire(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s/expire", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Retrieve a list of credit grants.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/billing/credit_grants",
          params: params,
          opts: opts
        )
      end

      # Updates a credit grant.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Voids a credit grant.
      def void_grant(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s/void", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Voids a credit grant.
      def self.void_grant(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s/void", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
