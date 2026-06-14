# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # An Issuing `Program` represents a card program that the user has access to.
    class Program < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.program"
      def self.object_name
        "issuing.program"
      end

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Unique identifier for the object.
      attr_reader :id
      # Whether or not this is the "default" issuing program new cards are created on. Only one active `is_default` program at the same time.
      attr_reader :is_default
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The platform's Issuing Program for which this program is associated.
      attr_reader :platform_program

      # Create a Program object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/issuing/programs",
          params: params,
          opts: opts
        )
      end

      # List all of the programs the given Issuing user has access to.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/programs",
          params: params,
          opts: opts
        )
      end

      # Updates a Program object.
      def self.update(program, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/programs/%<program>s", { program: CGI.escape(program) }),
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
