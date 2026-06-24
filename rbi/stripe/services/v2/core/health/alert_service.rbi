# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Health
        class AlertService < StripeService
          attr_reader :history
          # Retrieves a list of health alerts.
          sig {
            params(params: T.any(::Stripe::V2::Core::Health::AlertListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list(params = {}, opts = {}); end

          # Retrieves a health alert by ID.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Health::AlertRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Health::Alert)
           }
          def retrieve(id, params = {}, opts = {}); end
        end
      end
    end
  end
end