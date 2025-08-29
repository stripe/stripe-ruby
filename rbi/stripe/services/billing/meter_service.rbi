# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class MeterService < StripeService
      attr_reader :event_summaries
      class ListParams < Stripe::RequestParams
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
        # Filter results to only include meters with the given status.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class CustomerMapping < Stripe::RequestParams
          # The key in the meter event payload to use for mapping the event to a customer.
          sig { returns(String) }
          attr_accessor :event_payload_key
          # The method for mapping a meter event to a customer. Must be `by_id`.
          sig { returns(String) }
          attr_accessor :type
          sig { params(event_payload_key: String, type: String).void }
          def initialize(event_payload_key: nil, type: nil); end
        end
        class DefaultAggregation < Stripe::RequestParams
          # Specifies how events are aggregated. Allowed values are `count` to count the number of events, `sum` to sum each event's value and `last` to take the last event's value in the window.
          sig { returns(String) }
          attr_accessor :formula
          sig { params(formula: String).void }
          def initialize(formula: nil); end
        end
        class ValueSettings < Stripe::RequestParams
          # The key in the usage event payload to use as the value for this meter. For example, if the event payload contains usage on a `bytes_used` field, then set the event_payload_key to "bytes_used".
          sig { returns(String) }
          attr_accessor :event_payload_key
          sig { params(event_payload_key: String).void }
          def initialize(event_payload_key: nil); end
        end
        # Fields that specify how to map a meter event to a customer.
        sig { returns(T.nilable(::Stripe::Billing::MeterService::CreateParams::CustomerMapping)) }
        attr_accessor :customer_mapping
        # The default settings to aggregate a meter's events with.
        sig { returns(::Stripe::Billing::MeterService::CreateParams::DefaultAggregation) }
        attr_accessor :default_aggregation
        # The meter’s name. Not visible to the customer.
        sig { returns(String) }
        attr_accessor :display_name
        # The name of the meter event to record usage for. Corresponds with the `event_name` field on meter events.
        sig { returns(String) }
        attr_accessor :event_name
        # The time window which meter events have been pre-aggregated for, if any.
        sig { returns(T.nilable(String)) }
        attr_accessor :event_time_window
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Fields that specify how to calculate a meter event's value.
        sig { returns(T.nilable(::Stripe::Billing::MeterService::CreateParams::ValueSettings)) }
        attr_accessor :value_settings
        sig {
          params(customer_mapping: T.nilable(::Stripe::Billing::MeterService::CreateParams::CustomerMapping), default_aggregation: ::Stripe::Billing::MeterService::CreateParams::DefaultAggregation, display_name: String, event_name: String, event_time_window: T.nilable(String), expand: T.nilable(T::Array[String]), value_settings: T.nilable(::Stripe::Billing::MeterService::CreateParams::ValueSettings)).void
         }
        def initialize(
          customer_mapping: nil,
          default_aggregation: nil,
          display_name: nil,
          event_name: nil,
          event_time_window: nil,
          expand: nil,
          value_settings: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        # The meter’s name. Not visible to the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :display_name
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(display_name: T.nilable(String), expand: T.nilable(T::Array[String])).void }
        def initialize(display_name: nil, expand: nil); end
      end
      class DeactivateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class ReactivateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Creates a billing meter.
      sig {
        params(params: T.any(::Stripe::Billing::MeterService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Meter)
       }
      def create(params = {}, opts = {}); end

      # When a meter is deactivated, no more meter events will be accepted for this meter. You can't attach a deactivated meter to a price.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::MeterService::DeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Meter)
       }
      def deactivate(id, params = {}, opts = {}); end

      # Retrieve a list of billing meters.
      sig {
        params(params: T.any(::Stripe::Billing::MeterService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # When a meter is reactivated, events for this meter can be accepted and you can attach the meter to a price.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::MeterService::ReactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Meter)
       }
      def reactivate(id, params = {}, opts = {}); end

      # Retrieves a billing meter given an ID.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::MeterService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Meter)
       }
      def retrieve(id, params = {}, opts = {}); end

      # Updates a billing meter.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::MeterService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Meter)
       }
      def update(id, params = {}, opts = {}); end
    end
  end
end