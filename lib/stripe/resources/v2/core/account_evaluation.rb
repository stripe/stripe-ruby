# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      # Account Evaluation resource.
      class AccountEvaluation < APIResource
        OBJECT_NAME = "v2.core.account_evaluation"
        def self.object_name
          "v2.core.account_evaluation"
        end

        class AccountData < ::Stripe::StripeObject
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
        # The account ID if this evaluation is for an existing account.
        attr_reader :account
        # Account data if this evaluation is for an account without an existing Stripe entity.
        attr_reader :account_data
        # Timestamp at which the evaluation was created.
        attr_reader :created
        # List of signals that were triggered for evaluation.
        attr_reader :evaluations_triggered
        # Unique identifier for the account evaluation.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = { account_data: AccountData }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
