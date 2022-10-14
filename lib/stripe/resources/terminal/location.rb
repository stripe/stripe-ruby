# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    # A Location represents a grouping of readers.
    #
    # Related guide: [Fleet Management](https://stripe.com/docs/terminal/fleet/locations).
    class Location < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Delete
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "terminal.location"
    end
  end
end
