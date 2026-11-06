# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Extend
      class ObjectDefinitionService < StripeService
        attr_reader :versions

        def initialize(requestor)
          super
          @versions = Stripe::V2::Extend::ObjectDefinitions::VersionService.new(@requestor)
        end

        # Lists a page of object definitions.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/extend/object_definitions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves an object definition.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/extend/object_definitions/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
