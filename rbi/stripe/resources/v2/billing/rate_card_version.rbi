# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class RateCardVersion < APIResource
        # Timestamp of when the object was created.
        sig { returns(String) }
        attr_reader :created
        # The ID of the RateCardVersion.
        sig { returns(String) }
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # The ID of the RateCard that this version belongs to.
        sig { returns(String) }
        attr_reader :rate_card_id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end