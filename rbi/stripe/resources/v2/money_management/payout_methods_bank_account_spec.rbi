# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # The PayoutMethodsBankAccountSpec object.
      class PayoutMethodsBankAccountSpec < APIResource
        class Countries < Stripe::StripeObject
          class Field < Stripe::StripeObject
            class LocalNameHuman < Stripe::StripeObject
              # Attribute for field content
              sig { returns(String) }
              attr_reader :content
              # Attribute for field localization_key
              sig { returns(String) }
              attr_reader :localization_key
            end
            # The local name of the field.
            sig { returns(String) }
            attr_reader :local_name
            # The human readable local name of the field.
            sig { returns(LocalNameHuman) }
            attr_reader :local_name_human
            # The maximum length of the field.
            sig { returns(Integer) }
            attr_reader :max_length
            # THe minimum length of the field.
            sig { returns(Integer) }
            attr_reader :min_length
            # The placeholder value of the field.
            sig { returns(String) }
            attr_reader :placeholder
            # The stripe name of the field.
            sig { returns(String) }
            attr_reader :stripe_name
            # The validation regex of the field.
            sig { returns(String) }
            attr_reader :validation_regex
          end
          # The list of fields for a country, along with associated information.
          sig { returns(T::Array[Field]) }
          attr_reader :fields
        end
        # The list of specs by country.
        sig { returns(T::Hash[String, Countries]) }
        attr_reader :countries
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end