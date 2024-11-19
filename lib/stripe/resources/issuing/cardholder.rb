# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://stripe.com/docs/issuing) cards.
    #
    # Related guide: [How to create a cardholder](https://stripe.com/docs/issuing/cards/virtual/issue-cards#create-cardholder)
    class Cardholder < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.cardholder"
      def self.object_name
        "issuing.cardholder"
      end

      class Billing < Stripe::StripeObject
        class Address < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end
        attr_reader :address
      end

      class Company < Stripe::StripeObject
        attr_reader :tax_id_provided
      end

      class Individual < Stripe::StripeObject
        class CardIssuing < Stripe::StripeObject
          class UserTermsAcceptance < Stripe::StripeObject
            attr_reader :date, :ip, :user_agent
          end
          attr_reader :user_terms_acceptance
        end

        class Dob < Stripe::StripeObject
          attr_reader :day, :month, :year
        end

        class Verification < Stripe::StripeObject
          class Document < Stripe::StripeObject
            attr_reader :back, :front
          end
          attr_reader :document
        end
        attr_reader :card_issuing, :dob, :first_name, :last_name, :verification
      end

      class Requirements < Stripe::StripeObject
        attr_reader :disabled_reason, :past_due
      end

      class SpendingControls < Stripe::StripeObject
        class SpendingLimit < Stripe::StripeObject
          attr_reader :amount, :categories, :interval
        end
        attr_reader :allowed_categories, :allowed_merchant_countries, :blocked_categories, :blocked_merchant_countries, :spending_limits, :spending_limits_currency
      end
      # Attribute for field billing
      attr_reader :billing
      # Additional information about a `company` cardholder.
      attr_reader :company
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The cardholder's email address.
      attr_reader :email
      # Unique identifier for the object.
      attr_reader :id
      # Additional information about an `individual` cardholder.
      attr_reader :individual
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # The cardholder's name. This will be printed on cards issued to them.
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://stripe.com/docs/issuing/3d-secure#when-is-3d-secure-applied) for more details.
      attr_reader :phone_number
      # The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
      #  This changes the language of the [3D Secure flow](https://stripe.com/docs/issuing/3d-secure) and one-time password messages sent to the cardholder.
      attr_reader :preferred_locales
      # Attribute for field requirements
      attr_reader :requirements
      # Rules that control spending across this cardholder's cards. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
      attr_reader :spending_controls
      # Specifies whether to permit authorizations on this cardholder's cards.
      attr_reader :status
      # One of `individual` or `company`. See [Choose a cardholder type](https://stripe.com/docs/issuing/other/choose-cardholder) for more details.
      attr_reader :type

      # Creates a new Issuing Cardholder object that can be issued cards.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/issuing/cardholders",
          params: params,
          opts: opts
        )
      end

      # Returns a list of Issuing Cardholder objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/cardholders",
          params: params,
          opts: opts
        )
      end

      # Updates the specified Issuing Cardholder object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/cardholders/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
