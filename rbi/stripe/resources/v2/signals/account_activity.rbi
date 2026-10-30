# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Signals
      # Account Activity resource for the Signals API.
      class AccountActivity < APIResource
        class AccountDetails < ::Stripe::StripeObject
          class Data < ::Stripe::StripeObject
            class Defaults < ::Stripe::StripeObject
              class Profile < ::Stripe::StripeObject
                # The business URL.
                sig { returns(String) }
                def business_url; end
                # Doing business as (DBA) name.
                sig { returns(T.nilable(String)) }
                def doing_business_as; end
                # Description of the account's product or service.
                sig { returns(T.nilable(String)) }
                def product_description; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Account profile data.
              sig { returns(Profile) }
              def profile; end
              def self.inner_class_types
                @inner_class_types = {profile: Profile}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Identity < ::Stripe::StripeObject
              class BusinessDetails < ::Stripe::StripeObject
                # Registered business name.
                sig { returns(T.nilable(String)) }
                def registered_name; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Business details for identity data.
              sig { returns(BusinessDetails) }
              def business_details; end
              def self.inner_class_types
                @inner_class_types = {business_details: BusinessDetails}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The account's contact email.
            sig { returns(T.nilable(String)) }
            def contact_email; end
            # Default account settings.
            sig { returns(T.nilable(Defaults)) }
            def defaults; end
            # Identity data.
            sig { returns(T.nilable(Identity)) }
            def identity; end
            def self.inner_class_types
              @inner_class_types = {defaults: Defaults, identity: Identity}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The v2 account ID of the account.
          sig { returns(T.nilable(String)) }
          def account; end
          # The v1 customer ID of the account, for users not yet migrated to v2 accounts.
          sig { returns(T.nilable(String)) }
          def customer; end
          # Inline account data to evaluate without creating a v2 account.
          sig { returns(T.nilable(Data)) }
          def data; end
          def self.inner_class_types
            @inner_class_types = {data: Data}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class AccountRestricted < ::Stripe::StripeObject
          # The reason the account or customer was restricted.
          sig { returns(String) }
          def reason; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class AccountReviewed < ::Stripe::StripeObject
          # The outcome of the merchant review.
          sig { returns(String) }
          def outcome; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class AccountSuspended < ::Stripe::StripeObject
          # The reason the customer was suspended.
          sig { returns(String) }
          def reason; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class AccountTakeoverConfirmation < ::Stripe::StripeObject
          # The type of credential involved in the confirmed takeover.
          sig { returns(String) }
          def credential_type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class AccountTakeoverReport < ::Stripe::StripeObject
          # The type of credential involved in the reported takeover.
          sig { returns(String) }
          def credential_type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CredentialChange < ::Stripe::StripeObject
          # The type of credential that changed.
          sig { returns(String) }
          def credential_type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CustomMarketingAction < ::Stripe::StripeObject
          # A description of the action.
          sig { returns(String) }
          def description; end
          # The outcome of the action.
          sig { returns(String) }
          def outcome; end
          # Additional user-defined properties of the action.
          sig { returns(T::Hash[String, String]) }
          def properties; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class LoginAttempt < ::Stripe::StripeObject
          class ClientDetails < ::Stripe::StripeObject
            class Data < ::Stripe::StripeObject
              # The IP address associated with the activity.
              sig { returns(String) }
              def ip; end
              # The referrer associated with the activity.
              sig { returns(T.nilable(String)) }
              def referrer; end
              # The user agent associated with the activity.
              sig { returns(T.nilable(String)) }
              def user_agent; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Raw client details for the activity, when a Radar session is not available.
            sig { returns(T.nilable(Data)) }
            def data; end
            # The Radar session ID capturing client details for the activity.
            sig { returns(T.nilable(String)) }
            def radar_session; end
            def self.inner_class_types
              @inner_class_types = {data: Data}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Client details captured for the attempt.
          sig { returns(ClientDetails) }
          def client_details; end
          def self.inner_class_types
            @inner_class_types = {client_details: ClientDetails}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class LoginDecision < ::Stripe::StripeObject
          class MfaChallenge < ::Stripe::StripeObject
            # The authentication method used for the challenge.
            sig { returns(String) }
            def mfa_type; end
            # The outcome of the authentication challenge.
            sig { returns(String) }
            def status; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Multi-factor authentication challenges performed during the login process.
          sig { returns(T.nilable(T::Array[MfaChallenge])) }
          def mfa_challenges; end
          # The action the merchant took following the evaluation.
          sig { returns(String) }
          def status; end
          def self.inner_class_types
            @inner_class_types = {mfa_challenges: MfaChallenge}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class MfaAddition < ::Stripe::StripeObject
          # The authentication method added to the account.
          sig { returns(String) }
          def mfa_type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class MfaRemoval < ::Stripe::StripeObject
          # The authentication method removed from the account.
          sig { returns(String) }
          def mfa_type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class RegistrationAttempt < ::Stripe::StripeObject
          class ClientDetails < ::Stripe::StripeObject
            class Data < ::Stripe::StripeObject
              # The IP address associated with the activity.
              sig { returns(String) }
              def ip; end
              # The referrer associated with the activity.
              sig { returns(T.nilable(String)) }
              def referrer; end
              # The user agent associated with the activity.
              sig { returns(T.nilable(String)) }
              def user_agent; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Raw client details for the activity, when a Radar session is not available.
            sig { returns(T.nilable(Data)) }
            def data; end
            # The Radar session ID capturing client details for the activity.
            sig { returns(T.nilable(String)) }
            def radar_session; end
            def self.inner_class_types
              @inner_class_types = {data: Data}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Client details captured for the attempt.
          sig { returns(ClientDetails) }
          def client_details; end
          def self.inner_class_types
            @inner_class_types = {client_details: ClientDetails}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class RegistrationDecision < ::Stripe::StripeObject
          # The action the merchant took following the evaluation.
          sig { returns(String) }
          def status; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The account, customer, or inline account data associated with the activity.
        sig { returns(T.nilable(AccountDetails)) }
        def account_details; end
        # The account evaluation this activity is associated with, when applicable.
        sig { returns(T.nilable(String)) }
        def account_evaluation; end
        # Details for the account restriction. Present only when type is account_restricted. The activity
        # requires an existing account_details.account or account_details.customer; inline data is unsupported.
        sig { returns(T.nilable(AccountRestricted)) }
        def account_restricted; end
        # Details for the account review. Present only when type is account_reviewed. The activity
        # requires an existing account_details.account or account_details.customer; inline data is unsupported.
        sig { returns(T.nilable(AccountReviewed)) }
        def account_reviewed; end
        # Details for the account suspension. Present only when type is account_suspended. The activity
        # requires an existing account_details.customer; account_details.account and inline data are unsupported.
        sig { returns(T.nilable(AccountSuspended)) }
        def account_suspended; end
        # Details for the merchant's takeover confirmation. Present only when type is account_takeover_confirmation.
        sig { returns(T.nilable(AccountTakeoverConfirmation)) }
        def account_takeover_confirmation; end
        # Details for the account holder's takeover report. Present only when type is account_takeover_report.
        sig { returns(T.nilable(AccountTakeoverReport)) }
        def account_takeover_report; end
        # Timestamp at which the account activity was created.
        sig { returns(String) }
        def created; end
        # Details for the credential change. Present only when type is credential_change.
        sig { returns(T.nilable(CredentialChange)) }
        def credential_change; end
        # Details for the custom marketing action. Present only when type is custom_marketing_action.
        sig { returns(T.nilable(CustomMarketingAction)) }
        def custom_marketing_action; end
        # Unique identifier for the account activity.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Details for the login attempt. Present only when type is login_attempt.
        sig { returns(T.nilable(LoginAttempt)) }
        def login_attempt; end
        # Details for the login decision. Present only when type is login_decision.
        sig { returns(T.nilable(LoginDecision)) }
        def login_decision; end
        # Additional information about the activity.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # Details for the MFA addition. Present only when type is mfa_addition.
        sig { returns(T.nilable(MfaAddition)) }
        def mfa_addition; end
        # Details for the MFA removal. Present only when type is mfa_removal.
        sig { returns(T.nilable(MfaRemoval)) }
        def mfa_removal; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Timestamp at which the activity occurred. Defaults to the created time if not provided.
        sig { returns(String) }
        def occurred_at; end
        # Details for the registration attempt. Present only when type is registration_attempt.
        sig { returns(T.nilable(RegistrationAttempt)) }
        def registration_attempt; end
        # Details for the registration decision. Present only when type is registration_decision.
        sig { returns(T.nilable(RegistrationDecision)) }
        def registration_decision; end
        # The AccountSignal that prompted this activity, when applicable. This historical reference
        # may coexist with account_evaluation and remains present after the signal expires.
        sig { returns(T.nilable(String)) }
        def triggering_signal; end
        # The type of activity.
        sig { returns(String) }
        def type; end
      end
    end
  end
end