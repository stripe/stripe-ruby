# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class MeterEventSession < APIResource
        sig { returns(String) }
        # The authentication token for this session.  Use this token when calling the
        # high-throughput meter event API.
        attr_reader :authentication_token
        sig { returns(String) }
        # The creation time of this session.
        attr_reader :created
        sig { returns(String) }
        # The time at which this session will expire.
        attr_reader :expires_at
        sig { returns(String) }
        # The unique id of this auth session.
        attr_reader :id
        sig { returns(T::Boolean) }
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        sig { returns(String) }
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
      end
    end
  end
end