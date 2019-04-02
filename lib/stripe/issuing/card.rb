# frozen_string_literal: true

module Stripe
  module Issuing
    class Card < Stripe::APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.card".freeze

      custom_method :details, http_verb: :get

      def details(params = {}, opts = {})
        resp, opts = request(:get, resource_url + "/details", params, opts)
        Util.convert_to_stripe_object(resp.data, opts)
      end
    end
  end
end
