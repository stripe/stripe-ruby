module Stripe
  class ThreeDSecure < APIResource
    extend Stripe::APIOperations::Create

    def self.resource_url
      "/v1/3d_secure"
    end

    def self.retrieve(id, opts=nil)
      raise NotImplementedError.new("3D Secure objects cannot be retrieved")
    end
  end
end
