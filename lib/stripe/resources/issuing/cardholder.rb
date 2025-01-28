# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://stripe.com/docs/issuing) cards.
    #
    # Related guide: [How to create a cardholder](https://stripe.com/docs/issuing/cards/virtual/issue-cards#create-cardholder)
    class Cardholder < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.cardholder"
      def self.object_name
        "issuing.cardholder"
      end

      # Creates a new Issuing Cardholder object that can be issued cards.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/issuing/cardholders",
          params: params,
          opts: opts
        )
      end

      # Returns a list of Issuing Cardholder objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/cardholders",
          params: params,
          opts: opts
        )
      end

      # Updates the specified Issuing Cardholder object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def self.update(cardholder, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/cardholders/%<cardholder>s", { cardholder: CGI.escape(cardholder) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
