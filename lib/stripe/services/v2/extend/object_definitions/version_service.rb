# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Extend
      module ObjectDefinitions
        class VersionService < StripeService
          # Lists a page of object definition versions in descending semantic version order.
          def list(object_definition_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/extend/object_definitions/%<object_definition_id>s/versions", { object_definition_id: CGI.escape(object_definition_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieves an object definition version.
          def retrieve(object_definition_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/extend/object_definitions/%<object_definition_id>s/versions/%<id>s", { object_definition_id: CGI.escape(object_definition_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
