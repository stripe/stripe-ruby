# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class EventService < StripeService
        # List events, going back up to 30 days.
        sig {
          params(params: T.any(::Stripe::V2::Core::EventListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an event.
        sig {
<<<<<<< HEAD
          params(id: String, params: T.any(::Stripe::V2::Core::EventService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Event)
=======
          params(id: String, params: T.any(::Stripe::V2::Core::EventRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Event)
>>>>>>> aa8d3aa8 (generated changes)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end