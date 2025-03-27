# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # Use the OutboundSetupIntent API to create and setup usable payout methods.
      class OutboundSetupIntent < APIResource
        class NextAction < Stripe::StripeObject
          class ConfirmationOfPayee < Stripe::StripeObject
            # The type of the credential.
            sig { returns(String) }
            attr_reader :object
            # The Confirmation of Payee status.
            sig { returns(String) }
            attr_reader :status
          end
          # The type of next action.
          sig { returns(String) }
          attr_reader :type
          # Confirmation of Payee details.
          sig { returns(T.nilable(ConfirmationOfPayee)) }
          attr_reader :confirmation_of_payee
        end
        # Created timestamp.
        sig { returns(String) }
        attr_reader :created
        # ID of the outbound setup intent.
        sig { returns(String) }
        attr_reader :id
        # Specifies which actions needs to be taken next to continue setup of the credential.
        sig { returns(T.nilable(NextAction)) }
        attr_reader :next_action
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # Information about the payout method that’s created and linked to this outbound setup intent.
        sig { returns(Stripe::V2::MoneyManagement::PayoutMethod) }
        attr_reader :payout_method
        # Closed Enum. Status of the outbound setup intent.
        sig { returns(String) }
        attr_reader :status
        # The intended money movement flow this payout method should be set up for, specified in params.
        sig { returns(String) }
        attr_reader :usage_intent
      end
    end
  end
end