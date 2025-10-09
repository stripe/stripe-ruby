# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module Intents
        class ActionService < StripeService
          # List Billing Intent Actions.
          sig {
            params(intent_id: String, params: T.any(::Stripe::V2::Billing::Intents::ActionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list(intent_id, params = {}, opts = {}); end

          # Retrieve a Billing Intent Action.
          sig {
            params(intent_id: String, id: String, params: T.any(::Stripe::V2::Billing::Intents::ActionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::IntentAction)
           }
          def retrieve(intent_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end