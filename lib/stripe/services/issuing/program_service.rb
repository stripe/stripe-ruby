# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class ProgramService < StripeService
      # Create a Program object.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/issuing/programs",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # List all of the programs the given Issuing user has access to.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/issuing/programs",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the program specified by the given id.
      def retrieve(program, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/issuing/programs/%<program>s", { program: CGI.escape(program) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates a Program object.
      def update(program, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/issuing/programs/%<program>s", { program: CGI.escape(program) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
