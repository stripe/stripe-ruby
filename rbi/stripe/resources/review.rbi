# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Reviews can be used to supplement automated fraud detection with human expertise.
  #
  # Learn more about [Radar](https://stripe.com/radar) and reviewing payments
  # [here](https://stripe.com/docs/radar/reviews).
  class Review < APIResource
    class IpAddressLocation < Stripe::StripeObject
      # The city where the payment originated.
      sig { returns(T.nilable(String)) }
      attr_reader :city
      # Two-letter ISO code representing the country where the payment originated.
      sig { returns(T.nilable(String)) }
      attr_reader :country
      # The geographic latitude where the payment originated.
      sig { returns(T.nilable(Float)) }
      attr_reader :latitude
      # The geographic longitude where the payment originated.
      sig { returns(T.nilable(Float)) }
      attr_reader :longitude
      # The state/county/province/region where the payment originated.
      sig { returns(T.nilable(String)) }
      attr_reader :region
    end
    class Session < Stripe::StripeObject
      # The browser used in this browser session (e.g., `Chrome`).
      sig { returns(T.nilable(String)) }
      attr_reader :browser
      # Information about the device used for the browser session (e.g., `Samsung SM-G930T`).
      sig { returns(T.nilable(String)) }
      attr_reader :device
      # The platform for the browser session (e.g., `Macintosh`).
      sig { returns(T.nilable(String)) }
      attr_reader :platform
      # The version for the browser session (e.g., `61.0.3163.100`).
      sig { returns(T.nilable(String)) }
      attr_reader :version
    end
    # The ZIP or postal code of the card used, if applicable.
    sig { returns(T.nilable(String)) }
    attr_reader :billing_zip

    # The charge associated with this review.
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    attr_reader :charge

    # The reason the review was closed, or null if it has not yet been closed. One of `approved`, `refunded`, `refunded_as_fraud`, `disputed`, or `redacted`.
    sig { returns(T.nilable(String)) }
    attr_reader :closed_reason

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # The IP address where the payment originated.
    sig { returns(T.nilable(String)) }
    attr_reader :ip_address

    # Information related to the location of the payment. Note that this information is an approximation and attempts to locate the nearest population center - it should not be used to determine a specific address.
    sig { returns(T.nilable(IpAddressLocation)) }
    attr_reader :ip_address_location

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # If `true`, the review needs action.
    sig { returns(T::Boolean) }
    attr_reader :open

    # The reason the review was opened. One of `rule` or `manual`.
    sig { returns(String) }
    attr_reader :opened_reason

    # The PaymentIntent ID associated with this review, if one exists.
    sig { returns(T.any(String, Stripe::PaymentIntent)) }
    attr_reader :payment_intent

    # The reason the review is currently open or closed. One of `rule`, `manual`, `approved`, `refunded`, `refunded_as_fraud`, `disputed`, or `redacted`.
    sig { returns(String) }
    attr_reader :reason

    # Information related to the browsing session of the user who initiated the payment.
    sig { returns(T.nilable(Session)) }
    attr_reader :session
  end
end