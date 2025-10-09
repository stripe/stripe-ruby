# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # Use the OutboundSetupIntent API to create and setup usable payout methods.
      class OutboundSetupIntent < APIResource
        class NextAction < ::Stripe::StripeObject
          class ConfirmationOfPayee < ::Stripe::StripeObject
            # The type of the credential.
            sig { returns(String) }
            def object; end
            # The Confirmation of Payee status.
            sig { returns(String) }
            def status; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The type of next action.
          sig { returns(String) }
          def type; end
          # Confirmation of Payee details.
          sig { returns(T.nilable(ConfirmationOfPayee)) }
          def confirmation_of_payee; end
          def self.inner_class_types
            @inner_class_types = {confirmation_of_payee: ConfirmationOfPayee}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Created timestamp.
        sig { returns(String) }
        def created; end
        # ID of the outbound setup intent.
        sig { returns(String) }
        def id; end
        # Specifies which actions needs to be taken next to continue setup of the credential.
        sig { returns(T.nilable(NextAction)) }
        def next_action; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Use the PayoutMethods API to list and interact with PayoutMethod objects.
        sig { returns(::Stripe::V2::MoneyManagement::PayoutMethod) }
        def payout_method; end
        # Closed Enum. Status of the outbound setup intent.
        sig { returns(String) }
        def status; end
        # The intended money movement flow this payout method should be set up for, specified in params.
        sig { returns(String) }
        def usage_intent; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end