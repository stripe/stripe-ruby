# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class PaymentProfileRetrieveParams < ::Stripe::RequestParams
        # Whether the billing operation should use Stripe live-mode objects. When omitted, this
        # resolves from the authenticated request context.
        attr_accessor :livemode

        def initialize(livemode: nil)
          @livemode = livemode
        end
      end
    end
  end
end
