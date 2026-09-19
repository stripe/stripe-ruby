# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class PaymentProfileRetrieveParams < ::Stripe::RequestParams
        # Whether the billing operation should use Stripe live-mode objects. When omitted, this
        # resolves from the authenticated request context.
        sig { returns(T.nilable(T::Boolean)) }
        def livemode; end
        sig { params(_livemode: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def livemode=(_livemode); end
        sig { params(livemode: T.nilable(T::Boolean)).void }
        def initialize(livemode: nil); end
      end
    end
  end
end