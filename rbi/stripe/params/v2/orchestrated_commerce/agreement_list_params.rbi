# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module OrchestratedCommerce
      class AgreementListParams < ::Stripe::RequestParams
        # The limit for the number of results per page.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter list to Orchestrated Commerce Agreements with a specific counterparty.
        sig { returns(T.nilable(String)) }
        def network_business_profile; end
        sig { params(_network_business_profile: T.nilable(String)).returns(T.nilable(String)) }
        def network_business_profile=(_network_business_profile); end
        sig { params(limit: T.nilable(Integer), network_business_profile: T.nilable(String)).void }
        def initialize(limit: nil, network_business_profile: nil); end
      end
    end
  end
end