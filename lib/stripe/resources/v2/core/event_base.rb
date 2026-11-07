# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class EventBase < APIResource
        # internal use: a requestor scoped to this event's own Stripe-Context,
        # discarding any Stripe-Account the configured requestor may carry.
        # `context`, not account, is what routes a direct-retrieve `Event` (and
        # requests made through #fetch_related_object) to the right account --
        # mirrors how EventNotification#initialize scopes @client.
        private def scoped_requestor
          @scoped_requestor ||= begin
            scoped_config = @requestor.config.reverse_duplicate_merge(
              stripe_account: nil, stripe_context: context
            )
            APIRequestor.new(scoped_config)
          end
        end

        # Overridden so that every generated `fetch_related_object` (which calls
        # this method) routes through #scoped_requestor instead of combining
        # this event's retained @opts, which may carry a stale Stripe-Account
        # left over from how this Event itself was retrieved.
        protected def _request(method:, path:, base_address:, params: {}, opts: {})
          req_opts = RequestOptions.extract_opts_from_hash(opts)
          scoped_requestor.execute_request(method, path, base_address, params: params, opts: req_opts)
        end
      end
    end
  end
end
