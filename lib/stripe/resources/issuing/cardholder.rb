# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://stripe.com/docs/issuing) cards.
    #
    # Related guide: [How to create a Cardholder](https://stripe.com/docs/issuing/cards#create-cardholder)
    class Cardholder < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.cardholder"
    end
  end
end
