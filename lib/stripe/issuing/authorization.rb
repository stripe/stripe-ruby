# frozen_string_literal: true

module Stripe
  module Issuing
    class Authorization < Stripe::APIResource
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.authorization".freeze

      def approve(params = {}, opts = {})
        resp, opts = request(:post, resource_url + "/approve", params, opts)
        initialize_from(resp.data, opts)
      end

      def decline(params = {}, opts = {})
        resp, opts = request(:post, resource_url + "/decline", params, opts)
        initialize_from(resp.data, opts)
      end
    end
  end
end
