# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class HealthService < StripeService
        attr_reader :alerts

        def initialize(requestor)
          super
          @alerts = Stripe::V2::Core::Health::AlertService.new(@requestor)
        end
      end
    end
  end
end
