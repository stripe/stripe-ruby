# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    # A Connection Token is used by the Stripe Terminal SDK to connect to a reader.
    #
    # Related guide: [Fleet management](https://stripe.com/docs/terminal/fleet/locations)
    class ConnectionToken < APIResource
      # The id of the location that this connection token is scoped to. Note that location scoping only applies to internet-connected readers. For more details, see [the docs on scoping connection tokens](https://docs.stripe.com/terminal/fleet/locations-and-zones?dashboard-or-api=api#connection-tokens).
      sig { returns(String) }
      attr_reader :location

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # Your application should pass this token to the Stripe Terminal SDK.
      sig { returns(String) }
      attr_reader :secret
    end
  end
end