# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # A Personalization Design is a logical grouping of a Physical Bundle, card logo, and carrier text that represents a product line.
    class PersonalizationDesign < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.personalization_design"

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = PersonalizationDesign

        # Updates the status of the specified testmode personalization design object to active.
        def self.activate(personalization_design, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/activate", { personalization_design: CGI.escape(personalization_design) }),
            params: params,
            opts: opts
          )
        end

        # Updates the status of the specified testmode personalization design object to inactive.
        def self.deactivate(personalization_design, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/deactivate", { personalization_design: CGI.escape(personalization_design) }),
            params: params,
            opts: opts
          )
        end

        # Updates the status of the specified testmode personalization design object to rejected.
        def self.reject(personalization_design, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/reject", { personalization_design: CGI.escape(personalization_design) }),
            params: params,
            opts: opts
          )
        end

        # Updates the status of the specified testmode personalization design object to active.
        def activate(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/activate", { personalization_design: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Updates the status of the specified testmode personalization design object to inactive.
        def deactivate(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/deactivate", { personalization_design: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Updates the status of the specified testmode personalization design object to rejected.
        def reject(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/reject", { personalization_design: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
