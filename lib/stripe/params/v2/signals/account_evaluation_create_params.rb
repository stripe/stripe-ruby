# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      class AccountEvaluationCreateParams < ::Stripe::RequestParams
        class AccountActivityDetails < ::Stripe::RequestParams
          class Data < ::Stripe::RequestParams
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
            # Required when type is account_takeover_confirmation. Requires an existing customer or account with a customer configuration.
            attr_accessor :account_takeover_confirmation
            # Required when type is account_takeover_report. Requires an existing customer or account with a customer configuration.
            attr_accessor :account_takeover_report
            # Required when type is credential_change. Requires an existing customer or account with a customer configuration.
            attr_accessor :credential_change
            # Details for the login attempt. Provide only when type is login_attempt.
            attr_accessor :login_attempt
            # Required when type is mfa_addition. Requires an existing customer or account with a customer configuration.
            attr_accessor :mfa_addition
            # Required when type is mfa_removal. Requires an existing customer or account with a customer configuration.
            attr_accessor :mfa_removal
            # Timestamp at which the activity occurred. Defaults to the created time if not provided.
            attr_accessor :occurred_at
            # Details for the registration attempt. Provide only when type is registration_attempt.
            attr_accessor :registration_attempt
            # The type of activity. Supports registration_attempt, login_attempt, mfa_addition, mfa_removal,
            # credential_change, account_takeover_report, account_takeover_confirmation, or account_takeover_mitigation.
            attr_accessor :type

            def initialize(
              account_takeover_confirmation: nil,
              account_takeover_report: nil,
              credential_change: nil,
              login_attempt: nil,
              mfa_addition: nil,
              mfa_removal: nil,
              occurred_at: nil,
              registration_attempt: nil,
              type: nil
            )
              @account_takeover_confirmation = account_takeover_confirmation
              @account_takeover_report = account_takeover_report
              @credential_change = credential_change
              @login_attempt = login_attempt
              @mfa_addition = mfa_addition
              @mfa_removal = mfa_removal
              @occurred_at = occurred_at
              @registration_attempt = registration_attempt
              @type = type
            end
          end
          # The ID of an existing account activity to associate with the evaluation.
          attr_accessor :account_activity
          # Inline activity data used to create a new account activity for the evaluation.
          attr_accessor :data

          def initialize(account_activity: nil, data: nil)
            @account_activity = account_activity
            @data = data
          end
        end

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
        # Account activity to record alongside this evaluation.
        attr_accessor :account_activity_details
        # The account, customer, or inline account data to evaluate.
        attr_accessor :account_details
        # List of signals to evaluate.
        attr_accessor :requested_signals

        def initialize(account_activity_details: nil, account_details: nil, requested_signals: nil)
          @account_activity_details = account_activity_details
          @account_details = account_details
          @requested_signals = requested_signals
        end
      end
    end
  end
end
