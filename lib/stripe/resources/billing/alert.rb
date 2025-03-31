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

      class UsageThreshold < Stripe::StripeObject
        class Filter < Stripe::StripeObject
          # Limit the scope of the alert to this customer ID
          attr_reader :customer
          # Attribute for field type
          attr_reader :type
        end
        # The filters allow limiting the scope of this usage alert. You can only specify up to one filter at this time.
        attr_reader :filters
        # The value at which this alert will trigger.
        attr_reader :gte
        # The [Billing Meter](/api/billing/meter) ID whose usage is monitored.
        attr_reader :meter
        # Defines how the alert will behave.
        attr_reader :recurrence
      end

      class ListParams < Stripe::RequestParams
        # Filter results to only include this type of alert.
        attr_accessor :alert_type
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # Filter results to only include alerts with the given meter.
        attr_accessor :meter
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(
          alert_type: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          meter: nil,
          starting_after: nil
        )
          @alert_type = alert_type
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @meter = meter
          @starting_after = starting_after
        end
      end

      class CreateParams < Stripe::RequestParams
        class UsageThreshold < Stripe::RequestParams
          class Filter < Stripe::RequestParams
            # Limit the scope to this usage alert only to this customer.
            attr_accessor :customer
            # What type of filter is being applied to this usage alert.
            attr_accessor :type

            def initialize(customer: nil, type: nil)
              @customer = customer
              @type = type
            end
          end
          # The filters allows limiting the scope of this usage alert. You can only specify up to one filter at this time.
          attr_accessor :filters
          # Defines at which value the alert will fire.
          attr_accessor :gte
          # The [Billing Meter](/api/billing/meter) ID whose usage is monitored.
          attr_accessor :meter
          # Whether the alert should only fire only once, or once per billing cycle.
          attr_accessor :recurrence

          def initialize(filters: nil, gte: nil, meter: nil, recurrence: nil)
            @filters = filters
            @gte = gte
            @meter = meter
            @recurrence = recurrence
          end
        end
        # The type of alert to create.
        attr_accessor :alert_type
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The title of the alert.
        attr_accessor :title
        # The configuration of the usage threshold.
        attr_accessor :usage_threshold

        def initialize(alert_type: nil, expand: nil, title: nil, usage_threshold: nil)
          @alert_type = alert_type
          @expand = expand
          @title = title
          @usage_threshold = usage_threshold
        end
      end

      class ActivateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class ArchiveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class DeactivateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end
      # Defines the type of the alert.
      attr_reader :alert_type
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
    end
  end
end
