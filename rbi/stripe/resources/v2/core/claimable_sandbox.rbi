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
        class OnboardingLinkDetails < ::Stripe::StripeObject
          # The timestamp the onboarding link expires.
          sig { returns(String) }
          def expires_at; end
          # The URL the user will be redirected to if the onboarding link is expired or invalid.
          # The URL specified should attempt to generate a new onboarding link,
          # and re-direct the user to this new onboarding link so that they can proceed with the onboarding flow.
          sig { returns(String) }
          def refresh_url; end
          # URL that will redirect the user to either claim or onboard the claimable sandbox depending on its status.
          sig { returns(String) }
          def url; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class OwnerDetails < ::Stripe::StripeObject
          # The ID of the livemode Stripe account that owns the sandbox.
          # This field is only set when owner_details.app_install_status is `installed`.
          sig { returns(T.nilable(String)) }
          def account; end
          # Indicates whether the platform app is installed on the sandbox’s livemode owner account.
          sig { returns(String) }
          def app_install_status; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
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
          def self.inner_class_types
            @inner_class_types = {api_keys: ApiKeys}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The app channel that will be used when pre-installing your app on the claimable sandbox.
        sig { returns(String) }
        def app_channel; end
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
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Details about the onboarding link.
        sig { returns(OnboardingLinkDetails) }
        def onboarding_link_details; end
        # Details about the livemode owner account of the sandbox.
        # This will be null until the sandbox is claimed.
        sig { returns(T.nilable(OwnerDetails)) }
        def owner_details; end
        # Values prefilled during the creation of the sandbox. When a user claims the sandbox, they will be able to update these values.
        sig { returns(Prefill) }
        def prefill; end
        # Data about the Stripe sandbox object.
        sig { returns(SandboxDetails) }
        def sandbox_details; end
        # Status of the sandbox.
        sig { returns(String) }
        def status; end
      end
    end
  end
end