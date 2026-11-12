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

          class StripeAction < ::Stripe::StripeObject
            # Public display name captured when the action occurs.
            attr_reader :display_name

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
          # Set when a display name is available for an action performed by Stripe.
          attr_reader :stripe_action
          # The type of actor.
          attr_reader :type
          # Set when the actor is a user.
          attr_reader :user

          def self.inner_class_types
            @inner_class_types = { api_key: ApiKey, stripe_action: StripeAction, user: User }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Details < ::Stripe::StripeObject
          class AccountSecurity < ::Stripe::StripeObject
            class NewAnomalySettings < ::Stripe::StripeObject
              # Whether dormant API key protection is enabled.
              attr_reader :dormant_api_key_protection_enabled
              # Whether money movement anomaly detection is enabled.
              attr_reader :money_movement_anomaly_detection_enabled
              # Whether request-level anomaly detection is enabled.
              attr_reader :request_level_anomaly_detection_enabled

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class OldAnomalySettings < ::Stripe::StripeObject
              # Whether dormant API key protection is enabled.
              attr_reader :dormant_api_key_protection_enabled
              # Whether money movement anomaly detection is enabled.
              attr_reader :money_movement_anomaly_detection_enabled
              # Whether request-level anomaly detection is enabled.
              attr_reader :request_level_anomaly_detection_enabled

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Anomaly detection settings after the change.
            attr_reader :new_anomaly_settings
            # Anomaly detection settings before the change.
            attr_reader :old_anomaly_settings

            def self.inner_class_types
              @inner_class_types = {
                new_anomaly_settings: NewAnomalySettings,
                old_anomaly_settings: OldAnomalySettings,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

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

          class Authentication < ::Stripe::StripeObject
            # Backup email address involved in the authentication.
            attr_reader :backup_email
            # Type of challenge used for the authentication.
            attr_reader :challenge_type
            # Surface where the authentication occurred.
            attr_reader :surface
            # Target email address involved in the authentication.
            attr_reader :target_email

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Connect < ::Stripe::StripeObject
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

            class NewExpressBrandingSettings < ::Stripe::StripeObject
              # Border radius for the Express Dashboard.
              attr_reader :border_radius
              # Primary button background color for the Express Dashboard.
              attr_reader :primary_button_background_color
              # Primary color for the Express Dashboard.
              attr_reader :primary_color
              # Secondary button background color for the Express Dashboard.
              attr_reader :secondary_button_background_color

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class NewSettings < ::Stripe::StripeObject
              # The display name shown on the onboarding experience and Dashboard. This is different from the business legal name.
              attr_reader :business_name
              # Whether platform branding is copied to new connected accounts. These also appear on invoices, receipts, and other Stripe products.
              attr_reader :copy_platform_branding_to_new_connected_accounts
              # Whether the support email is hidden on onboarding surfaces.
              attr_reader :hide_onboarding_support_email
              # Whether the support phone number is hidden on onboarding surfaces.
              attr_reader :hide_onboarding_support_phone
              # Whether the support URL is hidden on onboarding surfaces.
              attr_reader :hide_onboarding_support_url
              # Identifier of the icon file (file_* ID).
              attr_reader :icon
              # Identifier of the logo file (file_* ID).
              attr_reader :logo
              # The platform's default payout statement descriptor. It appears on the bank statements of the platform's connected accounts for their payouts.
              attr_reader :payout_statement_descriptor
              # A CSS hex color value representing the primary branding color, applied to the onboarding experience and the Stripe Dashboard.
              attr_reader :primary_color
              # A CSS hex color value representing the secondary branding color, applied to the onboarding experience and the Stripe Dashboard.
              attr_reader :secondary_color

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class OldExpressBrandingSettings < ::Stripe::StripeObject
              # Border radius for the Express Dashboard.
              attr_reader :border_radius
              # Primary button background color for the Express Dashboard.
              attr_reader :primary_button_background_color
              # Primary color for the Express Dashboard.
              attr_reader :primary_color
              # Secondary button background color for the Express Dashboard.
              attr_reader :secondary_button_background_color

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class OldSettings < ::Stripe::StripeObject
              # The display name shown on the onboarding experience and Dashboard. This is different from the business legal name.
              attr_reader :business_name
              # Whether platform branding is copied to new connected accounts. These also appear on invoices, receipts, and other Stripe products.
              attr_reader :copy_platform_branding_to_new_connected_accounts
              # Whether the support email is hidden on onboarding surfaces.
              attr_reader :hide_onboarding_support_email
              # Whether the support phone number is hidden on onboarding surfaces.
              attr_reader :hide_onboarding_support_phone
              # Whether the support URL is hidden on onboarding surfaces.
              attr_reader :hide_onboarding_support_url
              # Identifier of the icon file (file_* ID).
              attr_reader :icon
              # Identifier of the logo file (file_* ID).
              attr_reader :logo
              # The platform's default payout statement descriptor. It appears on the bank statements of the platform's connected accounts for their payouts.
              attr_reader :payout_statement_descriptor
              # A CSS hex color value representing the primary branding color, applied to the onboarding experience and the Stripe Dashboard.
              attr_reader :primary_color
              # A CSS hex color value representing the secondary branding color, applied to the onboarding experience and the Stripe Dashboard.
              attr_reader :secondary_color

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The Connect application.
            attr_reader :application
            # Express Dashboard branding settings after the change. Set for the connect_express_branding_updated action.
            attr_reader :new_express_branding_settings
            # Connect settings after the change. Set for the connect_settings_updated action.
            attr_reader :new_settings
            # Express Dashboard branding settings before the change. Set for the connect_express_branding_updated action.
            attr_reader :old_express_branding_settings
            # Connect settings before the change. Set for the connect_settings_updated action.
            attr_reader :old_settings
            # The site link route. Set for the connect_site_link_updated action.
            attr_reader :site_link_route

            def self.inner_class_types
              @inner_class_types = {
                application: Application,
                new_express_branding_settings: NewExpressBrandingSettings,
                new_settings: NewSettings,
                old_express_branding_settings: OldExpressBrandingSettings,
                old_settings: OldSettings,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class DataExport < ::Stripe::StripeObject
            # Name of export type.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class EventDestination < ::Stripe::StripeObject
            class NewConfiguration < ::Stripe::StripeObject
              class AmazonEventbridge < ::Stripe::StripeObject
                # AWS account ID configured for the event destination.
                attr_reader :aws_account_id
                # ARN of the AWS event source configured for the event destination.
                attr_reader :aws_event_source_arn
                # AWS region configured for the event destination.
                attr_reader :aws_region

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class AzureEventGrid < ::Stripe::StripeObject
                # Azure partner topic name configured for the event destination.
                attr_reader :azure_partner_topic_name
                # Azure region configured for the event destination.
                attr_reader :azure_region
                # Azure resource group name configured for the event destination.
                attr_reader :azure_resource_group_name
                # Azure subscription ID configured for the event destination.
                attr_reader :azure_subscription_id

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class WebhookEndpoint < ::Stripe::StripeObject
                # URL configured for the webhook endpoint.
                attr_reader :url

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Amazon EventBridge configuration.
              attr_reader :amazon_eventbridge
              # Azure Event Grid configuration.
              attr_reader :azure_event_grid
              # Event types subscribed to by the destination. ["*"] subscribes to all V1 webhook events.
              attr_reader :enabled_events
              # Event source selectors: @self, @accounts, @organization_members, or @organization_members/@accounts.
              attr_reader :events_from
              # Status of the event destination.
              attr_reader :status
              # Webhook endpoint configuration.
              attr_reader :webhook_endpoint

              def self.inner_class_types
                @inner_class_types = {
                  amazon_eventbridge: AmazonEventbridge,
                  azure_event_grid: AzureEventGrid,
                  webhook_endpoint: WebhookEndpoint,
                }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class OldConfiguration < ::Stripe::StripeObject
              class AmazonEventbridge < ::Stripe::StripeObject
                # AWS account ID configured for the event destination.
                attr_reader :aws_account_id
                # ARN of the AWS event source configured for the event destination.
                attr_reader :aws_event_source_arn
                # AWS region configured for the event destination.
                attr_reader :aws_region

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class AzureEventGrid < ::Stripe::StripeObject
                # Azure partner topic name configured for the event destination.
                attr_reader :azure_partner_topic_name
                # Azure region configured for the event destination.
                attr_reader :azure_region
                # Azure resource group name configured for the event destination.
                attr_reader :azure_resource_group_name
                # Azure subscription ID configured for the event destination.
                attr_reader :azure_subscription_id

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class WebhookEndpoint < ::Stripe::StripeObject
                # URL configured for the webhook endpoint.
                attr_reader :url

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Amazon EventBridge configuration.
              attr_reader :amazon_eventbridge
              # Azure Event Grid configuration.
              attr_reader :azure_event_grid
              # Event types subscribed to by the destination. ["*"] subscribes to all V1 webhook events.
              attr_reader :enabled_events
              # Event source selectors: @self, @accounts, @organization_members, or @organization_members/@accounts.
              attr_reader :events_from
              # Status of the event destination.
              attr_reader :status
              # Webhook endpoint configuration.
              attr_reader :webhook_endpoint

              def self.inner_class_types
                @inner_class_types = {
                  amazon_eventbridge: AmazonEventbridge,
                  azure_event_grid: AzureEventGrid,
                  webhook_endpoint: WebhookEndpoint,
                }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Configuration after the change. Set for added and updated actions, absent for removed actions.
            attr_reader :new_configuration
            # Configuration before the change. Set for updated and removed actions, absent for added actions.
            attr_reader :old_configuration
            # Type of the event destination.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {
                new_configuration: NewConfiguration,
                old_configuration: OldConfiguration,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Radar < ::Stripe::StripeObject
            class NewRule < ::Stripe::StripeObject
              # Action performed when the rule matches.
              attr_reader :action
              # Whether the rule is enabled.
              attr_reader :enabled
              # Identifier of the rule.
              attr_reader :id
              # Objective of the rule.
              attr_reader :objective
              # Rule expression evaluated to determine whether the rule matches.
              attr_reader :predicate
              # Percentage of matching traffic to which the rule applies, between 0 and 100, serialized as a decimal string.
              attr_reader :rollout_percentage
              # Type of entity evaluated by the rule.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { rollout_percentage: :decimal_string }
              end
            end

            class OldRule < ::Stripe::StripeObject
              # Action performed when the rule matches.
              attr_reader :action
              # Whether the rule is enabled.
              attr_reader :enabled
              # Identifier of the rule.
              attr_reader :id
              # Objective of the rule.
              attr_reader :objective
              # Rule expression evaluated to determine whether the rule matches.
              attr_reader :predicate
              # Percentage of matching traffic to which the rule applies, between 0 and 100, serialized as a decimal string.
              attr_reader :rollout_percentage
              # Type of entity evaluated by the rule.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { rollout_percentage: :decimal_string }
              end
            end
            # Risk preference after a preference switch carried by a protection-toggle action.
            attr_reader :new_risk_preference
            # Rules after the change. Set for add, update, enable, and disable actions; absent for remove actions.
            attr_reader :new_rules
            # Risk preference before a preference switch carried by a protection-toggle action.
            attr_reader :old_risk_preference
            # Rules before the change. Set for update, removal, enable, and disable actions; absent for add actions.
            attr_reader :old_rules

            def self.inner_class_types
              @inner_class_types = { new_rules: NewRule, old_rules: OldRule }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                new_rules: {
                  kind: :array,
                  element: { kind: :object, fields: { rollout_percentage: :decimal_string } },
                },
                old_rules: {
                  kind: :array,
                  element: { kind: :object, fields: { rollout_percentage: :decimal_string } },
                },
              }
            end
          end

          class Scim < ::Stripe::StripeObject
            # Name of the SCIM group.
            attr_reader :group_name
            # Group roles after the change; only set for the group roles-updated action (scim_group_roles_updated).
            attr_reader :new_roles
            # Group roles before the change; only set for the group roles-updated action (scim_group_roles_updated).
            attr_reader :old_roles
            # The context the roles were assigned in.
            attr_reader :role_assigned_context
            # Email address of the affected member.
            attr_reader :user_email

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Sso < ::Stripe::StripeObject
            # SSO enforcement level.
            attr_reader :mandate

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class StripeAccess < ::Stripe::StripeObject
            class Reason < ::Stripe::StripeObject
              class AccessRequest < ::Stripe::StripeObject
                # Identifier of the access request.
                attr_reader :id

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class SupportRelationship < ::Stripe::StripeObject
                # Identifier of the support relationship.
                attr_reader :id
                # Name of the support contact, when available.
                attr_reader :name
                # Role of the support contact, when available.
                attr_reader :role

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class SupportTicket < ::Stripe::StripeObject
                # Identifier of the support ticket.
                attr_reader :id

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Set when access is granted through an access request.
              attr_reader :access_request
              # Set when access is granted through a support relationship.
              attr_reader :support_relationship
              # Set when access is granted through a support ticket.
              attr_reader :support_ticket
              # The type of reason for granting access.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {
                  access_request: AccessRequest,
                  support_relationship: SupportRelationship,
                  support_ticket: SupportTicket,
                }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The level of Dashboard access granted.
            attr_reader :access_type
            # The reason for granting Stripe access.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = { reason: Reason }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class UserAccess < ::Stripe::StripeObject
            class DashboardClient < ::Stripe::StripeObject
              # User-Agent header for the user access action.
              attr_reader :user_agent

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
              # Risk signals for the user access action.
              attr_reader :signals

              def self.inner_class_types
                @inner_class_types = { signals: Signal }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
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
            # Surface where the user access action started.
            attr_reader :surface

            def self.inner_class_types
              @inner_class_types = { dashboard_client: DashboardClient, network: Network, risk: Risk }
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

          class UserProfile < ::Stripe::StripeObject
            # Email address after the change.
            attr_reader :new_email
            # Redacted phone number after the change.
            attr_reader :new_redacted_phone_number
            # Email address before the change.
            attr_reader :old_email
            # Redacted phone number before the change.
            attr_reader :old_redacted_phone_number

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
          # Details of an account security action.
          attr_reader :account_security
          # Details of an API key action.
          attr_reader :api_key
          # Details of an authentication action.
          attr_reader :authentication
          # Details of a Connect action.
          attr_reader :connect
          # Details of a data export action.
          attr_reader :data_export
          # Details of an event destination action.
          attr_reader :event_destination
          # Details of a Radar action.
          attr_reader :radar
          # Details of a SCIM action.
          attr_reader :scim
          # Details of an SSO action.
          attr_reader :sso
          # Details of a Stripe access action.
          attr_reader :stripe_access
          # The action group type of the activity log entry.
          attr_reader :type
          # Details of a user access action.
          attr_reader :user_access
          # Details of a user invite action.
          attr_reader :user_invite
          # Details of a user profile action.
          attr_reader :user_profile
          # Details of a user role change action.
          attr_reader :user_roles

          def self.inner_class_types
            @inner_class_types = {
              account_security: AccountSecurity,
              api_key: ApiKey,
              authentication: Authentication,
              connect: Connect,
              data_export: DataExport,
              event_destination: EventDestination,
              radar: Radar,
              scim: Scim,
              sso: Sso,
              stripe_access: StripeAccess,
              user_access: UserAccess,
              user_invite: UserInvite,
              user_profile: UserProfile,
              user_roles: UserRoles,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              radar: {
                kind: :object,
                fields: {
                  new_rules: {
                    kind: :array,
                    element: { kind: :object, fields: { rollout_percentage: :decimal_string } },
                  },
                  old_rules: {
                    kind: :array,
                    element: { kind: :object, fields: { rollout_percentage: :decimal_string } },
                  },
                },
              },
            }
          end
        end

        class RelatedObject < ::Stripe::StripeObject
          # Unique identifier of the object.
          attr_reader :id
          # Type of the object.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Request < ::Stripe::StripeObject
          # ID of the API request.
          attr_reader :id

          def self.inner_class_types
            @inner_class_types = {}
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
        # The object related to the activity log entry.
        attr_reader :related_object
        # The API request that instigated the action.
        attr_reader :request
        # The type of action that was performed.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            actor: Actor,
            details: Details,
            related_object: RelatedObject,
            request: Request,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = {
            details: {
              kind: :object,
              fields: {
                radar: {
                  kind: :object,
                  fields: {
                    new_rules: {
                      kind: :array,
                      element: { kind: :object, fields: { rollout_percentage: :decimal_string } },
                    },
                    old_rules: {
                      kind: :array,
                      element: { kind: :object, fields: { rollout_percentage: :decimal_string } },
                    },
                  },
                },
              },
            },
          }
        end
      end
    end
  end
end
