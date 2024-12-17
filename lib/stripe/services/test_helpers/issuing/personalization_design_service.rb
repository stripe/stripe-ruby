# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Issuing
      class PersonalizationDesignService < StripeService
        class ActivateParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand

          def initialize(expand: nil)
            @expand = expand
          end
        end

        class DeactivateParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand

          def initialize(expand: nil)
            @expand = expand
          end
        end

        class RejectParams < Stripe::RequestParams
          class RejectionReasons < Stripe::RequestParams
            # The reason(s) the card logo was rejected.
            attr_accessor :card_logo
            # The reason(s) the carrier text was rejected.
            attr_accessor :carrier_text

            def initialize(card_logo: nil, carrier_text: nil)
              @card_logo = card_logo
              @carrier_text = carrier_text
            end
          end
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand
          # The reason(s) the personalization design was rejected.
          attr_accessor :rejection_reasons

          def initialize(expand: nil, rejection_reasons: nil)
            @expand = expand
            @rejection_reasons = rejection_reasons
          end
        end

        # Updates the status of the specified testmode personalization design object to active.
        def activate(personalization_design, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/activate", { personalization_design: CGI.escape(personalization_design) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates the status of the specified testmode personalization design object to inactive.
        def deactivate(personalization_design, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/deactivate", { personalization_design: CGI.escape(personalization_design) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates the status of the specified testmode personalization design object to rejected.
        def reject(personalization_design, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/reject", { personalization_design: CGI.escape(personalization_design) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
