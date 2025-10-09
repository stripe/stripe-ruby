# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A billing alert is a resource that notifies you when a certain usage threshold on a meter is crossed. For example, you might create a billing alert to notify you when a certain user made 100 API requests.
    class Alert < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "billing.alert"
      def self.object_name
        "billing.alert"
      end

      class CreditBalanceThreshold < ::Stripe::StripeObject
        class Filter < ::Stripe::StripeObject
          # Limit the scope of the alert to this customer ID
          attr_reader :customer
          # Attribute for field type
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Lte < ::Stripe::StripeObject
          class CustomPricingUnit < ::Stripe::StripeObject
            class CustomPricingUnitDetails < ::Stripe::StripeObject
              # Time at which the object was created. Measured in seconds since the Unix epoch.
              attr_reader :created
              # The name of the custom pricing unit.
              attr_reader :display_name
              # Unique identifier for the object.
              attr_reader :id
              # A lookup key for the custom pricing unit.
              attr_reader :lookup_key
              # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              attr_reader :metadata
              # The status of the custom pricing unit.
              attr_reader :status

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The custom pricing unit object.
            attr_reader :custom_pricing_unit_details
            # Unique identifier for the object.
            attr_reader :id
            # A positive decimal string representing the amount.
            attr_reader :value

            def self.inner_class_types
              @inner_class_types = { custom_pricing_unit_details: CustomPricingUnitDetails }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Monetary < ::Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency
            # A positive integer representing the amount.
            attr_reader :value

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The type of this balance. We currently only support `monetary` amounts.
          attr_reader :balance_type
          # The custom pricing unit amount.
          attr_reader :custom_pricing_unit
          # The monetary amount.
          attr_reader :monetary

          def self.inner_class_types
            @inner_class_types = { custom_pricing_unit: CustomPricingUnit, monetary: Monetary }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The filters allow limiting the scope of this credit balance alert. You must specify only a customer filter at this time.
        attr_reader :filters
        # Attribute for field lte
        attr_reader :lte

        def self.inner_class_types
          @inner_class_types = { filters: Filter, lte: Lte }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class UsageThreshold < ::Stripe::StripeObject
        class Filter < ::Stripe::StripeObject
          # Limit the scope of the alert to this customer ID
          attr_reader :customer
          # Attribute for field type
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The filters allow limiting the scope of this usage alert. You can only specify up to one filter at this time.
        attr_reader :filters
        # The value at which this alert will trigger.
        attr_reader :gte
        # The [Billing Meter](/api/billing/meter) ID whose usage is monitored.
        attr_reader :meter
        # Defines how the alert will behave.
        attr_reader :recurrence

        def self.inner_class_types
          @inner_class_types = { filters: Filter }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Defines the type of the alert.
      attr_reader :alert_type
      # Encapsulates configuration of the alert to monitor billing credit balance.
      attr_reader :credit_balance_threshold
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Status of the alert. This can be active, inactive or archived.
      attr_reader :status
      # Title of the alert.
      attr_reader :title
      # Encapsulates configuration of the alert to monitor usage on a specific [Billing Meter](https://stripe.com/docs/api/billing/meter).
      attr_reader :usage_threshold

      # Reactivates this alert, allowing it to trigger again.
      def activate(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/alerts/%<id>s/activate", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Reactivates this alert, allowing it to trigger again.
      def self.activate(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/alerts/%<id>s/activate", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Archives this alert, removing it from the list view and APIs. This is non-reversible.
      def archive(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/alerts/%<id>s/archive", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Archives this alert, removing it from the list view and APIs. This is non-reversible.
      def self.archive(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/alerts/%<id>s/archive", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Creates a billing alert
      def self.create(params = {}, opts = {})
        request_stripe_object(method: :post, path: "/v1/billing/alerts", params: params, opts: opts)
      end

      # Deactivates this alert, preventing it from triggering.
      def deactivate(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/alerts/%<id>s/deactivate", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Deactivates this alert, preventing it from triggering.
      def self.deactivate(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/alerts/%<id>s/deactivate", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Lists billing active and inactive alerts
      def self.list(params = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/billing/alerts", params: params, opts: opts)
      end

      def self.inner_class_types
        @inner_class_types = {
          credit_balance_threshold: CreditBalanceThreshold,
          usage_threshold: UsageThreshold,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
