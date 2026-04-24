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
          # Details of a user invite action.
          sig { returns(T.nilable(UserInvite)) }
          def user_invite; end
          # Details of a user role change action.
          sig { returns(T.nilable(UserRoles)) }
          def user_roles; end
          def self.inner_class_types
            @inner_class_types = {api_key: ApiKey, user_invite: UserInvite, user_roles: UserRoles}
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