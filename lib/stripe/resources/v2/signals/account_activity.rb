# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      # Account Activity resource for the Signals API.
      class AccountActivity < APIResource
        OBJECT_NAME = "v2.signals.account_activity"
        def self.object_name
          "v2.signals.account_activity"
        end

        class AccountDetails < ::Stripe::StripeObject
          class Data < ::Stripe::StripeObject
            class Defaults < ::Stripe::StripeObject
              class Profile < ::Stripe::StripeObject
                # The business URL.
                attr_reader :business_url
                # Doing business as (DBA) name.
                attr_reader :doing_business_as
                # Description of the account's product or service.
                attr_reader :product_description

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Account profile data.
              attr_reader :profile

              def self.inner_class_types
                @inner_class_types = { profile: Profile }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Identity < ::Stripe::StripeObject
              class BusinessDetails < ::Stripe::StripeObject
                # Registered business name.
                attr_reader :registered_name

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Business details for identity data.
              attr_reader :business_details

              def self.inner_class_types
                @inner_class_types = { business_details: BusinessDetails }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The account's contact email.
            attr_reader :contact_email
            # Default account settings.
            attr_reader :defaults
            # Identity data.
            attr_reader :identity

            def self.inner_class_types
              @inner_class_types = { defaults: Defaults, identity: Identity }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The v2 account ID of the account.
          attr_reader :account
          # The v1 customer ID of the account, for users not yet migrated to v2 accounts.
          attr_reader :customer
          # Inline account data to evaluate without creating a v2 account.
          attr_reader :data

          def self.inner_class_types
            @inner_class_types = { data: Data }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class AccountRestricted < ::Stripe::StripeObject
          # The reason the account or customer was restricted.
          attr_reader :reason

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class AccountReviewed < ::Stripe::StripeObject
          # The outcome of the merchant review.
          attr_reader :outcome

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class AccountSuspended < ::Stripe::StripeObject
          # The reason the customer was suspended.
          attr_reader :reason

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class AccountTakeoverConfirmation < ::Stripe::StripeObject
          # The type of credential involved in the confirmed takeover.
          attr_reader :credential_type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class AccountTakeoverReport < ::Stripe::StripeObject
          # The type of credential involved in the reported takeover.
          attr_reader :credential_type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class CredentialChange < ::Stripe::StripeObject
          # The type of credential that changed.
          attr_reader :credential_type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class CustomMarketingAction < ::Stripe::StripeObject
          # A description of the action.
          attr_reader :description
          # The outcome of the action.
          attr_reader :outcome
          # Additional user-defined properties of the action.
          attr_reader :properties

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
              attr_reader :ip
              # The referrer associated with the activity.
              attr_reader :referrer
              # The user agent associated with the activity.
              attr_reader :user_agent

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Raw client details for the activity, when a Radar session is not available.
            attr_reader :data
            # The Radar session ID capturing client details for the activity.
            attr_reader :radar_session

            def self.inner_class_types
              @inner_class_types = { data: Data }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Client details captured for the attempt.
          attr_reader :client_details

          def self.inner_class_types
            @inner_class_types = { client_details: ClientDetails }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class LoginDecision < ::Stripe::StripeObject
          class MfaChallenge < ::Stripe::StripeObject
            # The authentication method used for the challenge.
            attr_reader :mfa_type
            # The outcome of the authentication challenge.
            attr_reader :status

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Multi-factor authentication challenges performed during the login process.
          attr_reader :mfa_challenges
          # The action the merchant took following the evaluation.
          attr_reader :status

          def self.inner_class_types
            @inner_class_types = { mfa_challenges: MfaChallenge }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class MfaAddition < ::Stripe::StripeObject
          # The authentication method added to the account.
          attr_reader :mfa_type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class MfaRemoval < ::Stripe::StripeObject
          # The authentication method removed from the account.
          attr_reader :mfa_type

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
              attr_reader :ip
              # The referrer associated with the activity.
              attr_reader :referrer
              # The user agent associated with the activity.
              attr_reader :user_agent

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Raw client details for the activity, when a Radar session is not available.
            attr_reader :data
            # The Radar session ID capturing client details for the activity.
            attr_reader :radar_session

            def self.inner_class_types
              @inner_class_types = { data: Data }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Client details captured for the attempt.
          attr_reader :client_details

          def self.inner_class_types
            @inner_class_types = { client_details: ClientDetails }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class RegistrationDecision < ::Stripe::StripeObject
          # The action the merchant took following the evaluation.
          attr_reader :status

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The account, customer, or inline account data associated with the activity.
        attr_reader :account_details
        # The account evaluation this activity is associated with, when applicable.
        attr_reader :account_evaluation
        # Details for the account restriction. Present only when type is account_restricted. The activity
        # requires an existing account_details.account or account_details.customer; inline data is unsupported.
        attr_reader :account_restricted
        # Details for the account review. Present only when type is account_reviewed. The activity
        # requires an existing account_details.account or account_details.customer; inline data is unsupported.
        attr_reader :account_reviewed
        # Details for the account suspension. Present only when type is account_suspended. The activity
        # requires an existing account_details.customer; account_details.account and inline data are unsupported.
        attr_reader :account_suspended
        # Details for the merchant's takeover confirmation. Present only when type is account_takeover_confirmation.
        attr_reader :account_takeover_confirmation
        # Details for the account holder's takeover report. Present only when type is account_takeover_report.
        attr_reader :account_takeover_report
        # Timestamp at which the account activity was created.
        attr_reader :created
        # Details for the credential change. Present only when type is credential_change.
        attr_reader :credential_change
        # Details for the custom marketing action. Present only when type is custom_marketing_action.
        attr_reader :custom_marketing_action
        # Unique identifier for the account activity.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Details for the login attempt. Present only when type is login_attempt.
        attr_reader :login_attempt
        # Details for the login decision. Present only when type is login_decision.
        attr_reader :login_decision
        # Additional information about the activity.
        attr_reader :metadata
        # Details for the MFA addition. Present only when type is mfa_addition.
        attr_reader :mfa_addition
        # Details for the MFA removal. Present only when type is mfa_removal.
        attr_reader :mfa_removal
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Timestamp at which the activity occurred. Defaults to the created time if not provided.
        attr_reader :occurred_at
        # Details for the registration attempt. Present only when type is registration_attempt.
        attr_reader :registration_attempt
        # Details for the registration decision. Present only when type is registration_decision.
        attr_reader :registration_decision
        # The AccountSignal that prompted this activity, when applicable. This historical reference
        # may coexist with account_evaluation and remains present after the signal expires.
        attr_reader :triggering_signal
        # The type of activity.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            account_details: AccountDetails,
            account_restricted: AccountRestricted,
            account_reviewed: AccountReviewed,
            account_suspended: AccountSuspended,
            account_takeover_confirmation: AccountTakeoverConfirmation,
            account_takeover_report: AccountTakeoverReport,
            credential_change: CredentialChange,
            custom_marketing_action: CustomMarketingAction,
            login_attempt: LoginAttempt,
            login_decision: LoginDecision,
            mfa_addition: MfaAddition,
            mfa_removal: MfaRemoval,
            registration_attempt: RegistrationAttempt,
            registration_decision: RegistrationDecision,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
