# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        class NetworkTokenCreateFromCredentialParams < ::Stripe::RequestParams
          class Card < ::Stripe::RequestParams
            # The optional origin attestation for the referenced card.
            sig { returns(T.nilable(String)) }
            def origin; end
            sig { params(_origin: T.nilable(String)).returns(T.nilable(String)) }
            def origin=(_origin); end
            # A supported v2 Card ID or v1 PaymentMethod ID of type card.
            sig { returns(String) }
            def reference; end
            sig { params(_reference: String).returns(String) }
            def reference=(_reference); end
            sig { params(origin: T.nilable(String), reference: String).void }
            def initialize(origin: nil, reference: nil); end
          end
          # The existing Stripe card reference to provision or resolve.
          sig {
            returns(T.nilable(::Stripe::V2::Core::Vault::NetworkTokenCreateFromCredentialParams::Card))
           }
          def card; end
          sig {
            params(_card: T.nilable(::Stripe::V2::Core::Vault::NetworkTokenCreateFromCredentialParams::Card)).returns(T.nilable(::Stripe::V2::Core::Vault::NetworkTokenCreateFromCredentialParams::Card))
           }
          def card=(_card); end
          # Private preview supports card only.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(card: T.nilable(::Stripe::V2::Core::Vault::NetworkTokenCreateFromCredentialParams::Card), type: String).void
           }
          def initialize(card: nil, type: nil); end
        end
      end
    end
  end
end