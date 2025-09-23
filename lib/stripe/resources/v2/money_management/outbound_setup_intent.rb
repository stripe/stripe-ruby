# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # Use the OutboundSetupIntent API to create and setup usable payout methods.
      class OutboundSetupIntent < APIResource
        OBJECT_NAME = "v2.money_management.outbound_setup_intent"
        def self.object_name
          "v2.money_management.outbound_setup_intent"
        end

        class NextAction < Stripe::StripeObject
          class ConfirmationOfPayee < Stripe::StripeObject
            # The type of the credential.
            attr_reader :object
            # The Confirmation of Payee status.
            attr_reader :status

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The type of next action.
          attr_reader :type
          # Confirmation of Payee details.
          attr_reader :confirmation_of_payee

          def self.inner_class_types
            @inner_class_types = { confirmation_of_payee: ConfirmationOfPayee }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Created timestamp.
        attr_reader :created
        # ID of the outbound setup intent.
        attr_reader :id
        # Specifies which actions needs to be taken next to continue setup of the credential.
        attr_reader :next_action
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Use the PayoutMethods API to list and interact with PayoutMethod objects.
        attr_reader :payout_method
        # Closed Enum. Status of the outbound setup intent.
        attr_reader :status
        # The intended money movement flow this payout method should be set up for, specified in params.
        attr_reader :usage_intent
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = { next_action: NextAction }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
