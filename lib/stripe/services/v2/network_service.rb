# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class NetworkService < StripeService
      attr_reader :business_profiles

      def initialize(requestor)
        super
        @business_profiles = Stripe::V2::Network::BusinessProfileService.new(@requestor)
      end
    end
  end
end
