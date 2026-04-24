# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module OrchestratedCommerce
      class AgreementCreateParams < ::Stripe::RequestParams
        # The Network ID of the orchestrator to create an agreement with.
        attr_accessor :orchestrator

        def initialize(orchestrator: nil)
          @orchestrator = orchestrator
        end
      end
    end
  end
end
