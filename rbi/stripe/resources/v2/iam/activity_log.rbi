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
          class StripeAction < ::Stripe::StripeObject
            # Public display name captured when the action occurs.
            sig { returns(String) }
            def display_name; end
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
          # Set when a display name is available for an action performed by Stripe.
          sig { returns(T.nilable(StripeAction)) }
          def stripe_action; end
          # The type of actor.
          sig { returns(String) }
          def type; end
          # Set when the actor is a user.
          sig { returns(T.nilable(User)) }
          def user; end
          def self.inner_class_types
            @inner_class_types = {api_key: ApiKey, stripe_action: StripeAction, user: User}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Details < ::Stripe::StripeObject
          class AccountSecurity < ::Stripe::StripeObject
            class NewAnomalySettings < ::Stripe::StripeObject
              # Whether dormant API key protection is enabled.
              sig { returns(T.nilable(T::Boolean)) }
              def dormant_api_key_protection_enabled; end
              # Whether money movement anomaly detection is enabled.
              sig { returns(T.nilable(T::Boolean)) }
              def money_movement_anomaly_detection_enabled; end
              # Whether request-level anomaly detection is enabled.
              sig { returns(T.nilable(T::Boolean)) }
              def request_level_anomaly_detection_enabled; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class OldAnomalySettings < ::Stripe::StripeObject
              # Whether dormant API key protection is enabled.
              sig { returns(T.nilable(T::Boolean)) }
              def dormant_api_key_protection_enabled; end
              # Whether money movement anomaly detection is enabled.
              sig { returns(T.nilable(T::Boolean)) }
              def money_movement_anomaly_detection_enabled; end
              # Whether request-level anomaly detection is enabled.
              sig { returns(T.nilable(T::Boolean)) }
              def request_level_anomaly_detection_enabled; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Anomaly detection settings after the change.
            sig { returns(T.nilable(NewAnomalySettings)) }
            def new_anomaly_settings; end
            # Anomaly detection settings before the change.
            sig { returns(T.nilable(OldAnomalySettings)) }
            def old_anomaly_settings; end
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
          class Authentication < ::Stripe::StripeObject
            # Backup email address involved in the authentication.
            sig { returns(T.nilable(String)) }
            def backup_email; end
            # Type of challenge used for the authentication.
            sig { returns(T.nilable(String)) }
            def challenge_type; end
            # Surface where the authentication occurred.
            sig { returns(T.nilable(String)) }
            def surface; end
            # Target email address involved in the authentication.
            sig { returns(T.nilable(String)) }
            def target_email; end
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
              sig { returns(String) }
              def id; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class NewExpressBrandingSettings < ::Stripe::StripeObject
              # Border radius for the Express Dashboard.
              sig { returns(T.nilable(String)) }
              def border_radius; end
              # Primary button background color for the Express Dashboard.
              sig { returns(T.nilable(String)) }
              def primary_button_background_color; end
              # Primary color for the Express Dashboard.
              sig { returns(T.nilable(String)) }
              def primary_color; end
              # Secondary button background color for the Express Dashboard.
              sig { returns(T.nilable(String)) }
              def secondary_button_background_color; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class NewSettings < ::Stripe::StripeObject
              # The display name shown on the onboarding experience and Dashboard. This is different from the business legal name.
              sig { returns(T.nilable(String)) }
              def business_name; end
              # Whether platform branding is copied to new connected accounts. These also appear on invoices, receipts, and other Stripe products.
              sig { returns(T.nilable(T::Boolean)) }
              def copy_platform_branding_to_new_connected_accounts; end
              # Whether the support email is hidden on onboarding surfaces.
              sig { returns(T.nilable(T::Boolean)) }
              def hide_onboarding_support_email; end
              # Whether the support phone number is hidden on onboarding surfaces.
              sig { returns(T.nilable(T::Boolean)) }
              def hide_onboarding_support_phone; end
              # Whether the support URL is hidden on onboarding surfaces.
              sig { returns(T.nilable(T::Boolean)) }
              def hide_onboarding_support_url; end
              # Identifier of the icon file (file_* ID).
              sig { returns(T.nilable(String)) }
              def icon; end
              # Identifier of the logo file (file_* ID).
              sig { returns(T.nilable(String)) }
              def logo; end
              # The platform's default payout statement descriptor. It appears on the bank statements of the platform's connected accounts for their payouts.
              sig { returns(T.nilable(String)) }
              def payout_statement_descriptor; end
              # A CSS hex color value representing the primary branding color, applied to the onboarding experience and the Stripe Dashboard.
              sig { returns(T.nilable(String)) }
              def primary_color; end
              # A CSS hex color value representing the secondary branding color, applied to the onboarding experience and the Stripe Dashboard.
              sig { returns(T.nilable(String)) }
              def secondary_color; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class OldExpressBrandingSettings < ::Stripe::StripeObject
              # Border radius for the Express Dashboard.
              sig { returns(T.nilable(String)) }
              def border_radius; end
              # Primary button background color for the Express Dashboard.
              sig { returns(T.nilable(String)) }
              def primary_button_background_color; end
              # Primary color for the Express Dashboard.
              sig { returns(T.nilable(String)) }
              def primary_color; end
              # Secondary button background color for the Express Dashboard.
              sig { returns(T.nilable(String)) }
              def secondary_button_background_color; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class OldSettings < ::Stripe::StripeObject
              # The display name shown on the onboarding experience and Dashboard. This is different from the business legal name.
              sig { returns(T.nilable(String)) }
              def business_name; end
              # Whether platform branding is copied to new connected accounts. These also appear on invoices, receipts, and other Stripe products.
              sig { returns(T.nilable(T::Boolean)) }
              def copy_platform_branding_to_new_connected_accounts; end
              # Whether the support email is hidden on onboarding surfaces.
              sig { returns(T.nilable(T::Boolean)) }
              def hide_onboarding_support_email; end
              # Whether the support phone number is hidden on onboarding surfaces.
              sig { returns(T.nilable(T::Boolean)) }
              def hide_onboarding_support_phone; end
              # Whether the support URL is hidden on onboarding surfaces.
              sig { returns(T.nilable(T::Boolean)) }
              def hide_onboarding_support_url; end
              # Identifier of the icon file (file_* ID).
              sig { returns(T.nilable(String)) }
              def icon; end
              # Identifier of the logo file (file_* ID).
              sig { returns(T.nilable(String)) }
              def logo; end
              # The platform's default payout statement descriptor. It appears on the bank statements of the platform's connected accounts for their payouts.
              sig { returns(T.nilable(String)) }
              def payout_statement_descriptor; end
              # A CSS hex color value representing the primary branding color, applied to the onboarding experience and the Stripe Dashboard.
              sig { returns(T.nilable(String)) }
              def primary_color; end
              # A CSS hex color value representing the secondary branding color, applied to the onboarding experience and the Stripe Dashboard.
              sig { returns(T.nilable(String)) }
              def secondary_color; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The Connect application.
            sig { returns(T.nilable(Application)) }
            def application; end
            # Express Dashboard branding settings after the change. Set for the connect_express_branding_updated action.
            sig { returns(T.nilable(NewExpressBrandingSettings)) }
            def new_express_branding_settings; end
            # Connect settings after the change. Set for the connect_settings_updated action.
            sig { returns(T.nilable(NewSettings)) }
            def new_settings; end
            # Express Dashboard branding settings before the change. Set for the connect_express_branding_updated action.
            sig { returns(T.nilable(OldExpressBrandingSettings)) }
            def old_express_branding_settings; end
            # Connect settings before the change. Set for the connect_settings_updated action.
            sig { returns(T.nilable(OldSettings)) }
            def old_settings; end
            # The site link route. Set for the connect_site_link_updated action.
            sig { returns(T.nilable(String)) }
            def site_link_route; end
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
            sig { returns(String) }
            def type; end
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
                sig { returns(String) }
                def aws_account_id; end
                # ARN of the AWS event source configured for the event destination.
                sig { returns(String) }
                def aws_event_source_arn; end
                # AWS region configured for the event destination.
                sig { returns(String) }
                def aws_region; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class AzureEventGrid < ::Stripe::StripeObject
                # Azure partner topic name configured for the event destination.
                sig { returns(String) }
                def azure_partner_topic_name; end
                # Azure region configured for the event destination.
                sig { returns(String) }
                def azure_region; end
                # Azure resource group name configured for the event destination.
                sig { returns(String) }
                def azure_resource_group_name; end
                # Azure subscription ID configured for the event destination.
                sig { returns(String) }
                def azure_subscription_id; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class WebhookEndpoint < ::Stripe::StripeObject
                # URL configured for the webhook endpoint.
                sig { returns(String) }
                def url; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Amazon EventBridge configuration.
              sig { returns(T.nilable(AmazonEventbridge)) }
              def amazon_eventbridge; end
              # Azure Event Grid configuration.
              sig { returns(T.nilable(AzureEventGrid)) }
              def azure_event_grid; end
              # Event types subscribed to by the destination. ["*"] subscribes to all V1 webhook events.
              sig { returns(T::Array[String]) }
              def enabled_events; end
              # Event source selectors: @self, @accounts, @organization_members, or @organization_members/@accounts.
              sig { returns(T::Array[String]) }
              def events_from; end
              # Status of the event destination.
              sig { returns(String) }
              def status; end
              # Webhook endpoint configuration.
              sig { returns(T.nilable(WebhookEndpoint)) }
              def webhook_endpoint; end
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
                sig { returns(String) }
                def aws_account_id; end
                # ARN of the AWS event source configured for the event destination.
                sig { returns(String) }
                def aws_event_source_arn; end
                # AWS region configured for the event destination.
                sig { returns(String) }
                def aws_region; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class AzureEventGrid < ::Stripe::StripeObject
                # Azure partner topic name configured for the event destination.
                sig { returns(String) }
                def azure_partner_topic_name; end
                # Azure region configured for the event destination.
                sig { returns(String) }
                def azure_region; end
                # Azure resource group name configured for the event destination.
                sig { returns(String) }
                def azure_resource_group_name; end
                # Azure subscription ID configured for the event destination.
                sig { returns(String) }
                def azure_subscription_id; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class WebhookEndpoint < ::Stripe::StripeObject
                # URL configured for the webhook endpoint.
                sig { returns(String) }
                def url; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Amazon EventBridge configuration.
              sig { returns(T.nilable(AmazonEventbridge)) }
              def amazon_eventbridge; end
              # Azure Event Grid configuration.
              sig { returns(T.nilable(AzureEventGrid)) }
              def azure_event_grid; end
              # Event types subscribed to by the destination. ["*"] subscribes to all V1 webhook events.
              sig { returns(T::Array[String]) }
              def enabled_events; end
              # Event source selectors: @self, @accounts, @organization_members, or @organization_members/@accounts.
              sig { returns(T::Array[String]) }
              def events_from; end
              # Status of the event destination.
              sig { returns(String) }
              def status; end
              # Webhook endpoint configuration.
              sig { returns(T.nilable(WebhookEndpoint)) }
              def webhook_endpoint; end
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
            sig { returns(T.nilable(NewConfiguration)) }
            def new_configuration; end
            # Configuration before the change. Set for updated and removed actions, absent for added actions.
            sig { returns(T.nilable(OldConfiguration)) }
            def old_configuration; end
            # Type of the event destination.
            sig { returns(String) }
            def type; end
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
              sig { returns(String) }
              def action; end
              # Whether the rule is enabled.
              sig { returns(T.nilable(T::Boolean)) }
              def enabled; end
              # Identifier of the rule.
              sig { returns(String) }
              def id; end
              # Objective of the rule.
              sig { returns(T.nilable(String)) }
              def objective; end
              # Rule expression evaluated to determine whether the rule matches.
              sig { returns(T.nilable(String)) }
              def predicate; end
              # Percentage of matching traffic to which the rule applies, between 0 and 100, serialized as a decimal string.
              sig { returns(T.nilable(BigDecimal)) }
              def rollout_percentage; end
              # Type of entity evaluated by the rule.
              sig { returns(T.nilable(String)) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
              def self.field_encodings
                @field_encodings = {rollout_percentage: :decimal_string}
              end
            end
            class OldRule < ::Stripe::StripeObject
              # Action performed when the rule matches.
              sig { returns(String) }
              def action; end
              # Whether the rule is enabled.
              sig { returns(T.nilable(T::Boolean)) }
              def enabled; end
              # Identifier of the rule.
              sig { returns(String) }
              def id; end
              # Objective of the rule.
              sig { returns(T.nilable(String)) }
              def objective; end
              # Rule expression evaluated to determine whether the rule matches.
              sig { returns(T.nilable(String)) }
              def predicate; end
              # Percentage of matching traffic to which the rule applies, between 0 and 100, serialized as a decimal string.
              sig { returns(T.nilable(BigDecimal)) }
              def rollout_percentage; end
              # Type of entity evaluated by the rule.
              sig { returns(T.nilable(String)) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
              def self.field_encodings
                @field_encodings = {rollout_percentage: :decimal_string}
              end
            end
            # Risk preference after a preference switch carried by a protection-toggle action.
            sig { returns(T.nilable(String)) }
            def new_risk_preference; end
            # Rules after the change. Set for add, update, enable, and disable actions; absent for remove actions.
            sig { returns(T.nilable(T::Array[NewRule])) }
            def new_rules; end
            # Risk preference before a preference switch carried by a protection-toggle action.
            sig { returns(T.nilable(String)) }
            def old_risk_preference; end
            # Rules before the change. Set for update, removal, enable, and disable actions; absent for add actions.
            sig { returns(T.nilable(T::Array[OldRule])) }
            def old_rules; end
            def self.inner_class_types
              @inner_class_types = {new_rules: NewRule, old_rules: OldRule}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {
                new_rules: {
                  kind: :array,
                  element: {kind: :object, fields: {rollout_percentage: :decimal_string}},
                },
                old_rules: {
                  kind: :array,
                  element: {kind: :object, fields: {rollout_percentage: :decimal_string}},
                },
              }
            end
          end
          class Scim < ::Stripe::StripeObject
            # Name of the SCIM group.
            sig { returns(String) }
            def group_name; end
            # Group roles after the change; only set for the group roles-updated action (scim_group_roles_updated).
            sig { returns(T::Array[String]) }
            def new_roles; end
            # Group roles before the change; only set for the group roles-updated action (scim_group_roles_updated).
            sig { returns(T::Array[String]) }
            def old_roles; end
            # The context the roles were assigned in.
            sig { returns(T.nilable(String)) }
            def role_assigned_context; end
            # Email address of the affected member.
            sig { returns(T.nilable(String)) }
            def user_email; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Sso < ::Stripe::StripeObject
            # SSO enforcement level.
            sig { returns(T.nilable(String)) }
            def mandate; end
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
                sig { returns(String) }
                def id; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class SupportRelationship < ::Stripe::StripeObject
                # Identifier of the support relationship.
                sig { returns(String) }
                def id; end
                # Name of the support contact, when available.
                sig { returns(T.nilable(String)) }
                def name; end
                # Role of the support contact, when available.
                sig { returns(T.nilable(String)) }
                def role; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class SupportTicket < ::Stripe::StripeObject
                # Identifier of the support ticket.
                sig { returns(String) }
                def id; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Set when access is granted through an access request.
              sig { returns(T.nilable(AccessRequest)) }
              def access_request; end
              # Set when access is granted through a support relationship.
              sig { returns(T.nilable(SupportRelationship)) }
              def support_relationship; end
              # Set when access is granted through a support ticket.
              sig { returns(T.nilable(SupportTicket)) }
              def support_ticket; end
              # The type of reason for granting access.
              sig { returns(String) }
              def type; end
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
            sig { returns(String) }
            def access_type; end
            # The reason for granting Stripe access.
            sig { returns(Reason) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {reason: Reason}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class UserAccess < ::Stripe::StripeObject
            class DashboardClient < ::Stripe::StripeObject
              # User-Agent header for the user access action.
              sig { returns(String) }
              def user_agent; end
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
            # Surface where the user access action started.
            sig { returns(String) }
            def surface; end
            def self.inner_class_types
              @inner_class_types = {dashboard_client: DashboardClient, network: Network, risk: Risk}
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
          class UserProfile < ::Stripe::StripeObject
            # Email address after the change.
            sig { returns(T.nilable(String)) }
            def new_email; end
            # Redacted phone number after the change.
            sig { returns(T.nilable(String)) }
            def new_redacted_phone_number; end
            # Email address before the change.
            sig { returns(T.nilable(String)) }
            def old_email; end
            # Redacted phone number before the change.
            sig { returns(T.nilable(String)) }
            def old_redacted_phone_number; end
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
          # Details of an account security action.
          sig { returns(T.nilable(AccountSecurity)) }
          def account_security; end
          # Details of an API key action.
          sig { returns(T.nilable(ApiKey)) }
          def api_key; end
          # Details of an authentication action.
          sig { returns(T.nilable(Authentication)) }
          def authentication; end
          # Details of a Connect action.
          sig { returns(T.nilable(Connect)) }
          def connect; end
          # Details of a data export action.
          sig { returns(T.nilable(DataExport)) }
          def data_export; end
          # Details of an event destination action.
          sig { returns(T.nilable(EventDestination)) }
          def event_destination; end
          # Details of a Radar action.
          sig { returns(T.nilable(Radar)) }
          def radar; end
          # Details of a SCIM action.
          sig { returns(T.nilable(Scim)) }
          def scim; end
          # Details of an SSO action.
          sig { returns(T.nilable(Sso)) }
          def sso; end
          # Details of a Stripe access action.
          sig { returns(T.nilable(StripeAccess)) }
          def stripe_access; end
          # The action group type of the activity log entry.
          sig { returns(String) }
          def type; end
          # Details of a user access action.
          sig { returns(T.nilable(UserAccess)) }
          def user_access; end
          # Details of a user invite action.
          sig { returns(T.nilable(UserInvite)) }
          def user_invite; end
          # Details of a user profile action.
          sig { returns(T.nilable(UserProfile)) }
          def user_profile; end
          # Details of a user role change action.
          sig { returns(T.nilable(UserRoles)) }
          def user_roles; end
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
                    element: {kind: :object, fields: {rollout_percentage: :decimal_string}},
                  },
                  old_rules: {
                    kind: :array,
                    element: {kind: :object, fields: {rollout_percentage: :decimal_string}},
                  },
                },
              },
            }
          end
        end
        class RelatedObject < ::Stripe::StripeObject
          # Unique identifier of the object.
          sig { returns(String) }
          def id; end
          # Type of the object.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Request < ::Stripe::StripeObject
          # ID of the API request.
          sig { returns(String) }
          def id; end
          def self.inner_class_types
            @inner_class_types = {}
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
        # The object related to the activity log entry.
        sig { returns(T.nilable(RelatedObject)) }
        def related_object; end
        # The API request that instigated the action.
        sig { returns(T.nilable(Request)) }
        def request; end
        # The type of action that was performed.
        sig { returns(String) }
        def type; end
      end
    end
  end
end