# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        # Use the GBBankAccounts API to create and manage GB bank account objects
        class GbBankAccount < APIResource
          class ConfirmationOfPayee < Stripe::StripeObject
            class Result < Stripe::StripeObject
              class Matched < Stripe::StripeObject
                # The business type given by the bank for this account, in case of a MATCH or PARTIAL_MATCH.
                # Closed enum.
                sig { returns(T.nilable(String)) }
                attr_reader :business_type
                # The name given by the bank for this account, in case of a MATCH or PARTIAL_MATCH.
                sig { returns(T.nilable(String)) }
                attr_reader :name
              end
              class Provided < Stripe::StripeObject
                # The provided or Legal Entity business type to match against the CoP service. Closed enum.
                sig { returns(String) }
                attr_reader :business_type
                # The provided or Legal Entity name to match against the CoP service.
                sig { returns(String) }
                attr_reader :name
              end
              # When the CoP result was created.
              sig { returns(String) }
              attr_reader :created
              # Whether or not the information of the bank account matches what you have provided. Closed enum.
              sig { returns(String) }
              attr_reader :match_result
              # The fields that CoP service matched against. Only has value if MATCH or PARTIAL_MATCH, empty otherwise.
              sig { returns(Matched) }
              attr_reader :matched
              # Human-readable message describing the match result.
              sig { returns(String) }
              attr_reader :message
              # The fields that are matched against what the network has on file.
              sig { returns(Provided) }
              attr_reader :provided
            end
            # The result of the Confirmation of Payee check, once the check has been initiated. Closed enum.
            sig { returns(Result) }
            attr_reader :result
            # The current state of Confirmation of Payee on this bank account. Closed enum.
            sig { returns(String) }
            attr_reader :status
          end
          # Whether this bank account object was archived. Bank account objects can be archived through
          # the /archive API, and they will not be automatically archived by Stripe. Archived bank account objects
          # cannot be used as outbound destinations and will not appear in the outbound destination list.
          sig { returns(T::Boolean) }
          attr_reader :archived
          # Closed Enum. The type of the bank account (checking or savings).
          sig { returns(String) }
          attr_reader :bank_account_type
          # The name of the bank.
          sig { returns(String) }
          attr_reader :bank_name
          # Information around the status of Confirmation of Payee matching done on this bank account.
          # Confirmation of Payee is a name matching service that must be done before making OutboundPayments in the UK.
          sig { returns(ConfirmationOfPayee) }
          attr_reader :confirmation_of_payee
          # Creation time.
          sig { returns(String) }
          attr_reader :created
          # The ID of the GBBankAccount object.
          sig { returns(String) }
          attr_reader :id
          # The last 4 digits of the account number or IBAN.
          sig { returns(String) }
          attr_reader :last4
          # String representing the object's type. Objects of the same type share the same value of the object field.
          sig { returns(String) }
          attr_reader :object
          # The Sort Code of the bank account.
          sig { returns(String) }
          attr_reader :sort_code
          # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
          sig { returns(T::Boolean) }
          attr_reader :livemode
        end
      end
    end
  end
end