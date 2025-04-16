# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    class MeterService < StripeService
      attr_reader :event_summaries

      def initialize(requestor)
        super
        @event_summaries = Stripe::Billing::MeterEventSummaryService.new(@requestor)
      end

      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Filter results to only include meters with the given status.
        attr_accessor :status

        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        )
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
          @status = status
        end
      end

      class CreateParams < Stripe::RequestParams
        class CustomerMapping < Stripe::RequestParams
          # The key in the meter event payload to use for mapping the event to a customer.
          attr_accessor :event_payload_key
          # The method for mapping a meter event to a customer. Must be `by_id`.
          attr_accessor :type

          def initialize(event_payload_key: nil, type: nil)
            @event_payload_key = event_payload_key
            @type = type
          end
        end

        class DefaultAggregation < Stripe::RequestParams
          # Specifies how events are aggregated. Allowed values are `count` to count the number of events, `sum` to sum each event's value and `last` to take the last event's value in the window.
          attr_accessor :formula

          def initialize(formula: nil)
            @formula = formula
          end
        end

        class ValueSettings < Stripe::RequestParams
          # The key in the usage event payload to use as the value for this meter. For example, if the event payload contains usage on a `bytes_used` field, then set the event_payload_key to "bytes_used".
          attr_accessor :event_payload_key

          def initialize(event_payload_key: nil)
            @event_payload_key = event_payload_key
          end
        end
        # Fields that specify how to map a meter event to a customer.
        attr_accessor :customer_mapping
        # The default settings to aggregate a meter's events with.
        attr_accessor :default_aggregation
        # The meter’s name. Not visible to the customer.
        attr_accessor :display_name
        # The name of the meter event to record usage for. Corresponds with the `event_name` field on meter events.
        attr_accessor :event_name
        # The time window to pre-aggregate meter events for, if any.
        attr_accessor :event_time_window
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Fields that specify how to calculate a meter event's value.
        attr_accessor :value_settings

        def initialize(
          customer_mapping: nil,
          default_aggregation: nil,
          display_name: nil,
          event_name: nil,
          event_time_window: nil,
          expand: nil,
          value_settings: nil
        )
          @customer_mapping = customer_mapping
          @default_aggregation = default_aggregation
          @display_name = display_name
          @event_name = event_name
          @event_time_window = event_time_window
          @expand = expand
          @value_settings = value_settings
        end
      end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class UpdateParams < Stripe::RequestParams
        # The meter’s name. Not visible to the customer.
        attr_accessor :display_name
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(display_name: nil, expand: nil)
          @display_name = display_name
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

      class ReactivateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      # Creates a billing meter.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/billing/meters",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # When a meter is deactivated, no more meter events will be accepted for this meter. You can't attach a deactivated meter to a price.
      def deactivate(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/billing/meters/%<id>s/deactivate", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieve a list of billing meters.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/billing/meters",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # When a meter is reactivated, events for this meter can be accepted and you can attach the meter to a price.
      def reactivate(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/billing/meters/%<id>s/reactivate", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a billing meter given an ID.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/billing/meters/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates a billing meter.
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/billing/meters/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
