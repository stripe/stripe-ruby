# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # You can [create physical or virtual cards](https://stripe.com/docs/issuing/cards) that are issued to cardholders.
    class Card < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.card"

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = Card

        # Updates the shipping status of the specified Issuing Card object to delivered.
        def self.deliver_card(card, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/deliver", { card: CGI.escape(card) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to failure.
        def self.fail_card(card, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/fail", { card: CGI.escape(card) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to returned.
        def self.return_card(card, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/return", { card: CGI.escape(card) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to shipped.
        def self.ship_card(card, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/ship", { card: CGI.escape(card) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to delivered.
        def deliver_card(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/deliver", { card: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to failure.
        def fail_card(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/fail", { card: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to returned.
        def return_card(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/return", { card: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to shipped.
        def ship_card(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/ship", { card: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
