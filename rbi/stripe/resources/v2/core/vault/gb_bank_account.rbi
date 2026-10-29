# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        # Use the GBBankAccounts API to create and manage GB bank account objects
        class GbBankAccount < APIResource
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
          # Creation time.
          sig { returns(String) }
          def created; end
          # The ID of the GBBankAccount object.
          sig { returns(String) }
          def id; end
          # The last 4 digits of the account number or IBAN.
          sig { returns(String) }
          def last4; end
          # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
          sig { returns(T::Boolean) }
          def livemode; end
          # String representing the object's type. Objects of the same type share the same value of the object field.
          sig { returns(String) }
          def object; end
          # Whether the GB Bank Account is currently unusable for money movement, despite potentially being correctly set up. Please reach out to Stripe Support for more information.
          sig { returns(T::Boolean) }
          def restricted; end
          # The Sort Code of the bank account.
          sig { returns(T.nilable(String)) }
          def sort_code; end
          # The list of currencies supported by this bank account.
          sig { returns(T::Array[String]) }
          def supported_currencies; end
        end
      end
    end
  end
end