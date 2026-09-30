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
            # Default account settings.
            attr_accessor :defaults
            # Identity data.
            attr_accessor :identity

            def initialize(defaults: nil, identity: nil)
              @defaults = defaults
              @identity = identity
            end
          end
          # The v2 account ID of the account.
          attr_accessor :account
          # The v1 customer ID of the account, for users not yet migrated to v2/accounts.
          attr_accessor :customer
          # Inline account data to evaluate without creating a v2 account.
          attr_accessor :data

          def initialize(account: nil, customer: nil, data: nil)
            @account = account
            @customer = customer
            @data = data
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
          # The action the merchant took following the evaluation.
          attr_accessor :status

          def initialize(status: nil)
            @status = status
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
        # Details for the login attempt. Provide only when type is login_attempt.
        attr_accessor :login_attempt
        # Details for the login decision. Provide only when type is login_decision.
        attr_accessor :login_decision
        # Timestamp at which the activity occurred. Defaults to the created time if not provided.
        attr_accessor :occurred_at
        # Details for the registration attempt. Provide only when type is registration_attempt.
        attr_accessor :registration_attempt
        # Details for the registration decision. Provide only when type is registration_decision.
        attr_accessor :registration_decision
        # The type of activity.
        attr_accessor :type

        def initialize(
          account_details: nil,
          account_evaluation: nil,
          login_attempt: nil,
          login_decision: nil,
          occurred_at: nil,
          registration_attempt: nil,
          registration_decision: nil,
          type: nil
        )
          @account_details = account_details
          @account_evaluation = account_evaluation
          @login_attempt = login_attempt
          @login_decision = login_decision
          @occurred_at = occurred_at
          @registration_attempt = registration_attempt
          @registration_decision = registration_decision
          @type = type
        end
      end
    end
  end
end
