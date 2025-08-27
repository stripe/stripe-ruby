# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module Intents
        class ActionService < StripeService
          class ListParams < Stripe::RequestParams
            # Optionally set the maximum number of results per page. Defaults to 10.
            attr_accessor :limit

            def initialize(limit: nil)
              @limit = limit
            end
          end

          class RetrieveParams < Stripe::RequestParams; end

          # List Billing Intent Actions.
          def list(intent_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/intents/%<intent_id>s/actions", { intent_id: CGI.escape(intent_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a Billing Intent Action.
          def retrieve(intent_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/intents/%<intent_id>s/actions/%<id>s", { intent_id: CGI.escape(intent_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
