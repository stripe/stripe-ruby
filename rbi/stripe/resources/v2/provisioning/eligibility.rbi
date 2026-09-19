# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      # Whether a project is eligible to provision resources with a provider, and any
      # outstanding KYC requirements that must be satisfied first.
      class Eligibility < SingletonAPIResource
        # Whether the project is eligible to provision resources with the provider.
        sig { returns(T::Boolean) }
        def is_eligible; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Outstanding requirements that must be satisfied before the project is eligible, if any.
        sig { returns(T::Array[String]) }
        def requirements; end
      end
    end
  end
end