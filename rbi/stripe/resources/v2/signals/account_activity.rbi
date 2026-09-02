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
          # The v1 customer ID of the account, for users not yet migrated to v2/accounts.
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
        # Details for the account suspension. Present only when type is account_suspended. The activity
        # requires an existing account_details.customer; account_details.account and inline data are unsupported.
        sig { returns(T.nilable(AccountSuspended)) }
        def account_suspended; end
        # Timestamp at which the account activity was created.
        sig { returns(String) }
        def created; end
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
        # The type of activity.
        sig { returns(String) }
        def type; end
      end
    end
  end
end