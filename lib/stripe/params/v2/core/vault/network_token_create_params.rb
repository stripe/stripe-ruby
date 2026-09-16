# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class NetworkTokenCreateParams < ::Stripe::RequestParams
          class Card < ::Stripe::RequestParams
            class OwnerDetails < ::Stripe::RequestParams
              # Cardholder email address.
              attr_accessor :email
              # Cardholder phone number in international format, for example +15555550123.
              attr_accessor :phone

              def initialize(email: nil, phone: nil)
                @email = email
                @phone = phone
              end
            end
            # The two-digit number representing the card's expiration month.
            attr_accessor :exp_month
            # The four-digit number representing the card's expiration year.
            attr_accessor :exp_year
            # The card number.
            attr_accessor :number
            # The optional origin attestation for the card.
            attr_accessor :origin
            # Optional owner contact details used only when a network requires them for raw-card tokenization.
            attr_accessor :owner_details

            def initialize(
              exp_month: nil,
              exp_year: nil,
              number: nil,
              origin: nil,
              owner_details: nil
            )
              @exp_month = exp_month
              @exp_year = exp_year
              @number = number
              @origin = origin
              @owner_details = owner_details
            end
          end
          # Raw card values used to provision the network token.
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
