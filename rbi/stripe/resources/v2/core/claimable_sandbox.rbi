# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      # A claimable sandbox represents a Stripe sandbox that is anonymous.
      # When it is created, it can be prefilled with specific metadata, such as email, name, or country.
      # Claimable sandboxes can be claimed through a URL. When a user claims a sandbox through this URL,
      # it will prompt them to create a new Stripe account. Or, it will allow them to claim this sandbox in their
      # existing Stripe account.
      # Claimable sandboxes have 60 days to be claimed. After this expiration time has passed,
      # if the sandbox is not claimed, it will be deleted.
      class ClaimableSandbox < APIResource
        class Prefill < ::Stripe::StripeObject
          # Country in which the account holder resides, or in which the business is legally established.
          # Use two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          def country; end
          # Email that this sandbox is meant to be claimed by. Stripe will
          # send an email to this email address before the sandbox expires.
          sig { returns(String) }
          def email; end
          # Name for the sandbox.
          sig { returns(String) }
          def name; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class SandboxDetails < ::Stripe::StripeObject
          class ApiKeys < ::Stripe::StripeObject
            # Used to communicate with [Stripe's MCP server](https://docs.stripe.com/mcp).
            # This allows LLM agents to securely operate on a Stripe account.
            sig { returns(T.nilable(String)) }
            def mcp; end
            # Publicly accessible in a web or mobile app client-side code.
            sig { returns(String) }
            def publishable; end
            # Should be stored securely in server-side code (such as an environment variable).
            sig { returns(String) }
            def secret; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The sandbox's Stripe account ID.
          sig { returns(String) }
          def account; end
          # Keys that can be used to set up an integration for this sandbox and operate on the account. This will be present only in the create response, and will be null in subsequent retrieve responses.
          sig { returns(T.nilable(ApiKeys)) }
          def api_keys; end
          # The livemode sandbox Stripe account ID. This field is only set if the user activates their sandbox
          # and chooses to install your platform's Stripe App in their live account.
          sig { returns(T.nilable(String)) }
          def owner_account; end
          def self.inner_class_types
            @inner_class_types = {api_keys: ApiKeys}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # URL for user to claim sandbox into their existing Stripe account.
        # The value will be null if the sandbox status is `claimed` or `expired`.
        sig { returns(T.nilable(String)) }
        def claim_url; end
        # The timestamp the sandbox was claimed. The value will be null if the sandbox status is not `claimed`.
        sig { returns(T.nilable(String)) }
        def claimed_at; end
        # When the sandbox is created.
        sig { returns(String) }
        def created; end
        # The timestamp the sandbox will expire. The value will be null if the sandbox is `claimed`.
        sig { returns(T.nilable(String)) }
        def expires_at; end
        # Unique identifier for the Claimable sandbox.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Values prefilled during the creation of the sandbox. When a user claims the sandbox, they will be able to update these values.
        sig { returns(Prefill) }
        def prefill; end
        # Data about the Stripe sandbox object.
        sig { returns(SandboxDetails) }
        def sandbox_details; end
        # Status of the sandbox. One of `unclaimed`, `expired`, `claimed`.
        sig { returns(String) }
        def status; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end