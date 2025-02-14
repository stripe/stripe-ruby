# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class EventService < StripeService
        class ListParams < Stripe::RequestParams
          # Filter for events created after the specified timestamp.
          attr_accessor :created_gt
          # Filter for events created at or after the specified timestamp.
          attr_accessor :created_gte
          # Filter for events created before the specified timestamp.
          attr_accessor :created_lt
          # Filter for events created at or before the specified timestamp.
          attr_accessor :created_lte
          # Filter events based on whether they were successfully delivered to all subscribed event destinations. If false, events which are still pending or have failed all delivery attempts to a event destination will be returned.
          attr_accessor :delivery_success
          # The page size.
          attr_accessor :limit
          # Primary object ID used to retrieve related events.
          attr_accessor :object_id
          # The requested page.
          attr_accessor :page

          def initialize(
            created_gt: nil,
            created_gte: nil,
            created_lt: nil,
            created_lte: nil,
            delivery_success: nil,
            limit: nil,
            object_id: nil,
            page: nil
          )
            @created_gt = created_gt
            @created_gte = created_gte
            @created_lt = created_lt
            @created_lte = created_lte
            @delivery_success = delivery_success
            @limit = limit
            @object_id = object_id
            @page = page
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
