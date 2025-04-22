# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class EventService < StripeService
        class ListParams < Stripe::RequestParams
          # Filter for events created after the specified timestamp.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_gt
          # Filter for events created at or after the specified timestamp.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_gte
          # Filter for events created before the specified timestamp.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_lt
          # Filter for events created at or before the specified timestamp.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_lte
          # Filter events based on whether they were successfully delivered to all subscribed event destinations. If false, events which are still pending or have failed all delivery attempts to a event destination will be returned.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :delivery_success
          # The page size.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          # Primary object ID used to retrieve related events.
          #
          # To avoid conflict with Ruby's ':object_id', this attribute has been renamed. If using a hash parameter map instead, please use the original name ':object_id' with NO trailing underscore as the provided param key.
          sig { returns(T.nilable(String)) }
          attr_accessor :object_id_
          sig {
            params(created_gt: T.nilable(String), created_gte: T.nilable(String), created_lt: T.nilable(String), created_lte: T.nilable(String), delivery_success: T.nilable(T::Boolean), limit: T.nilable(Integer), object_id_: T.nilable(String)).void
           }
          def initialize(
            created_gt: nil,
            created_gte: nil,
            created_lt: nil,
            created_lte: nil,
            delivery_success: nil,
            limit: nil,
            object_id_: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams

        end
        # List events, going back up to 30 days.
        sig {
          params(params: T.any(::Stripe::V2::Core::EventService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an event.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::EventService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Event)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end