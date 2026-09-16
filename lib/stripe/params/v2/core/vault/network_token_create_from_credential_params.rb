# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class NetworkTokenCreateFromCredentialParams < ::Stripe::RequestParams
          class Card < ::Stripe::RequestParams
            # The optional origin attestation for the referenced card.
            attr_accessor :origin
            # A supported v2 Card ID or v1 PaymentMethod ID of type card.
            attr_accessor :reference

            def initialize(origin: nil, reference: nil)
              @origin = origin
              @reference = reference
            end
          end
          # The existing Stripe card reference to provision or resolve.
          attr_accessor :card
          # Private preview supports card only.
          attr_accessor :type

          def initialize(card: nil, type: nil)
            @card = card
            @type = type
          end
        end
      end
    end
  end
end
