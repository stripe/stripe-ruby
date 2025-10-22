# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        # Use the USBankAccounts API to create and manage US bank accounts objects that you can use to receive funds. Note that these are not interchangeable with v1 Tokens.
        class UsBankAccount < APIResource
          OBJECT_NAME = "v2.core.vault.us_bank_account"
          def self.object_name
            "v2.core.vault.us_bank_account"
          end

          class Verification < ::Stripe::StripeObject
            class MicrodepositVerificationDetails < ::Stripe::StripeObject
              # Time when microdeposits will expire and have to be re-sent.
              attr_reader :expires
              # Microdeposit type can be amounts or descriptor_type.
              attr_reader :microdeposit_type
              # Time when microdeposits were sent.
              attr_reader :sent

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The microdeposit verification details if the status is awaiting verification.
            attr_reader :microdeposit_verification_details
            # The bank account verification status.
            attr_reader :status

            def self.inner_class_types
              @inner_class_types = {
                microdeposit_verification_details: MicrodepositVerificationDetails,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Whether this USBankAccount object was archived.
          attr_reader :archived
          # Closed Enum. The type of bank account (checking or savings).
          attr_reader :bank_account_type
          # The name of the bank this bank account belongs to. This field is populated automatically by Stripe based on the routing number.
          attr_reader :bank_name
          # Creation time of the object.
          attr_reader :created
          # The fedwire routing number of the bank account.
          attr_reader :fedwire_routing_number
          # The ID of the USBankAccount object.
          attr_reader :id
          # The last 4 digits of the account number.
          attr_reader :last4
          # String representing the object's type. Objects of the same type share the same value of the object field.
          attr_reader :object
          # The ACH routing number of the bank account.
          attr_reader :routing_number
          # The bank account verification details.
          attr_reader :verification
          # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
          attr_reader :livemode

          def self.inner_class_types
            @inner_class_types = { verification: Verification }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
      end
    end
  end
end
