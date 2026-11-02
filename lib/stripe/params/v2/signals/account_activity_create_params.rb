# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      class AccountActivityCreateParams < ::Stripe::RequestParams
        class AccountDetails < ::Stripe::RequestParams
          class Data < ::Stripe::RequestParams
            class Defaults < ::Stripe::RequestParams
              class Profile < ::Stripe::RequestParams
                # The business URL.
                attr_accessor :business_url
                # Doing business as (DBA) name.
                attr_accessor :doing_business_as
                # Description of the account's product or service.
                attr_accessor :product_description

                def initialize(business_url: nil, doing_business_as: nil, product_description: nil)
                  @business_url = business_url
                  @doing_business_as = doing_business_as
                  @product_description = product_description
                end
              end
              # Account profile data.
              attr_accessor :profile

              def initialize(profile: nil)
                @profile = profile
              end
            end

            class Identity < ::Stripe::RequestParams
              class BusinessDetails < ::Stripe::RequestParams
                # Registered business name.
                attr_accessor :registered_name

                def initialize(registered_name: nil)
                  @registered_name = registered_name
                end
              end
              # Business details for identity data.
              attr_accessor :business_details

              def initialize(business_details: nil)
                @business_details = business_details
              end
            end
            # The account's contact email.
            attr_accessor :contact_email
            # Default account settings.
            attr_accessor :defaults
            # Identity data.
            attr_accessor :identity

            def initialize(contact_email: nil, defaults: nil, identity: nil)
              @contact_email = contact_email
              @defaults = defaults
              @identity = identity
            end
          end
          # The v2 account ID of the account.
          attr_accessor :account
          # The v1 customer ID of the account, for users not yet migrated to v2 accounts.
          attr_accessor :customer
          # Inline account data to evaluate without creating a v2 account.
          attr_accessor :data

          def initialize(account: nil, customer: nil, data: nil)
            @account = account
            @customer = customer
            @data = data
          end
        end

        class AccountRestricted < ::Stripe::RequestParams
          # The reason the account or customer was restricted.
          attr_accessor :reason

          def initialize(reason: nil)
            @reason = reason
          end
        end

        class AccountReviewed < ::Stripe::RequestParams
          # The outcome of the merchant review.
          attr_accessor :outcome

          def initialize(outcome: nil)
            @outcome = outcome
          end
        end

        class AccountSuspended < ::Stripe::RequestParams
          # The reason the customer was suspended.
          attr_accessor :reason

          def initialize(reason: nil)
            @reason = reason
          end
        end

        class AccountTakeoverConfirmation < ::Stripe::RequestParams
          # The type of credential involved in the confirmed takeover.
          attr_accessor :credential_type

          def initialize(credential_type: nil)
            @credential_type = credential_type
          end
        end

        class AccountTakeoverReport < ::Stripe::RequestParams
          # The type of credential involved in the reported takeover.
          attr_accessor :credential_type

          def initialize(credential_type: nil)
            @credential_type = credential_type
          end
        end

        class CredentialChange < ::Stripe::RequestParams
          # The type of credential that changed.
          attr_accessor :credential_type

          def initialize(credential_type: nil)
            @credential_type = credential_type
          end
        end

        class CustomMarketingAction < ::Stripe::RequestParams
          # A description of the action, between 1 and 100 characters.
          attr_accessor :description
          # The outcome of the action.
          attr_accessor :outcome
          # Additional user-defined properties of the action.
          attr_accessor :properties

          def initialize(description: nil, outcome: nil, properties: nil)
            @description = description
            @outcome = outcome
            @properties = properties
          end
        end

        class LoginAttempt < ::Stripe::RequestParams
          class ClientDetails < ::Stripe::RequestParams
            class Data < ::Stripe::RequestParams
              # The IP address associated with the activity.
              attr_accessor :ip
              # The referrer associated with the activity.
              attr_accessor :referrer
              # The user agent associated with the activity.
              attr_accessor :user_agent

              def initialize(ip: nil, referrer: nil, user_agent: nil)
                @ip = ip
                @referrer = referrer
                @user_agent = user_agent
              end
            end
            # Raw client details for the activity, when a Radar session is not available.
            attr_accessor :data
            # The Radar session ID capturing client details for the activity.
            attr_accessor :radar_session

            def initialize(data: nil, radar_session: nil)
              @data = data
              @radar_session = radar_session
            end
          end
          # Client details captured for the attempt.
          attr_accessor :client_details

          def initialize(client_details: nil)
            @client_details = client_details
          end
        end

        class LoginDecision < ::Stripe::RequestParams
          class MfaChallenge < ::Stripe::RequestParams
            # The authentication method used for the challenge.
            attr_accessor :mfa_type
            # The outcome of the authentication challenge.
            attr_accessor :status

            def initialize(mfa_type: nil, status: nil)
              @mfa_type = mfa_type
              @status = status
            end
          end
          # Multi-factor authentication challenges performed during the login process.
          attr_accessor :mfa_challenges
          # The action the merchant took following the evaluation.
          attr_accessor :status

          def initialize(mfa_challenges: nil, status: nil)
            @mfa_challenges = mfa_challenges
            @status = status
          end
        end

        class MfaAddition < ::Stripe::RequestParams
          # The authentication method added to the account.
          attr_accessor :mfa_type

          def initialize(mfa_type: nil)
            @mfa_type = mfa_type
          end
        end

        class MfaRemoval < ::Stripe::RequestParams
          # The authentication method removed from the account.
          attr_accessor :mfa_type

          def initialize(mfa_type: nil)
            @mfa_type = mfa_type
          end
        end

        class RegistrationAttempt < ::Stripe::RequestParams
          class ClientDetails < ::Stripe::RequestParams
            class Data < ::Stripe::RequestParams
              # The IP address associated with the activity.
              attr_accessor :ip
              # The referrer associated with the activity.
              attr_accessor :referrer
              # The user agent associated with the activity.
              attr_accessor :user_agent

              def initialize(ip: nil, referrer: nil, user_agent: nil)
                @ip = ip
                @referrer = referrer
                @user_agent = user_agent
              end
            end
            # Raw client details for the activity, when a Radar session is not available.
            attr_accessor :data
            # The Radar session ID capturing client details for the activity.
            attr_accessor :radar_session

            def initialize(data: nil, radar_session: nil)
              @data = data
              @radar_session = radar_session
            end
          end
          # Client details captured for the attempt.
          attr_accessor :client_details

          def initialize(client_details: nil)
            @client_details = client_details
          end
        end

        class RegistrationDecision < ::Stripe::RequestParams
          # The action the merchant took following the evaluation.
          attr_accessor :status

          def initialize(status: nil)
            @status = status
          end
        end
        # The account, customer, or inline account data associated with the activity.
        attr_accessor :account_details
        # The account evaluation this activity is associated with, when applicable.
        attr_accessor :account_evaluation
        # Details for the account restriction. Provide only when type is account_restricted. The activity
        # requires an existing account_details.account or account_details.customer; inline data is unsupported.
        attr_accessor :account_restricted
        # Details for the account review. Provide only when type is account_reviewed. The activity
        # requires an existing account_details.account or account_details.customer; inline data is unsupported.
        attr_accessor :account_reviewed
        # Details for the account suspension. Provide only when type is account_suspended. The activity
        # requires an existing account_details.customer; account_details.account and inline data are unsupported.
        attr_accessor :account_suspended
        # Required when type is account_takeover_confirmation. Requires an existing customer or account with a customer configuration.
        attr_accessor :account_takeover_confirmation
        # Required when type is account_takeover_report. Requires an existing customer or account with a customer configuration.
        attr_accessor :account_takeover_report
        # Required when type is credential_change. Requires an existing customer or account with a customer configuration.
        attr_accessor :credential_change
        # Details for the custom marketing action. Provide only when type is custom_marketing_action.
        attr_accessor :custom_marketing_action
        # Details for the login attempt. Provide only when type is login_attempt.
        attr_accessor :login_attempt
        # Details for the login decision. Provide only when type is login_decision.
        attr_accessor :login_decision
        # Additional information about the activity.
        attr_accessor :metadata
        # Required when type is mfa_addition. Requires an existing customer or account with a customer configuration.
        attr_accessor :mfa_addition
        # Required when type is mfa_removal. Requires an existing customer or account with a customer configuration.
        attr_accessor :mfa_removal
        # Timestamp at which the activity occurred. Defaults to the created time if not provided.
        attr_accessor :occurred_at
        # Details for the registration attempt. Provide only when type is registration_attempt.
        attr_accessor :registration_attempt
        # Details for the registration decision. Provide only when type is registration_decision.
        attr_accessor :registration_decision
        # An accessible AccountSignal that prompted this activity. The signal must be within its
        # 90-day retrieval window and match the existing account or customer in account_details.
        # Inline data is unsupported. May be supplied together with account_evaluation.
        attr_accessor :triggering_signal
        # The type of activity.
        attr_accessor :type

        def initialize(
          account_details: nil,
          account_evaluation: nil,
          account_restricted: nil,
          account_reviewed: nil,
          account_suspended: nil,
          account_takeover_confirmation: nil,
          account_takeover_report: nil,
          credential_change: nil,
          custom_marketing_action: nil,
          login_attempt: nil,
          login_decision: nil,
          metadata: nil,
          mfa_addition: nil,
          mfa_removal: nil,
          occurred_at: nil,
          registration_attempt: nil,
          registration_decision: nil,
          triggering_signal: nil,
          type: nil
        )
          @account_details = account_details
          @account_evaluation = account_evaluation
          @account_restricted = account_restricted
          @account_reviewed = account_reviewed
          @account_suspended = account_suspended
          @account_takeover_confirmation = account_takeover_confirmation
          @account_takeover_report = account_takeover_report
          @credential_change = credential_change
          @custom_marketing_action = custom_marketing_action
          @login_attempt = login_attempt
          @login_decision = login_decision
          @metadata = metadata
          @mfa_addition = mfa_addition
          @mfa_removal = mfa_removal
          @occurred_at = occurred_at
          @registration_attempt = registration_attempt
          @registration_decision = registration_decision
          @triggering_signal = triggering_signal
          @type = type
        end
      end
    end
  end
end
