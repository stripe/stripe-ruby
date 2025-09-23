# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # The PayoutMethodsBankAccountSpec object.
      class PayoutMethodsBankAccountSpec < SingletonAPIResource
        OBJECT_NAME = "v2.money_management.payout_methods_bank_account_spec"
        def self.object_name
          "v2.money_management.payout_methods_bank_account_spec"
        end

        class Countries < Stripe::StripeObject
          class Field < Stripe::StripeObject
            class LocalNameHuman < Stripe::StripeObject
              # The default content of the localizable string.
              attr_reader :content
              # A unique key representing the instance of this localizable string.
              attr_reader :localization_key

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The local name of the field.
            attr_reader :local_name
            # The human readable local name of the field.
            attr_reader :local_name_human
            # The maximum length of the field.
            attr_reader :max_length
            # THe minimum length of the field.
            attr_reader :min_length
            # The placeholder value of the field.
            attr_reader :placeholder
            # The stripe name of the field.
            attr_reader :stripe_name
            # The validation regex of the field.
            attr_reader :validation_regex

            def self.inner_class_types
              @inner_class_types = { local_name_human: LocalNameHuman }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The list of fields for a country, along with associated information.
          attr_reader :fields

          def self.inner_class_types
            @inner_class_types = { fields: Field }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The list of specs by country.
        attr_reader :countries
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = { countries: Countries }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
