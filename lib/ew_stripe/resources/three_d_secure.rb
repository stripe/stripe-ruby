# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  class ThreeDSecure < APIResource
    extend EwStripe::APIOperations::Create

    OBJECT_NAME = "three_d_secure"

    def self.resource_url
      "/v1/3d_secure"
    end
  end
end
