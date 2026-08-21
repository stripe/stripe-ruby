# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Iam
      # An activity log records a single action performed on an account.
      class ActivityLog < APIResource
        OBJECT_NAME = "v2.iam.activity_log"
        def self.object_name
          "v2.iam.activity_log"
        end

        class Actor < ::Stripe::StripeObject
          class ApiKey < ::Stripe::StripeObject
            # Unique identifier of the API key.
            attr_reader :id

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class User < ::Stripe::StripeObject
            # Email address of the user.
            attr_reader :email

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Set when the actor is an API key.
          attr_reader :api_key
          # The type of actor.
          attr_reader :type
          # Set when the actor is a user.
          attr_reader :user

          def self.inner_class_types
            @inner_class_types = { api_key: ApiKey, user: User }
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
                attr_reader :id

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # An application.
              attr_reader :application
              # The type of entity.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = { application: Application }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Timestamp when the API key was created.
            attr_reader :created
            # Timestamp when the API key expires.
            attr_reader :expires_at
            # Unique identifier of the API key.
            attr_reader :id
            # List of IP addresses allowed to use this API key.
            attr_reader :ip_allowlist
            # Information about the entity managing this API key.
            attr_reader :managed_by
            # Name of the API key.
            attr_reader :name
            # Unique identifier of the new API key, set when this key was rotated.
            attr_reader :new_key
            # Note or description for the API key.
            attr_reader :note
            # Type of the API key.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = { managed_by: ManagedBy }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class UserAccess < ::Stripe::StripeObject
            class Authentication < ::Stripe::StripeObject
              class PrimaryFactor < ::Stripe::StripeObject
                # SSO provider for the authentication factor.
                attr_reader :sso_provider
                # Type of authentication factor.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class SecondaryFactor < ::Stripe::StripeObject
                # SSO provider for the authentication factor.
                attr_reader :sso_provider
                # Type of authentication factor.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Primary authentication factor.
              attr_reader :primary_factor
              # Secondary authentication factors.
              attr_reader :secondary_factors

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
              attr_reader :browser
              # Browser version used for the user access action.
              attr_reader :browser_version
              # Device type used for the user access action.
              attr_reader :device_type
              # Operating system used for the user access action.
              attr_reader :os

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Network < ::Stripe::StripeObject
              # City for the user access action.
              attr_reader :city
              # Country for the user access action.
              attr_reader :country
              # IP address for the user access action.
              attr_reader :ip_address
              # Region for the user access action.
              attr_reader :region

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
                attr_reader :novel_device
                # Type of risk signal.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = { novel_device: NovelDevice }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Risk level for the user access action.
              attr_reader :level
              # Risk signals for the user access action.
              attr_reader :signals

              def self.inner_class_types
                @inner_class_types = { signals: Signal }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Authentication details for the user access action.
            attr_reader :authentication
            # Dashboard client details for the user access action.
            attr_reader :dashboard_client
            # Timestamp when the user access expires.
            attr_reader :expires_at
            # Network details for the user access action.
            attr_reader :network
            # Risk details for the user access action.
            attr_reader :risk
            # Roles associated with the user access action.
            attr_reader :roles
            # Session fingerprint for the user access action.
            attr_reader :session_fingerprint
            # Surface where the user access action started.
            attr_reader :surface

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
            attr_reader :invited_user_email
            # Roles assigned to the invited user.
            attr_reader :roles

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class UserRoles < ::Stripe::StripeObject
            # Roles the user has after the change.
            attr_reader :new_roles
            # Roles the user had before the change.
            attr_reader :old_roles
            # Source of the role change.
            attr_reader :source
            # Email address of the user whose roles were changed.
            attr_reader :user_email

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details of an API key action.
          attr_reader :api_key
          # The action group type of the activity log entry.
          attr_reader :type
          # Details of a user access action.
          attr_reader :user_access
          # Details of a user invite action.
          attr_reader :user_invite
          # Details of a user role change action.
          attr_reader :user_roles

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
        attr_reader :actor
        # The account on which the action was performed.
        attr_reader :context
        # Timestamp when the activity log entry was created.
        attr_reader :created
        # Action-specific details of the activity log entry.
        attr_reader :details
        # Unique identifier of the activity log entry.
        attr_reader :id
        # Whether the action was performed in live mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The type of action that was performed.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = { actor: Actor, details: Details }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
