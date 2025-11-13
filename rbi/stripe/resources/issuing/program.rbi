# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # An Issuing `Program` represents a card program that the user has access to.
    class Program < APIResource
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Whether or not this is the "default" issuing program new cards are created on. Only one active `is_default` program at the same time.
      sig { returns(T::Boolean) }
      def is_default; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      def metadata; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The platform's Issuing Program for which this program is associated.
      sig { returns(T.nilable(String)) }
      def platform_program; end
      # Create a Program object.
      sig {
        params(params: T.any(::Stripe::Issuing::ProgramCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Program)
       }
      def self.create(params = {}, opts = {}); end

      # List all of the programs the given Issuing user has access to.
      sig {
        params(params: T.any(::Stripe::Issuing::ProgramListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates a Program object.
      sig {
        params(program: String, params: T.any(::Stripe::Issuing::ProgramUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Program)
       }
      def self.update(program, params = {}, opts = {}); end
    end
  end
end