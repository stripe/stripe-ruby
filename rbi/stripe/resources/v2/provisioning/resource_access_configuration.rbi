# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      # The current provider-issued access configuration for a Provisioning Resource.
      class ResourceAccessConfiguration < APIResource
        # Provider-defined configuration names mapped to their secret string values.
        sig { returns(T::Hash[String, String]) }
        def configuration; end
        # Time at which this credential generation became current.
        sig { returns(String) }
        def created; end
        # Time at which these credentials cease to be valid, when supplied by the Provider.
        sig { returns(T.nilable(String)) }
        def expires_at; end
        # Whether the referenced Resource uses Stripe live-mode objects.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Provisioning Resource to which this access configuration belongs.
        sig { returns(String) }
        def resource; end
      end
    end
  end
end