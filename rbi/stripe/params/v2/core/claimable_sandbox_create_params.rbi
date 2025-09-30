# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class ClaimableSandboxCreateParams < Stripe::RequestParams
        class Prefill < Stripe::RequestParams
          # Country in which the account holder resides, or in which the business is legally established.
          # Use two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          def country; end
          sig { params(_country: String).returns(String) }
          def country=(_country); end
          # Email that this sandbox is meant to be claimed by. Stripe will
          # notify this email address before the sandbox expires.
          sig { returns(String) }
          def email; end
          sig { params(_email: String).returns(String) }
          def email=(_email); end
          # Name for the sandbox. If not provided, this will be generated.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          sig { params(country: String, email: String, name: T.nilable(String)).void }
          def initialize(country: nil, email: nil, name: nil); end
        end
        # If true, returns a key that can be used with [Stripe's MCP server](https://docs.stripe.com/mcp).
        sig { returns(T::Boolean) }
        def enable_mcp_access; end
        sig { params(_enable_mcp_access: T::Boolean).returns(T::Boolean) }
        def enable_mcp_access=(_enable_mcp_access); end
        # Values that are prefilled when a user claims the sandbox. When a user claims the sandbox, they will be able to update these values.
        sig { returns(V2::Core::ClaimableSandboxCreateParams::Prefill) }
        def prefill; end
        sig {
          params(_prefill: V2::Core::ClaimableSandboxCreateParams::Prefill).returns(V2::Core::ClaimableSandboxCreateParams::Prefill)
         }
        def prefill=(_prefill); end
        sig {
          params(enable_mcp_access: T::Boolean, prefill: V2::Core::ClaimableSandboxCreateParams::Prefill).void
         }
        def initialize(enable_mcp_access: nil, prefill: nil); end
      end
    end
  end
end