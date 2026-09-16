# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        # A NetworkToken object represents a network token provisioned for a card.
        class NetworkToken < APIResource
          class Cryptogram < ::Stripe::StripeObject
            # The electronic commerce indicator associated with the cryptogram.
            sig { returns(T.nilable(String)) }
            def eci; end
            # The cryptogram type.
            sig { returns(String) }
            def type; end
            # The cryptogram value.
            sig { returns(String) }
            def value; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Created timestamp.
          sig { returns(String) }
          def created; end
          # This field is unset in create and retrieve responses. It is populated only after a successful generate_cryptogram request.
          sig { returns(T.nilable(Cryptogram)) }
          def cryptogram; end
          # The month the network token expires.
          sig { returns(T.nilable(String)) }
          def exp_month; end
          # The year the network token expires.
          sig { returns(T.nilable(String)) }
          def exp_year; end
          # ID of the NetworkToken object.
          sig { returns(String) }
          def id; end
          # Whether the object exists in live mode or in test mode.
          sig { returns(T::Boolean) }
          def livemode; end
          # The network token number.
          sig { returns(T.nilable(String)) }
          def number; end
          # String representing the object's type. Objects of the same type share the same value of the object field.
          sig { returns(String) }
          def object; end
          # Closed Enum. The status of the network token.
          sig { returns(String) }
          def status; end
        end
      end
    end
  end
end