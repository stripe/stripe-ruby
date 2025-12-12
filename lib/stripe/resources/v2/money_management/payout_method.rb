# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # Use the PayoutMethods API to list and interact with PayoutMethod objects.
      class PayoutMethod < APIResource
        OBJECT_NAME = "v2.money_management.payout_method"
        def self.object_name
          "v2.money_management.payout_method"
        end

        class UsageStatus < ::Stripe::StripeObject
          # Payments status - used when sending OutboundPayments (sending funds to recipients).
          attr_reader :payments
          # Transfers status - used when making an OutboundTransfer (sending funds to yourself).
          attr_reader :transfers

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class BankAccount < ::Stripe::StripeObject
          # Whether this PayoutMethodBankAccount object was archived. PayoutMethodBankAccount objects can be archived through
          # the /archive API, and they will not be automatically archived by Stripe. Archived PayoutMethodBankAccount objects
          # cannot be used as payout methods and will not appear in the payout method list.
          attr_reader :archived
          # The type of bank account (checking or savings).
          attr_reader :bank_account_type
          # The name of the bank this bank account is in. This field is populated automatically by Stripe.
          attr_reader :bank_name
          # The country code of the bank account.
          attr_reader :country
          # List of enabled flows for this bank account (wire or local).
          attr_reader :enabled_delivery_options
          # The ID of the Financial Connections Account used to create the bank account.
          attr_reader :financial_connections_account
          # The last 4 digits of the account number.
          attr_reader :last4
          # The routing number of the bank account, if present.
          attr_reader :routing_number
          # The list of currencies supported by this bank account.
          attr_reader :supported_currencies

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Card < ::Stripe::StripeObject
          # Whether the PayoutMethodCard object was archived. PayoutMethodCard objects can be archived through
          # the /archive API, and they will not be automatically archived by Stripe. Archived PayoutMethodCard objects
          # cannot be used as payout methods and will not appear in the payout method list.
          attr_reader :archived
          # The month the card expires.
          attr_reader :exp_month
          # The year the card expires.
          attr_reader :exp_year
          # The last 4 digits of the card number.
          attr_reader :last4

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # A set of available payout speeds for this payout method.
        attr_reader :available_payout_speeds
        # Created timestamp.
        attr_reader :created
        # ID of the PayoutMethod object.
        attr_reader :id
        # ID of the underlying active OutboundSetupIntent object, if any.
        attr_reader :latest_outbound_setup_intent
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Closed Enum. The type of payout method.
        attr_reader :type
        # Indicates whether the payout method has met the necessary requirements for outbound money movement.
        attr_reader :usage_status
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # The PayoutMethodBankAccount object details.
        attr_reader :bank_account
        # The PayoutMethodCard object details.
        attr_reader :card

        def self.inner_class_types
          @inner_class_types = { usage_status: UsageStatus, bank_account: BankAccount, card: Card }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
