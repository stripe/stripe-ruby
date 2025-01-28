# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    # A Configurations object represents how features should be configured for terminal readers.
    class Configuration < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Delete
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "terminal.configuration"
      def self.object_name
        "terminal.configuration"
      end

      # Creates a new Configuration object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/terminal/configurations",
          params: params,
          opts: opts
        )
      end

      # Deletes a Configuration object.
      def self.delete(configuration, params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/terminal/configurations/%<configuration>s", { configuration: CGI.escape(configuration) }),
          params: params,
          opts: opts
        )
      end

      # Deletes a Configuration object.
      def delete(params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/terminal/configurations/%<configuration>s", { configuration: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Returns a list of Configuration objects.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/terminal/configurations",
          params: params,
          opts: opts
        )
      end

      # Updates a new Configuration object.
      def self.update(configuration, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/configurations/%<configuration>s", { configuration: CGI.escape(configuration) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
