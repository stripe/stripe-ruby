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

          # Whether this bank account object was archived. Bank account objects can be archived through
          # the /archive API, and they will not be automatically archived by Stripe. Archived bank account objects
          # cannot be used as outbound destinations and will not appear in the outbound destination list.
          attr_reader :archived
          # Closed Enum. The type of the bank account (checking or savings).
          attr_reader :bank_account_type
          # The name of the bank.
          attr_reader :bank_name
          # Creation time.
          attr_reader :created
          # The ID of the GBBankAccount object.
          attr_reader :id
          # The last 4 digits of the account number or IBAN.
          attr_reader :last4
          # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
          attr_reader :livemode
          # String representing the object's type. Objects of the same type share the same value of the object field.
          attr_reader :object
          # Whether the GB Bank Account is currently unusable for money movement, despite potentially being correctly set up. Please reach out to Stripe Support for more information.
          attr_reader :restricted
          # The Sort Code of the bank account.
          attr_reader :sort_code
          # The list of currencies supported by this bank account.
          attr_reader :supported_currencies

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
      end
    end
  end
end
