# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module ThreeDSecure
    class AuthenticationSubmitParams < ::Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The fingerprinting result of the issuer fingerprinting step.
      #
      # Refer to the [Issuer fingerprinting section of the Standalone 3DS guide](/payments/3d-secure/standalone-3d-secure#issuer-fingerprinting) for more information.
      attr_accessor :fingerprinting_result
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(expand: nil, fingerprinting_result: nil, metadata: nil)
        @expand = expand
        @fingerprinting_result = fingerprinting_result
        @metadata = metadata
      end
    end
  end
end
