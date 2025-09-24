# File generated from our OpenAPI spec
# frozen_string_literal: true

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
        OBJECT_NAME = "v2.core.claimable_sandbox"
        def self.object_name
          "v2.core.claimable_sandbox"
        end

        class Prefill < Stripe::StripeObject
          # Country in which the account holder resides, or in which the business is legally established.
          # Use two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_reader :country
          # Email that this sandbox is meant to be claimed by. Stripe will
          # send an email to this email address before the sandbox expires.
          attr_reader :email
          # Name for the sandbox.
          attr_reader :name

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class SandboxDetails < Stripe::StripeObject
          class ApiKeys < Stripe::StripeObject
            # Used to communicate with [Stripe's MCP server](https://docs.stripe.com/mcp).
            # This allows LLM agents to securely operate on a Stripe account.
            attr_reader :mcp
            # Publicly accessible in a web or mobile app client-side code.
            attr_reader :publishable
            # Should be stored securely in server-side code (such as an environment variable).
            attr_reader :secret

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The sandbox's Stripe account ID.
          attr_reader :account
          # Keys that can be used to set up an integration for this sandbox and operate on the account. This will be present only in the create response, and will be null in subsequent retrieve responses.
          attr_reader :api_keys
          # The livemode sandbox Stripe account ID. This field is only set if the user activates their sandbox
          # and chooses to install your platform's Stripe App in their live account.
          attr_reader :owner_account

          def self.inner_class_types
            @inner_class_types = { api_keys: ApiKeys }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # URL for user to claim sandbox into their existing Stripe account.
        # The value will be null if the sandbox status is `claimed` or `expired`.
        attr_reader :claim_url
        # The timestamp the sandbox was claimed. The value will be null if the sandbox status is not `claimed`.
        attr_reader :claimed_at
        # When the sandbox is created.
        attr_reader :created
        # The timestamp the sandbox will expire. The value will be null if the sandbox is `claimed`.
        attr_reader :expires_at
        # Unique identifier for the Claimable sandbox.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Values prefilled during the creation of the sandbox. When a user claims the sandbox, they will be able to update these values.
        attr_reader :prefill
        # Data about the Stripe sandbox object.
        attr_reader :sandbox_details
        # Status of the sandbox. One of `unclaimed`, `expired`, `claimed`.
        attr_reader :status
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = { prefill: Prefill, sandbox_details: SandboxDetails }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
