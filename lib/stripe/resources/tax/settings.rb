# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # You can use Tax `Settings` to manage configurations used by Stripe Tax calculations.
    #
    # Related guide: [Using the Settings API](https://stripe.com/docs/tax/settings-api)
    class Settings < SingletonAPIResource
      include Stripe::APIOperations::SingletonSave

      OBJECT_NAME = "tax.settings"
      def self.object_name
        "tax.settings"
      end

      class Defaults < Stripe::StripeObject
        attr_reader :tax_behavior, :tax_code
      end

      class HeadOffice < Stripe::StripeObject
        class Address < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end
        attr_reader :address
      end

      class StatusDetails < Stripe::StripeObject
        class Active < Stripe::StripeObject; end

        class Pending < Stripe::StripeObject
          attr_reader :missing_fields
        end
        attr_reader :active, :pending
      end
      # Attribute for field defaults
      attr_reader :defaults
      # The place where your business is located.
      attr_reader :head_office
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The status of the Tax `Settings`.
      attr_reader :status
      # Attribute for field status_details
      attr_reader :status_details
    end
  end
end
