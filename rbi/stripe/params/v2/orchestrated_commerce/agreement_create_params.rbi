# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module OrchestratedCommerce
      class AgreementCreateParams < ::Stripe::RequestParams
        # The Network ID of the orchestrator to create an agreement with.
        sig { returns(String) }
        def orchestrator; end
        sig { params(_orchestrator: String).returns(String) }
        def orchestrator=(_orchestrator); end
        sig { params(orchestrator: String).void }
        def initialize(orchestrator: nil); end
      end
    end
  end
end