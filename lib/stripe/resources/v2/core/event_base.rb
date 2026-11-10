# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class EventBase < APIResource
        # Overridden so that every generated `fetch_related_object` (which
        # calls this method) uses this event's own `context`, not whatever
        # Stripe-Context (if any) was used to retrieve the event itself --
        # mirrors how EventNotification#initialize scopes @client. Still
        # combines with @opts so a retained api_key/stripe_version override
        # survives. Doesn't need to clear a stale Stripe-Account explicitly:
        # RequestOptions.merge_config_and_opts drops it unconditionally
        # whenever Stripe-Context ends up present, since the two are mutually
        # exclusive on the wire.
        protected def _request(method:, path:, base_address:, params: {}, opts: {})
          req_opts = RequestOptions.extract_opts_from_hash(opts)
          req_opts = RequestOptions.combine_opts(@opts.merge(stripe_context: context), req_opts)
          @requestor.execute_request(method, path, base_address, params: params, opts: req_opts)
        end
      end
    end
  end
end
