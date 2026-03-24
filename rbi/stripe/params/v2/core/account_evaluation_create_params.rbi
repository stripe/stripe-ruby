# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class AccountEvaluationCreateParams < ::Stripe::RequestParams
        class AccountData < ::Stripe::RequestParams
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
              returns(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Defaults::Profile)
             }
            def profile; end
            sig {
              params(_profile: ::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Defaults::Profile).returns(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Defaults::Profile)
             }
            def profile=(_profile); end
            sig {
              params(profile: ::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Defaults::Profile).void
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
              returns(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Identity::BusinessDetails)
             }
            def business_details; end
            sig {
              params(_business_details: ::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Identity::BusinessDetails).returns(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Identity::BusinessDetails)
             }
            def business_details=(_business_details); end
            sig {
              params(business_details: ::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Identity::BusinessDetails).void
             }
            def initialize(business_details: nil); end
          end
          # Default account settings.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Defaults))
           }
          def defaults; end
          sig {
            params(_defaults: T.nilable(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Defaults)).returns(T.nilable(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Defaults))
           }
          def defaults=(_defaults); end
          # Identity data.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Identity))
           }
          def identity; end
          sig {
            params(_identity: T.nilable(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Identity)).returns(T.nilable(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Identity))
           }
          def identity=(_identity); end
          sig {
            params(defaults: T.nilable(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Defaults), identity: T.nilable(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData::Identity)).void
           }
          def initialize(defaults: nil, identity: nil); end
        end
        # The account ID to evaluate. Exactly one of account or account_data must be provided.
        sig { returns(T.nilable(String)) }
        def account; end
        sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
        def account=(_account); end
        # Account data for entity-less evaluation. Exactly one of account or account_data must be provided.
        sig { returns(T.nilable(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData)) }
        def account_data; end
        sig {
          params(_account_data: T.nilable(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData)).returns(T.nilable(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData))
         }
        def account_data=(_account_data); end
        # List of signals to evaluate.
        sig { returns(T::Array[String]) }
        def signals; end
        sig { params(_signals: T::Array[String]).returns(T::Array[String]) }
        def signals=(_signals); end
        sig {
          params(account: T.nilable(String), account_data: T.nilable(::Stripe::V2::Core::AccountEvaluationCreateParams::AccountData), signals: T::Array[String]).void
         }
        def initialize(account: nil, account_data: nil, signals: nil); end
      end
    end
  end
end