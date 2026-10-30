# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A RewardProgram represents shared card-spend cashback reward configuration for Issuing Card-Spend
      # Rewards. It is not scoped to a single Issuer Program or connected account.
      class RewardProgram < APIResource
        # Time at which the RewardProgram was created.
        sig { returns(String) }
        def created; end
        # Determines who performs reward money movement after rule evaluation. Immutable after creation.
        sig { returns(String) }
        def fulfilled_by; end
        # Unique identifier for the RewardProgram.
        sig { returns(String) }
        def id; end
        # Whether this object exists in livemode or testmode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Display name for the RewardProgram.
        sig { returns(String) }
        def name; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The status of the RewardProgram. Inactive by default on creation; use activate/deactivate to change.
        sig { returns(String) }
        def status; end
      end
    end
  end
end