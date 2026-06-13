# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    class ProgramService < StripeService
      # Create a Program object.
      sig {
        params(params: T.any(::Stripe::Issuing::ProgramCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Program)
       }
      def create(params = {}, opts = {}); end

      # List all of the programs the given Issuing user has access to.
      sig {
        params(params: T.any(::Stripe::Issuing::ProgramListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the program specified by the given id.
      sig {
        params(program: String, params: T.any(::Stripe::Issuing::ProgramRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Program)
       }
      def retrieve(program, params = {}, opts = {}); end

      # Updates a Program object.
      sig {
        params(program: String, params: T.any(::Stripe::Issuing::ProgramUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Program)
       }
      def update(program, params = {}, opts = {}); end
    end
  end
end