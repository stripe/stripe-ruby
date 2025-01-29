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
      def self.object_name
        "issuing.personalization_design"
      end

      # Creates a personalization design object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/issuing/personalization_designs",
          params: params,
          opts: opts
        )
      end

      # Returns a list of personalization design objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/personalization_designs",
          params: params,
          opts: opts
        )
      end

      # Updates a card personalization object.
      def self.update(personalization_design, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/personalization_designs/%<personalization_design>s", { personalization_design: CGI.escape(personalization_design) }),
          params: params,
          opts: opts
        )
      end

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = PersonalizationDesign
        def self.resource_class
          "PersonalizationDesign"
        end

        # Updates the status of the specified testmode personalization design object to active.
        def self.activate(personalization_design, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/activate", { personalization_design: CGI.escape(personalization_design) }),
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
        def self.deactivate(personalization_design, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/deactivate", { personalization_design: CGI.escape(personalization_design) }),
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
        def self.reject(personalization_design, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/reject", { personalization_design: CGI.escape(personalization_design) }),
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
