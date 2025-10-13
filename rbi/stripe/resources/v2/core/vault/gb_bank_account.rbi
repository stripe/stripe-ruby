# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        # Use the GBBankAccounts API to create and manage GB bank account objects
        class GbBankAccount < APIResource
          class ConfirmationOfPayee < ::Stripe::StripeObject
            class Result < ::Stripe::StripeObject
              class Matched < ::Stripe::StripeObject
                # The business type given by the bank for this account, in case of a MATCH or PARTIAL_MATCH.
                # Closed enum.
                sig { returns(T.nilable(String)) }
                def business_type; end
                # The name given by the bank for this account, in case of a MATCH or PARTIAL_MATCH.
                sig { returns(T.nilable(String)) }
                def name; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class Provided < ::Stripe::StripeObject
                # The provided or Legal Entity business type to match against the CoP service. Closed enum.
                sig { returns(String) }
                def business_type; end
                # The provided or Legal Entity name to match against the CoP service.
                sig { returns(String) }
                def name; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # When the CoP result was created.
              sig { returns(String) }
              def created; end
              # Whether or not the information of the bank account matches what you have provided. Closed enum.
              sig { returns(String) }
              def match_result; end
              # The fields that CoP service matched against. Only has value if MATCH or PARTIAL_MATCH, empty otherwise.
              sig { returns(Matched) }
              def matched; end
              # Human-readable message describing the match result.
              sig { returns(String) }
              def message; end
              # The fields that are matched against what the network has on file.
              sig { returns(Provided) }
              def provided; end
              def self.inner_class_types
                @inner_class_types = {matched: Matched, provided: Provided}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The result of the Confirmation of Payee check, once the check has been initiated. Closed enum.
            sig { returns(Result) }
            def result; end
            # The current state of Confirmation of Payee on this bank account. Closed enum.
            sig { returns(String) }
            def status; end
            def self.inner_class_types
              @inner_class_types = {result: Result}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Whether this bank account object was archived. Bank account objects can be archived through
          # the /archive API, and they will not be automatically archived by Stripe. Archived bank account objects
          # cannot be used as outbound destinations and will not appear in the outbound destination list.
          sig { returns(T::Boolean) }
          def archived; end
          # Closed Enum. The type of the bank account (checking or savings).
          sig { returns(String) }
          def bank_account_type; end
          # The name of the bank.
          sig { returns(String) }
          def bank_name; end
          # Information around the status of Confirmation of Payee matching done on this bank account.
          # Confirmation of Payee is a name matching service that must be done before making OutboundPayments in the UK.
          sig { returns(ConfirmationOfPayee) }
          def confirmation_of_payee; end
          # Creation time.
          sig { returns(String) }
          def created; end
          # The ID of the GBBankAccount object.
          sig { returns(String) }
          def id; end
          # The last 4 digits of the account number or IBAN.
          sig { returns(String) }
          def last4; end
          # String representing the object's type. Objects of the same type share the same value of the object field.
          sig { returns(String) }
          def object; end
          # The Sort Code of the bank account.
          sig { returns(String) }
          def sort_code; end
          # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
          sig { returns(T::Boolean) }
          def livemode; end
        end
      end
    end
  end
end