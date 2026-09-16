# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        # A NetworkToken object represents a network token provisioned for a card.
        class NetworkToken < APIResource
          OBJECT_NAME = "v2.core.vault.network_token"
          def self.object_name
            "v2.core.vault.network_token"
          end

          class Cryptogram < ::Stripe::StripeObject
            # The electronic commerce indicator associated with the cryptogram.
            attr_reader :eci
            # The cryptogram type.
            attr_reader :type
            # The cryptogram value.
            attr_reader :value

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Created timestamp.
          attr_reader :created
          # This field is unset in create and retrieve responses. It is populated only after a successful generate_cryptogram request.
          attr_reader :cryptogram
          # The month the network token expires.
          attr_reader :exp_month
          # The year the network token expires.
          attr_reader :exp_year
          # ID of the NetworkToken object.
          attr_reader :id
          # Whether the object exists in live mode or in test mode.
          attr_reader :livemode
          # The network token number.
          attr_reader :number
          # String representing the object's type. Objects of the same type share the same value of the object field.
          attr_reader :object
          # Closed Enum. The status of the network token.
          attr_reader :status

          def self.inner_class_types
            @inner_class_types = { cryptogram: Cryptogram }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
      end
    end
  end
end
