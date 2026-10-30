# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class ResourceRetrieveParams < ::Stripe::RequestParams
        # Additional fields to include in the response. Requesting configuration only populates names
        # for a complete Resource with an available, unexpired configuration. Missing configuration is
        # returned as null; authorization, dependency, malformed-data, and limit failures remain errors.
        attr_accessor :include

        def initialize(include: nil)
          @include = include
        end
      end
    end
  end
end
