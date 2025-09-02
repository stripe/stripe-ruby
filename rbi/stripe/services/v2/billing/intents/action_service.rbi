# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module Intents
        class ActionService < StripeService
          class ListParams < Stripe::RequestParams
            # Optionally set the maximum number of results per page. Defaults to 10.
            sig { returns(T.nilable(Integer)) }
            def limit; end
            sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def limit=(_limit); end
            sig { params(limit: T.nilable(Integer)).void }
            def initialize(limit: nil); end
          end
          class RetrieveParams < Stripe::RequestParams; end
          # List Billing Intent Actions.
          sig {
            params(intent_id: String, params: T.any(::Stripe::V2::Billing::Intents::ActionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
           }
          def list(intent_id, params = {}, opts = {}); end

          # Retrieve a Billing Intent Action.
          sig {
            params(intent_id: String, id: String, params: T.any(::Stripe::V2::Billing::Intents::ActionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::IntentAction)
           }
          def retrieve(intent_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end