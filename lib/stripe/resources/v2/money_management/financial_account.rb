# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A FinancialAccount represents a balance and can be the source or destination of money movement.
      class FinancialAccount < APIResource
        OBJECT_NAME = "v2.money_management.financial_account"
        def self.object_name
          "v2.money_management.financial_account"
        end

        class Balance < ::Stripe::StripeObject
          # Balance available for money movement.
          attr_reader :available
          # Balance of inbound funds that aren't yet available for money movement and will later move to the `available` balance.
          attr_reader :inbound_pending
          # Balance of funds being used for pending outbound money movements.
          attr_reader :outbound_pending

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Other < ::Stripe::StripeObject
          # The FinancialAccount's actual type, represented as a string.
          # Upgrade your API version to see this value in `financial_account.type`.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusDetails < ::Stripe::StripeObject
          class Closed < ::Stripe::StripeObject
            class ForwardingSettings < ::Stripe::StripeObject
              # ID of the FinancialAccount that supplies funds to cover negative balances
              # during or after this FinancialAccount's closure.
              attr_reader :payment_method
              # ID of the FinancialAccount that receives funds forwarded from this FinancialAccount when it closes.
              attr_reader :payout_method

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # When configured, the forwarding settings for the closed FinancialAccount.
            attr_reader :forwarding_settings
            # Closed Enum. The reason the FinancialAccount was closed.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = { forwarding_settings: ForwardingSettings }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details about the FinancialAccount's closure. Only populated when `status` is `closed`.
          attr_reader :closed

          def self.inner_class_types
            @inner_class_types = { closed: Closed }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Storage < ::Stripe::StripeObject
          class DepositInsuranceEligibility < ::Stripe::StripeObject
            # The bank where funds are stored.
            attr_reader :bank_name
            # Currencies eligible for deposit insurance at this bank under this scheme.
            attr_reader :currencies
            # The deposit insurance scheme.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Array of eligibility objects, segmented by bank name and deposit insurance scheme.
          attr_reader :deposit_insurance_eligibility
          # The currencies that this FinancialAccount can hold.
          attr_reader :holds_currencies

          def self.inner_class_types
            @inner_class_types = { deposit_insurance_eligibility: DepositInsuranceEligibility }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The FinancialAccount's balance, split into `available`, `inbound_pending`, and `outbound_pending` balances.
        # Each balance is a hash keyed by lowercase currency codes, with an amount for each currency.
        attr_reader :balance
        # Open Enum. The country where the LegalEntity associated with the FinancialAccount is based, represented as a two-letter country code.
        attr_reader :country
        # Time at which the object was created. Represented as an RFC 3339 timestamp in UTC with millisecond precision, for example `2022-09-18T13:22:18.123Z`.
        attr_reader :created
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name appears in the Stripe Dashboard and embedded components.
        attr_reader :display_name
        # Unique identifier for the object.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information
        # about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # If the FinancialAccount's `type` is `other`, this hash identifies its actual type.
        # Upgrade your API version to see that type in `type`.
        attr_reader :other
        # Closed Enum. An enum representing the status of the FinancialAccount. This indicates whether or not the FinancialAccount can be used for any money movement flows.
        attr_reader :status
        # Additional details related to the status of the FinancialAccount.
        attr_reader :status_details
        # If the FinancialAccount's `type` is `storage`, this hash contains details specific to that type.
        attr_reader :storage
        # Closed Enum. The type of the FinancialAccount. Details specific to the type appear in the matching hash.
        # For example, a `storage` FinancialAccount includes a `storage` hash.
        attr_reader :type

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
