# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A FinancialAccount represents a balance and can be used as the source or destination for the money management (`/v2/money_management`) APIs.
      class FinancialAccount < APIResource
        OBJECT_NAME = "v2.money_management.financial_account"
        def self.object_name
          "v2.money_management.financial_account"
        end

        class Balance < Stripe::StripeObject
          # Balance that can be used for money movement.
          attr_reader :available
          # Balance of inbound funds that will later transition to the `available` balance.
          attr_reader :inbound_pending
          # Balance of funds that are being used for a pending outbound money movement.
          attr_reader :outbound_pending

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Other < Stripe::StripeObject
          # The type of the FinancialAccount, represented as a string. Upgrade your API version to see the type reflected in `financial_account.type`.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusDetails < Stripe::StripeObject
          class Closed < Stripe::StripeObject
            class ForwardingSettings < Stripe::StripeObject
              # The address to send forwarded payments to.
              attr_reader :payment_method
              # The address to send forwarded payouts to.
              attr_reader :payout_method

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Attribute for field forwarding_settings
            attr_reader :forwarding_settings
            # Attribute for field reason
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = { forwarding_settings: ForwardingSettings }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Attribute for field closed
          attr_reader :closed

          def self.inner_class_types
            @inner_class_types = { closed: Closed }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Storage < Stripe::StripeObject
          # The currencies that this FinancialAccount can hold.
          attr_reader :holds_currencies

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Multi-currency balance of this FinancialAccount, split by availability state. Each balance is represented as a hash where the key is the three-letter ISO currency code, in lowercase, and the value is the amount for that currency.
        attr_reader :balance
        # Open Enum. Two-letter country code that represents the country where the LegalEntity associated with the FinancialAccount is based in.
        attr_reader :country
        # Time at which the object was created.
        attr_reader :created
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name will be used in the Stripe Dashboard and embedded components.
        attr_reader :display_name
        # Unique identifier for the object.
        attr_reader :id
        # Metadata associated with the FinancialAccount.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # If this is a `other` FinancialAccount, this hash indicates what the actual type is. Upgrade your API version to see it reflected in `type`.
        attr_reader :other
        # Closed Enum. An enum representing the status of the FinancialAccount. This indicates whether or not the FinancialAccount can be used for any money movement flows.
        attr_reader :status
        # Attribute for field status_details
        attr_reader :status_details
        # If this is a `storage` FinancialAccount, this hash includes details specific to `storage` FinancialAccounts.
        attr_reader :storage
        # Type of the FinancialAccount. An additional hash is included on the FinancialAccount with a name matching this value.
        # It contains additional information specific to the FinancialAccount type.
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = {
            balance: Balance,
            other: Other,
            status_details: StatusDetails,
            storage: Storage,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
