# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      # A claimable sandbox is a Stripe sandbox that a user can claim into a new or existing Stripe account
      # through an onboarding link. You can prefill it with an email address, sandbox name, and country.
      # Claimable sandboxes have 60 days to be claimed. After this expiration time has passed,
      # if the sandbox is not claimed, it will be deleted.
      class ClaimableSandbox < APIResource
        class OnboardingLinkDetails < ::Stripe::StripeObject
          # Time at which the onboarding link expires. Represented as an RFC 3339 timestamp in UTC
          # with millisecond precision, for example `2022-09-18T13:22:18.123Z`.
          sig { returns(String) }
          def expires_at; end
          # The URL the user will be redirected to if the onboarding link is expired or invalid.
          # The URL specified should attempt to generate a new onboarding link,
          # and re-direct the user to this new onboarding link so that they can proceed with the onboarding flow.
          sig { returns(String) }
          def refresh_url; end
          # The URL offered to the user as a way back to your app after they claim the sandbox.
          sig { returns(T.nilable(String)) }
          def return_url; end
          # The URL that lets a user claim the sandbox or continue onboarding their Stripe account,
          # depending on the sandbox's status.
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
          # The ID of the live mode Stripe account that owns the sandbox.
          # This field is only set when `owner_details.app_install_status` is `installed`.
          sig { returns(T.nilable(String)) }
          def account; end
          # Indicates whether the platform app is installed on the sandbox’s live mode owner account.
          sig { returns(T.nilable(String)) }
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
          # Email address of the user who will claim the sandbox.
          # Stripe sends this address an invitation to claim the sandbox and a reminder before the unclaimed sandbox expires.
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
            class Mcp < ::Stripe::StripeObject
              class SecretKey < ::Stripe::StripeObject
                # The plaintext token for the API key.
                sig { returns(T.nilable(String)) }
                def token; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Time at which the API key was created. Represented as an RFC 3339 timestamp in UTC
              # with millisecond precision, for example `2022-09-18T13:22:18.123Z`.
              sig { returns(String) }
              def created; end
              # Time at which the API key expires. Represented as an RFC 3339 timestamp in UTC
              # with millisecond precision, for example `2022-09-18T13:22:18.123Z`.
              sig { returns(T.nilable(String)) }
              def expires_at; end
              # Unique identifier of the API key.
              sig { returns(String) }
              def id; end
              # Token for the secret key. Present only in the create response;
              # null in subsequent retrieve responses.
              sig { returns(T.nilable(SecretKey)) }
              def secret_key; end
              # Current status of the API key.
              sig { returns(String) }
              def status; end
              # Type of the API key.
              sig { returns(String) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {secret_key: SecretKey}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Publishable < ::Stripe::StripeObject
              class PublishableKey < ::Stripe::StripeObject
                # The plaintext token for the API key.
                sig { returns(T.nilable(String)) }
                def token; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Time at which the API key was created. Represented as an RFC 3339 timestamp in UTC
              # with millisecond precision, for example `2022-09-18T13:22:18.123Z`.
              sig { returns(String) }
              def created; end
              # Time at which the API key expires. Represented as an RFC 3339 timestamp in UTC
              # with millisecond precision, for example `2022-09-18T13:22:18.123Z`.
              sig { returns(T.nilable(String)) }
              def expires_at; end
              # Unique identifier of the API key.
              sig { returns(String) }
              def id; end
              # Token for the publishable key. Present only in the create response;
              # null in subsequent retrieve responses.
              sig { returns(T.nilable(PublishableKey)) }
              def publishable_key; end
              # Current status of the API key.
              sig { returns(String) }
              def status; end
              # Type of the API key.
              sig { returns(String) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {publishable_key: PublishableKey}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Secret < ::Stripe::StripeObject
              class SecretKey < ::Stripe::StripeObject
                # The plaintext token for the API key.
                sig { returns(T.nilable(String)) }
                def token; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Time at which the API key was created. Represented as an RFC 3339 timestamp in UTC
              # with millisecond precision, for example `2022-09-18T13:22:18.123Z`.
              sig { returns(String) }
              def created; end
              # Time at which the API key expires. Represented as an RFC 3339 timestamp in UTC
              # with millisecond precision, for example `2022-09-18T13:22:18.123Z`.
              sig { returns(T.nilable(String)) }
              def expires_at; end
              # Unique identifier of the API key.
              sig { returns(String) }
              def id; end
              # Token for the secret key. Present only in the create response;
              # null in subsequent retrieve responses.
              sig { returns(T.nilable(SecretKey)) }
              def secret_key; end
              # Current status of the API key.
              sig { returns(String) }
              def status; end
              # Type of the API key.
              sig { returns(String) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {secret_key: SecretKey}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Object hash for the sandbox's MCP key.
            # Null unless `enable_mcp_access: true` was passed in the creation request.
            sig { returns(T.nilable(Mcp)) }
            def mcp; end
            # Object hash for the sandbox's publishable key.
            sig { returns(Publishable) }
            def publishable; end
            # Object hash for the sandbox's secret key.
            sig { returns(Secret) }
            def secret; end
            def self.inner_class_types
              @inner_class_types = {mcp: Mcp, publishable: Publishable, secret: Secret}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The sandbox's Stripe account ID.
          sig { returns(String) }
          def account; end
          # Keys that can be used to set up an integration for this sandbox and operate on the account.
          # Present in the create response. To fetch this field in the retrieve response,
          # pass `sandbox_details.api_keys` in the `include` parameter.
          sig { returns(T.nilable(ApiKeys)) }
          def api_keys; end
          def self.inner_class_types
            @inner_class_types = {api_keys: ApiKeys}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The distribution channel used to pre-install your Stripe App on the claimable sandbox.
        # Use `testing` to install your app's external test version or `public` to install its published version.
        sig { returns(String) }
        def channel; end
        # Time at which the sandbox was claimed. Set when the status is `claimed` or `live`.
        # Represented as an RFC 3339 timestamp in UTC with millisecond precision,
        # for example `2022-09-18T13:22:18.123Z`.
        sig { returns(T.nilable(String)) }
        def claimed_at; end
        # Time at which the sandbox was created. Represented as an RFC 3339 timestamp in UTC
        # with millisecond precision, for example `2022-09-18T13:22:18.123Z`.
        sig { returns(String) }
        def created; end
        # Time at which the unclaimed sandbox expires. Null when the status is `claimed` or `live`.
        # Represented as an RFC 3339 timestamp in UTC with millisecond precision,
        # for example `2022-09-18T13:22:18.123Z`.
        sig { returns(T.nilable(String)) }
        def expires_at; end
        # Unique identifier for the claimable sandbox.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Details about the onboarding link.
        # Null when the sandbox status is `live` or `expired`.
        sig { returns(T.nilable(OnboardingLinkDetails)) }
        def onboarding_link_details; end
        # Details about the live mode owner account of the sandbox.
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