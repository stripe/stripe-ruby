# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class MeterEventAdjustmentService < StripeService
      class CreateParams < Stripe::RequestParams
        class Cancel < Stripe::RequestParams
          # Unique identifier for the event. You can only cancel events within 24 hours of Stripe receiving them.
          sig { returns(T.nilable(String)) }
          def identifier; end
          sig { params(_identifier: T.nilable(String)).returns(T.nilable(String)) }
          def identifier=(_identifier); end
          sig { params(identifier: T.nilable(String)).void }
          def initialize(identifier: nil); end
        end
        # Specifies which event to cancel.
        sig {
          returns(T.nilable(::Stripe::Billing::MeterEventAdjustmentService::CreateParams::Cancel))
         }
        def cancel; end
        sig {
          params(_cancel: T.nilable(::Stripe::Billing::MeterEventAdjustmentService::CreateParams::Cancel)).returns(T.nilable(::Stripe::Billing::MeterEventAdjustmentService::CreateParams::Cancel))
         }
        def cancel=(_cancel); end
        # The name of the meter event. Corresponds with the `event_name` field on a meter.
        sig { returns(String) }
        def event_name; end
        sig { params(_event_name: String).returns(String) }
        def event_name=(_event_name); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Specifies whether to cancel a single event or a range of events for a time period. Time period cancellation is not supported yet.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(cancel: T.nilable(::Stripe::Billing::MeterEventAdjustmentService::CreateParams::Cancel), event_name: String, expand: T.nilable(T::Array[String]), type: String).void
         }
        def initialize(cancel: nil, event_name: nil, expand: nil, type: nil); end
      end
      # Creates a billing meter event adjustment.
      sig {
        params(params: T.any(::Stripe::Billing::MeterEventAdjustmentService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::MeterEventAdjustment)
       }
      def create(params = {}, opts = {}); end
    end
  end
end