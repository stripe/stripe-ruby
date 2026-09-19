# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class ProviderConnectionRequestSubmitInformationParams < ::Stripe::RequestParams
        # Secret used to confirm the request when submitting on behalf of a resource without
        # an authenticated session.
        attr_accessor :confirmation_secret
        # Information requested by the provider, matching the connection's needs_information_schema.
        attr_accessor :information

        def initialize(confirmation_secret: nil, information: nil)
          @confirmation_secret = confirmation_secret
          @information = information
        end
      end
    end
  end
end
