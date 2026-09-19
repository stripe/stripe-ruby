# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class ProjectService < StripeService
        # Creates a new project.
        sig {
          params(params: T.any(::Stripe::V2::Provisioning::ProjectCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::Project)
         }
        def create(params = {}, opts = {}); end
      end
    end
  end
end