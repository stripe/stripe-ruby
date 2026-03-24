# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      # Account Evaluation resource.
      class AccountEvaluation < APIResource
        class AccountData < ::Stripe::StripeObject
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
        # The account ID if this evaluation is for an existing account.
        sig { returns(T.nilable(String)) }
        def account; end
        # Account data if this evaluation is for an account without an existing Stripe entity.
        sig { returns(T.nilable(AccountData)) }
        def account_data; end
        # Timestamp at which the evaluation was created.
        sig { returns(String) }
        def created; end
        # List of signals that were triggered for evaluation.
        sig { returns(T::Array[String]) }
        def evaluations_triggered; end
        # Unique identifier for the account evaluation.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end