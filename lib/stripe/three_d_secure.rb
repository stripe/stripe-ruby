module Stripe
  class ThreeDSecure < APIResource
    extend Stripe::APIOperations::Create

    def self.resource_url
      "/v1/3d_secure"
    end
  end
end
