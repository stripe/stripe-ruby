# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A Rate Card Version represents a specific configuration of a Rate Card at a point in time. Versions are created automatically
      # when you add or modify rates on a Rate Card, allowing you to track changes and manage which version is active for new
      # subscriptions. Each version maintains a record of when it was created.
      class RateCardVersion < APIResource
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The ID of the Rate Card that this version belongs to.
        sig { returns(String) }
        def rate_card_id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end