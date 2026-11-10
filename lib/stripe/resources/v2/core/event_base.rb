# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class EventBase < APIResource
        # An event's payload determines the scope of its related objects, even
        # when the event was retrieved using a different account or context.
        protected def initialize_from(values, opts, last_response = nil, api_mode:, requestor:)
          requestor = requestor.with_authorization_scope(
            stripe_account: nil, stripe_context: values[:context] || values["context"]
          )
          opts = Util.normalize_opts(opts).except(:stripe_account, :stripe_context)
          super
        end
      end
    end
  end
end
