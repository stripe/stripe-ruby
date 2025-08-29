# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class ClaimableSandboxService < StripeService
        class CreateParams < Stripe::RequestParams
          class Prefill < Stripe::RequestParams
            # Country in which the account holder resides, or in which the business is legally established.
            # Use two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Email that this sandbox is meant to be claimed by. Stripe will
            # notify this email address before the sandbox expires.
            sig { returns(String) }
            attr_accessor :email
            # Name for the sandbox. If not provided, this will be generated.
            sig { returns(T.nilable(String)) }
            attr_accessor :name
            sig { params(country: String, email: String, name: T.nilable(String)).void }
            def initialize(country: nil, email: nil, name: nil); end
          end
          # If true, returns a key that can be used with [Stripe's MCP server](https://docs.stripe.com/mcp).
          sig { returns(T::Boolean) }
          attr_accessor :enable_mcp_access
          # Values that are prefilled when a user claims the sandbox.
          sig { returns(::Stripe::V2::Core::ClaimableSandboxService::CreateParams::Prefill) }
          attr_accessor :prefill
          sig {
            params(enable_mcp_access: T::Boolean, prefill: ::Stripe::V2::Core::ClaimableSandboxService::CreateParams::Prefill).void
           }
          def initialize(enable_mcp_access: nil, prefill: nil); end
        end
        # Create an anonymous, claimable sandbox. This sandbox can be prefilled with data. The response will include
        # a claim URL that allow a user to claim the account.
        sig {
          params(params: T.any(::Stripe::V2::Core::ClaimableSandboxService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::ClaimableSandbox)
         }
        def create(params = {}, opts = {}); end
      end
    end
  end
end