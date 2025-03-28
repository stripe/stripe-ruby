# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class EventService < StripeService
        class ListParams < Stripe::RequestParams
          # The page size.
          attr_accessor :limit
          # Primary object ID used to retrieve related events.
          attr_accessor :object_id

          def initialize(limit: nil, object_id: nil)
            @limit = limit
            @object_id = object_id
          end
        end

        class RetrieveParams < Stripe::RequestParams
        end

        # List events, going back up to 30 days.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/core/events",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an event.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/core/events/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
