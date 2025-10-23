# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        # Use the USBankAccounts API to create and manage US bank accounts objects that you can use to receive funds. Note that these are not interchangeable with v1 Tokens.
        class UsBankAccount < APIResource
          class Verification < ::Stripe::StripeObject
            class MicrodepositVerificationDetails < ::Stripe::StripeObject
              # Time when microdeposits will expire and have to be re-sent.
              sig { returns(String) }
              def expires; end
              # Microdeposit type can be amounts or descriptor_type.
              sig { returns(String) }
              def microdeposit_type; end
              # Time when microdeposits were sent.
              sig { returns(String) }
              def sent; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The microdeposit verification details if the status is awaiting verification.
            sig { returns(T.nilable(MicrodepositVerificationDetails)) }
            def microdeposit_verification_details; end
            # The bank account verification status.
            sig { returns(String) }
            def status; end
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
          sig { returns(T::Boolean) }
          def archived; end
          # Closed Enum. The type of bank account (checking or savings).
          sig { returns(String) }
          def bank_account_type; end
          # The name of the bank this bank account belongs to. This field is populated automatically by Stripe based on the routing number.
          sig { returns(String) }
          def bank_name; end
          # Creation time of the object.
          sig { returns(String) }
          def created; end
          # The fedwire routing number of the bank account.
          sig { returns(T.nilable(String)) }
          def fedwire_routing_number; end
          # The ID of the USBankAccount object.
          sig { returns(String) }
          def id; end
          # The last 4 digits of the account number.
          sig { returns(String) }
          def last4; end
          # String representing the object's type. Objects of the same type share the same value of the object field.
          sig { returns(String) }
          def object; end
          # The ACH routing number of the bank account.
          sig { returns(T.nilable(String)) }
          def routing_number; end
          # The bank account verification details.
          sig { returns(Verification) }
          def verification; end
          # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
          sig { returns(T::Boolean) }
          def livemode; end
        end
      end
    end
  end
end