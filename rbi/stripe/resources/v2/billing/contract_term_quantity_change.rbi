# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ContractTermQuantityChange < APIResource
        # The ID of the parent contract.
        sig { returns(String) }
        def contract; end
        # When this quantity change was created.
        sig { returns(String) }
        def created; end
        # When the quantity change takes effect.
        sig { returns(String) }
        def effective_at; end
        # The ID of the quantity change.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The quantity at the effective time.
        sig { returns(BigDecimal) }
        def quantity; end
        # The ID of the recurring-price term.
        sig { returns(String) }
        def term; end
      end
    end
  end
end