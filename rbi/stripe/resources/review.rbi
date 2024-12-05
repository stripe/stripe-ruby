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
      sig { returns(T.nilable(String)) }
      attr_reader :city
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(Float)) }
      attr_reader :latitude
      sig { returns(T.nilable(Float)) }
      attr_reader :longitude
      sig { returns(T.nilable(String)) }
      attr_reader :region
    end
    class Session < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :browser
      sig { returns(T.nilable(String)) }
      attr_reader :device
      sig { returns(T.nilable(String)) }
      attr_reader :platform
      sig { returns(T.nilable(String)) }
      attr_reader :version
    end
    sig { returns(T.nilable(String)) }
    # The ZIP or postal code of the card used, if applicable.
    attr_reader :billing_zip
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    # The charge associated with this review.
    attr_reader :charge
    sig { returns(T.nilable(String)) }
    # The reason the review was closed, or null if it has not yet been closed. One of `approved`, `refunded`, `refunded_as_fraud`, `disputed`, or `redacted`.
    attr_reader :closed_reason
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(String)) }
    # The IP address where the payment originated.
    attr_reader :ip_address
    sig { returns(T.nilable(IpAddressLocation)) }
    # Information related to the location of the payment. Note that this information is an approximation and attempts to locate the nearest population center - it should not be used to determine a specific address.
    attr_reader :ip_address_location
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T::Boolean) }
    # If `true`, the review needs action.
    attr_reader :open
    sig { returns(String) }
    # The reason the review was opened. One of `rule` or `manual`.
    attr_reader :opened_reason
    sig { returns(T.any(String, Stripe::PaymentIntent)) }
    # The PaymentIntent ID associated with this review, if one exists.
    attr_reader :payment_intent
    sig { returns(String) }
    # The reason the review is currently open or closed. One of `rule`, `manual`, `approved`, `refunded`, `refunded_as_fraud`, `disputed`, or `redacted`.
    attr_reader :reason
    sig { returns(T.nilable(Session)) }
    # Information related to the browsing session of the user who initiated the payment.
    attr_reader :session
  end
end