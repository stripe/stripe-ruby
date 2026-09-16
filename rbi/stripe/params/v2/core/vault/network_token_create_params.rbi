# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        class NetworkTokenCreateParams < ::Stripe::RequestParams
          class Card < ::Stripe::RequestParams
            class OwnerDetails < ::Stripe::RequestParams
              # Cardholder email address.
              sig { returns(T.nilable(String)) }
              def email; end
              sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
              def email=(_email); end
              # Cardholder phone number in international format, for example +15555550123.
              sig { returns(T.nilable(String)) }
              def phone; end
              sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
              def phone=(_phone); end
              sig { params(email: T.nilable(String), phone: T.nilable(String)).void }
              def initialize(email: nil, phone: nil); end
            end
            # The two-digit number representing the card's expiration month.
            sig { returns(String) }
            def exp_month; end
            sig { params(_exp_month: String).returns(String) }
            def exp_month=(_exp_month); end
            # The four-digit number representing the card's expiration year.
            sig { returns(String) }
            def exp_year; end
            sig { params(_exp_year: String).returns(String) }
            def exp_year=(_exp_year); end
            # The card number.
            sig { returns(String) }
            def number; end
            sig { params(_number: String).returns(String) }
            def number=(_number); end
            # The optional origin attestation for the card.
            sig { returns(T.nilable(String)) }
            def origin; end
            sig { params(_origin: T.nilable(String)).returns(T.nilable(String)) }
            def origin=(_origin); end
            # Optional owner contact details used only when a network requires them for raw-card tokenization.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Vault::NetworkTokenCreateParams::Card::OwnerDetails))
             }
            def owner_details; end
            sig {
              params(_owner_details: T.nilable(::Stripe::V2::Core::Vault::NetworkTokenCreateParams::Card::OwnerDetails)).returns(T.nilable(::Stripe::V2::Core::Vault::NetworkTokenCreateParams::Card::OwnerDetails))
             }
            def owner_details=(_owner_details); end
            sig {
              params(exp_month: String, exp_year: String, number: String, origin: T.nilable(String), owner_details: T.nilable(::Stripe::V2::Core::Vault::NetworkTokenCreateParams::Card::OwnerDetails)).void
             }
            def initialize(
              exp_month: nil,
              exp_year: nil,
              number: nil,
              origin: nil,
              owner_details: nil
            ); end
          end
          # Raw card values used to provision the network token.
          sig { returns(T.nilable(::Stripe::V2::Core::Vault::NetworkTokenCreateParams::Card)) }
          def card; end
          sig {
            params(_card: T.nilable(::Stripe::V2::Core::Vault::NetworkTokenCreateParams::Card)).returns(T.nilable(::Stripe::V2::Core::Vault::NetworkTokenCreateParams::Card))
           }
          def card=(_card); end
          # Private preview supports card only.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(card: T.nilable(::Stripe::V2::Core::Vault::NetworkTokenCreateParams::Card), type: String).void
           }
          def initialize(card: nil, type: nil); end
        end
      end
    end
  end
end