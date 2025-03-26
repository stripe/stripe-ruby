# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # The PayoutMethodsBankAccountSpec object.
      class PayoutMethodsBankAccountSpec < APIResource
        OBJECT_NAME = "v2.money_management.payout_methods_bank_account_spec"
        def self.object_name
          "v2.money_management.payout_methods_bank_account_spec"
        end

        class Countries < Stripe::StripeObject
          class Field < Stripe::StripeObject
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
          end
          # The list of fields for a country, along with associated information.
          attr_reader :fields
        end
        # The list of specs by country.
        attr_reader :countries
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
      end
    end
  end
end
