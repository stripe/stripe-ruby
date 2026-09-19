# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      # The `Provider` resource represents a third-party provider available in the
      # provisioning catalog.
      class Provider < APIResource
        # Capabilities supported by the provider.
        sig { returns(T::Array[String]) }
        def capabilities; end
        # Categories the provider belongs to.
        sig { returns(T::Array[String]) }
        def categories; end
        # Schema describing the configuration accepted by this provider.
        sig { returns(T::Hash[String, T.untyped]) }
        def configuration_schema; end
        # Time at which the provider was created.
        sig { returns(String) }
        def created; end
        # Deep-link purposes supported by the provider.
        sig { returns(T::Array[String]) }
        def deep_link_purposes; end
        # Description of the provider.
        sig { returns(String) }
        def description; end
        # proto3 scalar defaults apply: if unset, this value is `false`.
        sig { returns(T::Boolean) }
        def development; end
        # Unique identifier for the provider.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # URL of additional context about the provider intended for LLM consumption.
        sig { returns(T.nilable(String)) }
        def llm_context; end
        # Human-readable name of the provider.
        sig { returns(String) }
        def name; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # URL of the provider's privacy policy.
        sig { returns(T.nilable(String)) }
        def privacy_policy_url; end
        # URL of the provider's terms of service.
        sig { returns(T.nilable(String)) }
        def tos_url; end
        # URL of the provider's website.
        sig { returns(T.nilable(String)) }
        def website_url; end
      end
    end
  end
end