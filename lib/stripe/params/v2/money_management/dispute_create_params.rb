# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class DisputeCreateParams < ::Stripe::RequestParams
        class Target < ::Stripe::RequestParams
          # If applicable, the ID of the ReceivedDebit being disputed.
          attr_accessor :received_debit
          # The type of money movement being disputed.
          attr_accessor :type

          def initialize(received_debit: nil, type: nil)
            @received_debit = received_debit
            @type = type
          end
        end
        # Additional information explaining the dispute. Must contain non-whitespace text and be no longer than 5000 characters.
        attr_accessor :explanation
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata
        # The FinancialAccount holder's reason for disputing the money movement.
        attr_accessor :reason
        # The money movement being disputed.
        attr_accessor :target

        def initialize(explanation: nil, metadata: nil, reason: nil, target: nil)
          @explanation = explanation
          @metadata = metadata
          @reason = reason
          @target = target
        end
      end
    end
  end
end
