# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    # A Connection Token is used by the Stripe Terminal SDK to connect to a reader.
    #
    # Related guide: [Fleet Management](https://stripe.com/docs/terminal/fleet/locations).
    class ConnectionToken < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "terminal.connection_token"
    end
  end
end
