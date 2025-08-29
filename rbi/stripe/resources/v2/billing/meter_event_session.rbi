# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class MeterEventSession < APIResource
        # The authentication token for this session.  Use this token when calling the
        # high-throughput meter event API.
        sig { returns(String) }
        attr_reader :authentication_token
        # The creation time of this session.
        sig { returns(String) }
        attr_reader :created
        # The time at which this session will expire.
        sig { returns(String) }
        attr_reader :expires_at
        # The unique id of this auth session.
        sig { returns(String) }
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end