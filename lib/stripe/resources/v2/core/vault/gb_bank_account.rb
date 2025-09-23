# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        # Use the GBBankAccounts API to create and manage GB bank account objects
        class GbBankAccount < APIResource
          OBJECT_NAME = "v2.core.vault.gb_bank_account"
          def self.object_name
            "v2.core.vault.gb_bank_account"
          end

          class ConfirmationOfPayee < Stripe::StripeObject
            class Result < Stripe::StripeObject
              class Matched < Stripe::StripeObject
                # The business type given by the bank for this account, in case of a MATCH or PARTIAL_MATCH.
                # Closed enum.
                attr_reader :business_type
                # The name given by the bank for this account, in case of a MATCH or PARTIAL_MATCH.
                attr_reader :name

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class Provided < Stripe::StripeObject
                # The provided or Legal Entity business type to match against the CoP service. Closed enum.
                attr_reader :business_type
                # The provided or Legal Entity name to match against the CoP service.
                attr_reader :name

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # When the CoP result was created.
              attr_reader :created
              # Whether or not the information of the bank account matches what you have provided. Closed enum.
              attr_reader :match_result
              # The fields that CoP service matched against. Only has value if MATCH or PARTIAL_MATCH, empty otherwise.
              attr_reader :matched
              # Human-readable message describing the match result.
              attr_reader :message
              # The fields that are matched against what the network has on file.
              attr_reader :provided

              def self.inner_class_types
                @inner_class_types = { matched: Matched, provided: Provided }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The result of the Confirmation of Payee check, once the check has been initiated. Closed enum.
            attr_reader :result
            # The current state of Confirmation of Payee on this bank account. Closed enum.
            attr_reader :status

            def self.inner_class_types
              @inner_class_types = { result: Result }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Whether this bank account object was archived. Bank account objects can be archived through
          # the /archive API, and they will not be automatically archived by Stripe. Archived bank account objects
          # cannot be used as outbound destinations and will not appear in the outbound destination list.
          attr_reader :archived
          # Closed Enum. The type of the bank account (checking or savings).
          attr_reader :bank_account_type
          # The name of the bank.
          attr_reader :bank_name
          # Information around the status of Confirmation of Payee matching done on this bank account.
          # Confirmation of Payee is a name matching service that must be done before making OutboundPayments in the UK.
          attr_reader :confirmation_of_payee
          # Creation time.
          attr_reader :created
          # The ID of the GBBankAccount object.
          attr_reader :id
          # The last 4 digits of the account number or IBAN.
          attr_reader :last4
          # String representing the object's type. Objects of the same type share the same value of the object field.
          attr_reader :object
          # The Sort Code of the bank account.
          attr_reader :sort_code
          # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
          attr_reader :livemode

          def self.inner_class_types
            @inner_class_types = { confirmation_of_payee: ConfirmationOfPayee }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
      end
    end
  end
end
