# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Iam
      # An activity log records a single action performed on an account.
      class ActivityLog < APIResource
        class Actor < ::Stripe::StripeObject
          class ApiKey < ::Stripe::StripeObject
            # Unique identifier of the API key.
            sig { returns(String) }
            def id; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class User < ::Stripe::StripeObject
            # Email address of the user.
            sig { returns(String) }
            def email; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Set when the actor is an API key.
          sig { returns(T.nilable(ApiKey)) }
          def api_key; end
          # The type of actor.
          sig { returns(String) }
          def type; end
          # Set when the actor is a user.
          sig { returns(T.nilable(User)) }
          def user; end
          def self.inner_class_types
            @inner_class_types = {api_key: ApiKey, user: User}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Details < ::Stripe::StripeObject
          class ApiKey < ::Stripe::StripeObject
            class ManagedBy < ::Stripe::StripeObject
              class Application < ::Stripe::StripeObject
                # Identifier of the application.
                sig { returns(String) }
                def id; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # An application.
              sig { returns(T.nilable(Application)) }
              def application; end
              # The type of entity.
              sig { returns(String) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {application: Application}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Timestamp when the API key was created.
            sig { returns(String) }
            def created; end
            # Timestamp when the API key expires.
            sig { returns(T.nilable(String)) }
            def expires_at; end
            # Unique identifier of the API key.
            sig { returns(String) }
            def id; end
            # List of IP addresses allowed to use this API key.
            sig { returns(T::Array[String]) }
            def ip_allowlist; end
            # Information about the entity managing this API key.
            sig { returns(T.nilable(ManagedBy)) }
            def managed_by; end
            # Name of the API key.
            sig { returns(T.nilable(String)) }
            def name; end
            # Unique identifier of the new API key, set when this key was rotated.
            sig { returns(T.nilable(String)) }
            def new_key; end
            # Note or description for the API key.
            sig { returns(T.nilable(String)) }
            def note; end
            # Type of the API key.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {managed_by: ManagedBy}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class UserAccess < ::Stripe::StripeObject
            class Authentication < ::Stripe::StripeObject
              class PrimaryFactor < ::Stripe::StripeObject
                # SSO provider for the authentication factor.
                sig { returns(T.nilable(String)) }
                def sso_provider; end
                # Type of authentication factor.
                sig { returns(String) }
                def type; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class SecondaryFactor < ::Stripe::StripeObject
                # SSO provider for the authentication factor.
                sig { returns(T.nilable(String)) }
                def sso_provider; end
                # Type of authentication factor.
                sig { returns(String) }
                def type; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Primary authentication factor.
              sig { returns(PrimaryFactor) }
              def primary_factor; end
              # Secondary authentication factors.
              sig { returns(T::Array[SecondaryFactor]) }
              def secondary_factors; end
              def self.inner_class_types
                @inner_class_types = {
                  primary_factor: PrimaryFactor,
                  secondary_factors: SecondaryFactor,
                }
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class DashboardClient < ::Stripe::StripeObject
              # Browser used for the user access action.
              sig { returns(String) }
              def browser; end
              # Browser version used for the user access action.
              sig { returns(String) }
              def browser_version; end
              # Device type used for the user access action.
              sig { returns(String) }
              def device_type; end
              # Operating system used for the user access action.
              sig { returns(String) }
              def os; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Network < ::Stripe::StripeObject
              # City for the user access action.
              sig { returns(String) }
              def city; end
              # Country for the user access action.
              sig { returns(String) }
              def country; end
              # IP address for the user access action.
              sig { returns(String) }
              def ip_address; end
              # Region for the user access action.
              sig { returns(String) }
              def region; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Risk < ::Stripe::StripeObject
              class Signal < ::Stripe::StripeObject
                class NovelDevice < ::Stripe::StripeObject
                  def self.inner_class_types
                    @inner_class_types = {}
                  end
                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The user access action used a novel device.
                sig { returns(T.nilable(NovelDevice)) }
                def novel_device; end
                # Type of risk signal.
                sig { returns(String) }
                def type; end
                def self.inner_class_types
                  @inner_class_types = {novel_device: NovelDevice}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Risk level for the user access action.
              sig { returns(String) }
              def level; end
              # Risk signals for the user access action.
              sig { returns(T::Array[Signal]) }
              def signals; end
              def self.inner_class_types
                @inner_class_types = {signals: Signal}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Authentication details for the user access action.
            sig { returns(Authentication) }
            def authentication; end
            # Dashboard client details for the user access action.
            sig { returns(T.nilable(DashboardClient)) }
            def dashboard_client; end
            # Timestamp when the user access expires.
            sig { returns(String) }
            def expires_at; end
            # Network details for the user access action.
            sig { returns(Network) }
            def network; end
            # Risk details for the user access action.
            sig { returns(Risk) }
            def risk; end
            # Roles associated with the user access action.
            sig { returns(T::Array[String]) }
            def roles; end
            # Session fingerprint for the user access action.
            sig { returns(String) }
            def session_fingerprint; end
            # Surface where the user access action started.
            sig { returns(String) }
            def surface; end
            def self.inner_class_types
              @inner_class_types = {
                authentication: Authentication,
                dashboard_client: DashboardClient,
                network: Network,
                risk: Risk,
              }
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class UserInvite < ::Stripe::StripeObject
            # Email address of the invited user.
            sig { returns(String) }
            def invited_user_email; end
            # Roles assigned to the invited user.
            sig { returns(T::Array[String]) }
            def roles; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class UserRoles < ::Stripe::StripeObject
            # Roles the user has after the change.
            sig { returns(T::Array[String]) }
            def new_roles; end
            # Roles the user had before the change.
            sig { returns(T::Array[String]) }
            def old_roles; end
            # Source of the role change.
            sig { returns(String) }
            def source; end
            # Email address of the user whose roles were changed.
            sig { returns(String) }
            def user_email; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details of an API key action.
          sig { returns(T.nilable(ApiKey)) }
          def api_key; end
          # The action group type of the activity log entry.
          sig { returns(String) }
          def type; end
          # Details of a user access action.
          sig { returns(T.nilable(UserAccess)) }
          def user_access; end
          # Details of a user invite action.
          sig { returns(T.nilable(UserInvite)) }
          def user_invite; end
          # Details of a user role change action.
          sig { returns(T.nilable(UserRoles)) }
          def user_roles; end
          def self.inner_class_types
            @inner_class_types = {
              api_key: ApiKey,
              user_access: UserAccess,
              user_invite: UserInvite,
              user_roles: UserRoles,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The actor that performed the action.
        sig { returns(Actor) }
        def actor; end
        # The account on which the action was performed.
        sig { returns(String) }
        def context; end
        # Timestamp when the activity log entry was created.
        sig { returns(String) }
        def created; end
        # Action-specific details of the activity log entry.
        sig { returns(Details) }
        def details; end
        # Unique identifier of the activity log entry.
        sig { returns(String) }
        def id; end
        # Whether the action was performed in live mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The type of action that was performed.
        sig { returns(String) }
        def type; end
      end
    end
  end
end