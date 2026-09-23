# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class ProjectService < StripeService
        # Creates a new project.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/provisioning/projects",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
