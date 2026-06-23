# frozen_string_literal: true

module Stripe
  class V1Services < StripeService
    # v1 accessors: The beginning of the section generated from our OpenAPI spec
    # v1 accessors: The end of the section generated from our OpenAPI spec

    # OAuthService is manually maintained, as it has special behaviors
    attr_reader :oauth

    def initialize(requestor)
      super
      # v1 services: The beginning of the section generated from our OpenAPI spec
      # v1 services: The end of the section generated from our OpenAPI spec

      @oauth = OAuthService.new(@requestor)
    end
  end
end
