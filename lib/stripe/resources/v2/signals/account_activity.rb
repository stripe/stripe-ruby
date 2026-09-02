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
          # The v1 customer ID of the account, for users not yet migrated to v2/accounts.
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
          # The action the merchant took following the evaluation.
          attr_reader :status

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
        # Details for the account suspension. Present only when type is account_suspended. The activity
        # requires an existing account_details.customer; account_details.account and inline data are unsupported.
        attr_reader :account_suspended
        # Timestamp at which the account activity was created.
        attr_reader :created
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
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Timestamp at which the activity occurred. Defaults to the created time if not provided.
        attr_reader :occurred_at
        # Details for the registration attempt. Present only when type is registration_attempt.
        attr_reader :registration_attempt
        # Details for the registration decision. Present only when type is registration_decision.
        attr_reader :registration_decision
        # The type of activity.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            account_details: AccountDetails,
            account_restricted: AccountRestricted,
            account_suspended: AccountSuspended,
            login_attempt: LoginAttempt,
            login_decision: LoginDecision,
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
