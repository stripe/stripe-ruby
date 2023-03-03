# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # A Card Design is a logical grouping of a Card Bundle, card logo, and carrier text that represents a product line.
    class CardDesign < APIResource
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.card_design"

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = CardDesign

        def self.activate_testmode(card_design, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/card_designs/%<card_design>s/status/activate", { card_design: CGI.escape(card_design) }),
            params: params,
            opts: opts
          )
        end

        def self.deactivate_testmode(card_design, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/card_designs/%<card_design>s/status/deactivate", { card_design: CGI.escape(card_design) }),
            params: params,
            opts: opts
          )
        end

        def activate_testmode(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/card_designs/%<card_design>s/status/activate", { card_design: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        def deactivate_testmode(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/card_designs/%<card_design>s/status/deactivate", { card_design: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
