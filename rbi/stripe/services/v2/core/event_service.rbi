# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class EventService < StripeService
        class ListParams < Stripe::RequestParams
          # The page size.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          # Primary object ID used to retrieve related events.
          #
          # To avoid conflict with Ruby's ':object_id', this attribute has been renamed. If using a hash parameter map instead, please use the original name ':object_id' with NO trailing underscore as the provided param key.
          sig { returns(String) }
          attr_accessor :object_id_
          sig { params(limit: T.nilable(Integer), object_id_: String).void }
          def initialize(limit: nil, object_id_: nil); end
        end
        class RetrieveParams < Stripe::RequestParams; end
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