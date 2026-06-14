# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module OrchestratedCommerce
      class AgreementListParams < ::Stripe::RequestParams
        # The limit for the number of results per page.
        attr_accessor :limit
        # Filter list to Orchestrated Commerce Agreements with a specific counterparty.
        attr_accessor :network_business_profile

        def initialize(limit: nil, network_business_profile: nil)
          @limit = limit
          @network_business_profile = network_business_profile
        end
      end
    end
  end
end
