# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Signals
      class AccountActivityCreateParams < ::Stripe::RequestParams
        class AccountDetails < ::Stripe::RequestParams
          class Data < ::Stripe::RequestParams
            class Defaults < ::Stripe::RequestParams
              class Profile < ::Stripe::RequestParams
                # The business URL.
                sig { returns(String) }
                def business_url; end
                sig { params(_business_url: String).returns(String) }
                def business_url=(_business_url); end
                # Doing business as (DBA) name.
                sig { returns(T.nilable(String)) }
                def doing_business_as; end
                sig { params(_doing_business_as: T.nilable(String)).returns(T.nilable(String)) }
                def doing_business_as=(_doing_business_as); end
                # Description of the account's product or service.
                sig { returns(T.nilable(String)) }
                def product_description; end
                sig { params(_product_description: T.nilable(String)).returns(T.nilable(String)) }
                def product_description=(_product_description); end
                sig {
                  params(business_url: String, doing_business_as: T.nilable(String), product_description: T.nilable(String)).void
                 }
                def initialize(
                  business_url: nil,
                  doing_business_as: nil,
                  product_description: nil
                ); end
              end
              # Account profile data.
              sig {
                returns(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Defaults::Profile)
               }
              def profile; end
              sig {
                params(_profile: ::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Defaults::Profile).returns(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Defaults::Profile)
               }
              def profile=(_profile); end
              sig {
                params(profile: ::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Defaults::Profile).void
               }
              def initialize(profile: nil); end
            end
            class Identity < ::Stripe::RequestParams
              class BusinessDetails < ::Stripe::RequestParams
                # Registered business name.
                sig { returns(T.nilable(String)) }
                def registered_name; end
                sig { params(_registered_name: T.nilable(String)).returns(T.nilable(String)) }
                def registered_name=(_registered_name); end
                sig { params(registered_name: T.nilable(String)).void }
                def initialize(registered_name: nil); end
              end
              # Business details for identity data.
              sig {
                returns(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Identity::BusinessDetails)
               }
              def business_details; end
              sig {
                params(_business_details: ::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Identity::BusinessDetails).returns(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Identity::BusinessDetails)
               }
              def business_details=(_business_details); end
              sig {
                params(business_details: ::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Identity::BusinessDetails).void
               }
              def initialize(business_details: nil); end
            end
            # Default account settings.
            sig {
              returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Defaults))
             }
            def defaults; end
            sig {
              params(_defaults: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Defaults)).returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Defaults))
             }
            def defaults=(_defaults); end
            # Identity data.
            sig {
              returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Identity))
             }
            def identity; end
            sig {
              params(_identity: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Identity)).returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Identity))
             }
            def identity=(_identity); end
            sig {
              params(defaults: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Defaults), identity: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data::Identity)).void
             }
            def initialize(defaults: nil, identity: nil); end
          end
          # The v2 account ID of the account.
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          # The v1 customer ID of the account, for users not yet migrated to v2/accounts.
          sig { returns(T.nilable(String)) }
          def customer; end
          sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
          def customer=(_customer); end
          # Inline account data to evaluate without creating a v2 account.
          sig {
            returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data))
           }
          def data; end
          sig {
            params(_data: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data)).returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data))
           }
          def data=(_data); end
          sig {
            params(account: T.nilable(String), customer: T.nilable(String), data: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails::Data)).void
           }
          def initialize(account: nil, customer: nil, data: nil); end
        end
        class LoginAttempt < ::Stripe::RequestParams
          class ClientDetails < ::Stripe::RequestParams
            class Data < ::Stripe::RequestParams
              # The IP address associated with the activity.
              sig { returns(String) }
              def ip; end
              sig { params(_ip: String).returns(String) }
              def ip=(_ip); end
              # The referrer associated with the activity.
              sig { returns(T.nilable(String)) }
              def referrer; end
              sig { params(_referrer: T.nilable(String)).returns(T.nilable(String)) }
              def referrer=(_referrer); end
              # The user agent associated with the activity.
              sig { returns(T.nilable(String)) }
              def user_agent; end
              sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
              def user_agent=(_user_agent); end
              sig {
                params(ip: String, referrer: T.nilable(String), user_agent: T.nilable(String)).void
               }
              def initialize(ip: nil, referrer: nil, user_agent: nil); end
            end
            # Raw client details for the activity, when a Radar session is not available.
            sig {
              returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::LoginAttempt::ClientDetails::Data))
             }
            def data; end
            sig {
              params(_data: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::LoginAttempt::ClientDetails::Data)).returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::LoginAttempt::ClientDetails::Data))
             }
            def data=(_data); end
            # The Radar session ID capturing client details for the activity.
            sig { returns(T.nilable(String)) }
            def radar_session; end
            sig { params(_radar_session: T.nilable(String)).returns(T.nilable(String)) }
            def radar_session=(_radar_session); end
            sig {
              params(data: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::LoginAttempt::ClientDetails::Data), radar_session: T.nilable(String)).void
             }
            def initialize(data: nil, radar_session: nil); end
          end
          # Client details captured for the attempt.
          sig {
            returns(::Stripe::V2::Signals::AccountActivityCreateParams::LoginAttempt::ClientDetails)
           }
          def client_details; end
          sig {
            params(_client_details: ::Stripe::V2::Signals::AccountActivityCreateParams::LoginAttempt::ClientDetails).returns(::Stripe::V2::Signals::AccountActivityCreateParams::LoginAttempt::ClientDetails)
           }
          def client_details=(_client_details); end
          sig {
            params(client_details: ::Stripe::V2::Signals::AccountActivityCreateParams::LoginAttempt::ClientDetails).void
           }
          def initialize(client_details: nil); end
        end
        class LoginDecision < ::Stripe::RequestParams
          # The action the merchant took following the evaluation.
          sig { returns(String) }
          def status; end
          sig { params(_status: String).returns(String) }
          def status=(_status); end
          sig { params(status: String).void }
          def initialize(status: nil); end
        end
        class RegistrationAttempt < ::Stripe::RequestParams
          class ClientDetails < ::Stripe::RequestParams
            class Data < ::Stripe::RequestParams
              # The IP address associated with the activity.
              sig { returns(String) }
              def ip; end
              sig { params(_ip: String).returns(String) }
              def ip=(_ip); end
              # The referrer associated with the activity.
              sig { returns(T.nilable(String)) }
              def referrer; end
              sig { params(_referrer: T.nilable(String)).returns(T.nilable(String)) }
              def referrer=(_referrer); end
              # The user agent associated with the activity.
              sig { returns(T.nilable(String)) }
              def user_agent; end
              sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
              def user_agent=(_user_agent); end
              sig {
                params(ip: String, referrer: T.nilable(String), user_agent: T.nilable(String)).void
               }
              def initialize(ip: nil, referrer: nil, user_agent: nil); end
            end
            # Raw client details for the activity, when a Radar session is not available.
            sig {
              returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationAttempt::ClientDetails::Data))
             }
            def data; end
            sig {
              params(_data: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationAttempt::ClientDetails::Data)).returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationAttempt::ClientDetails::Data))
             }
            def data=(_data); end
            # The Radar session ID capturing client details for the activity.
            sig { returns(T.nilable(String)) }
            def radar_session; end
            sig { params(_radar_session: T.nilable(String)).returns(T.nilable(String)) }
            def radar_session=(_radar_session); end
            sig {
              params(data: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationAttempt::ClientDetails::Data), radar_session: T.nilable(String)).void
             }
            def initialize(data: nil, radar_session: nil); end
          end
          # Client details captured for the attempt.
          sig {
            returns(::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationAttempt::ClientDetails)
           }
          def client_details; end
          sig {
            params(_client_details: ::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationAttempt::ClientDetails).returns(::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationAttempt::ClientDetails)
           }
          def client_details=(_client_details); end
          sig {
            params(client_details: ::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationAttempt::ClientDetails).void
           }
          def initialize(client_details: nil); end
        end
        class RegistrationDecision < ::Stripe::RequestParams
          # The action the merchant took following the evaluation.
          sig { returns(String) }
          def status; end
          sig { params(_status: String).returns(String) }
          def status=(_status); end
          sig { params(status: String).void }
          def initialize(status: nil); end
        end
        # The account, customer, or inline account data associated with the activity.
        sig {
          returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails))
         }
        def account_details; end
        sig {
          params(_account_details: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails)).returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails))
         }
        def account_details=(_account_details); end
        # The account evaluation this activity is associated with, when applicable.
        sig { returns(T.nilable(String)) }
        def account_evaluation; end
        sig { params(_account_evaluation: T.nilable(String)).returns(T.nilable(String)) }
        def account_evaluation=(_account_evaluation); end
        # Details for the login attempt. Provide only when type is login_attempt.
        sig { returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::LoginAttempt)) }
        def login_attempt; end
        sig {
          params(_login_attempt: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::LoginAttempt)).returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::LoginAttempt))
         }
        def login_attempt=(_login_attempt); end
        # Details for the login decision. Provide only when type is login_decision.
        sig {
          returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::LoginDecision))
         }
        def login_decision; end
        sig {
          params(_login_decision: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::LoginDecision)).returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::LoginDecision))
         }
        def login_decision=(_login_decision); end
        # Timestamp at which the activity occurred. Defaults to the created time if not provided.
        sig { returns(T.nilable(String)) }
        def occurred_at; end
        sig { params(_occurred_at: T.nilable(String)).returns(T.nilable(String)) }
        def occurred_at=(_occurred_at); end
        # Details for the registration attempt. Provide only when type is registration_attempt.
        sig {
          returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationAttempt))
         }
        def registration_attempt; end
        sig {
          params(_registration_attempt: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationAttempt)).returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationAttempt))
         }
        def registration_attempt=(_registration_attempt); end
        # Details for the registration decision. Provide only when type is registration_decision.
        sig {
          returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationDecision))
         }
        def registration_decision; end
        sig {
          params(_registration_decision: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationDecision)).returns(T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationDecision))
         }
        def registration_decision=(_registration_decision); end
        # The type of activity.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(account_details: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::AccountDetails), account_evaluation: T.nilable(String), login_attempt: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::LoginAttempt), login_decision: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::LoginDecision), occurred_at: T.nilable(String), registration_attempt: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationAttempt), registration_decision: T.nilable(::Stripe::V2::Signals::AccountActivityCreateParams::RegistrationDecision), type: String).void
         }
        def initialize(
          account_details: nil,
          account_evaluation: nil,
          login_attempt: nil,
          login_decision: nil,
          occurred_at: nil,
          registration_attempt: nil,
          registration_decision: nil,
          type: nil
        ); end
      end
    end
  end
end