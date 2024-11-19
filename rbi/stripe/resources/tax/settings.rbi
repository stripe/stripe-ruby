# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    # You can use Tax `Settings` to manage configurations used by Stripe Tax calculations.
    #
    # Related guide: [Using the Settings API](https://stripe.com/docs/tax/settings-api)
    class Settings < SingletonAPIResource
      class Defaults < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :tax_behavior
        sig { returns(T.nilable(String)) }
        attr_reader :tax_code
      end
      class HeadOffice < Stripe::StripeObject
        class Address < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :city
          sig { returns(T.nilable(String)) }
          attr_reader :country
          sig { returns(T.nilable(String)) }
          attr_reader :line1
          sig { returns(T.nilable(String)) }
          attr_reader :line2
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        sig { returns(Address) }
        attr_reader :address
      end
      class StatusDetails < Stripe::StripeObject
        class Active < Stripe::StripeObject; end
        class Pending < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :missing_fields
        end
        sig { returns(Active) }
        attr_reader :active
        sig { returns(Pending) }
        attr_reader :pending
      end
      sig { returns(Defaults) }
      # Attribute for field defaults
      attr_reader :defaults
      sig { returns(T.nilable(HeadOffice)) }
      # The place where your business is located.
      attr_reader :head_office
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # The status of the Tax `Settings`.
      attr_reader :status
      sig { returns(StatusDetails) }
      # Attribute for field status_details
      attr_reader :status_details
    end
  end
end