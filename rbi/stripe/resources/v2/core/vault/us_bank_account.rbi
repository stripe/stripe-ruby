# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        # Use the USBankAccounts API to create and manage US bank accounts objects that you can use to receive funds. Note that these are not interchangeable with v1 Tokens.
        class UsBankAccount < APIResource
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
          # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
          sig { returns(T::Boolean) }
          def livemode; end
        end
      end
    end
  end
end