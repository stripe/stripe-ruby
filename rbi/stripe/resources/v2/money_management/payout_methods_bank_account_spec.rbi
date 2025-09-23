# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # The PayoutMethodsBankAccountSpec object.
      class PayoutMethodsBankAccountSpec < SingletonAPIResource
        class Countries < Stripe::StripeObject
          class Field < Stripe::StripeObject
            class LocalNameHuman < Stripe::StripeObject
              # The default content of the localizable string.
              sig { returns(String) }
              def content; end
              # A unique key representing the instance of this localizable string.
              sig { returns(String) }
              def localization_key; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The local name of the field.
            sig { returns(String) }
            def local_name; end
            # The human readable local name of the field.
            sig { returns(LocalNameHuman) }
            def local_name_human; end
            # The maximum length of the field.
            sig { returns(Integer) }
            def max_length; end
            # THe minimum length of the field.
            sig { returns(Integer) }
            def min_length; end
            # The placeholder value of the field.
            sig { returns(String) }
            def placeholder; end
            # The stripe name of the field.
            sig { returns(String) }
            def stripe_name; end
            # The validation regex of the field.
            sig { returns(String) }
            def validation_regex; end
            def self.inner_class_types
              @inner_class_types = {local_name_human: LocalNameHuman}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The list of fields for a country, along with associated information.
          sig { returns(T::Array[Field]) }
          def fields; end
          def self.inner_class_types
            @inner_class_types = {fields: Field}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The list of specs by country.
        sig { returns(T::Hash[String, Countries]) }
        def countries; end
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