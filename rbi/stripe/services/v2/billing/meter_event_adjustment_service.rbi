# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class MeterEventAdjustmentService < StripeService
        class CreateParams < Stripe::RequestParams
          class Cancel < Stripe::RequestParams
            # Unique identifier for the event. You can only cancel events within 24 hours of Stripe receiving them.
            sig { returns(String) }
            attr_accessor :identifier
            sig { params(identifier: String).void }
            def initialize(identifier: nil); end
          end
          # Specifies which event to cancel.
          sig { returns(::Stripe::V2::Billing::MeterEventAdjustmentService::CreateParams::Cancel) }
          attr_accessor :cancel
          # The name of the meter event. Corresponds with the `event_name` field on a meter.
          sig { returns(String) }
          attr_accessor :event_name
          # Specifies whether to cancel a single event or a range of events for a time period. Time period cancellation is not supported yet.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(cancel: ::Stripe::V2::Billing::MeterEventAdjustmentService::CreateParams::Cancel, event_name: String, type: String).void
           }
          def initialize(cancel: nil, event_name: nil, type: nil); end
        end
        # Creates a meter event adjustment to cancel a previously sent meter event.
        sig {
          params(params: T.any(::Stripe::V2::Billing::MeterEventAdjustmentService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::MeterEventAdjustment)
         }
        def create(params = {}, opts = {}); end
      end
    end
  end
end