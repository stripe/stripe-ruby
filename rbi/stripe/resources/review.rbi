# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Reviews can be used to supplement automated fraud detection with human expertise.
  #
  # Learn more about [Radar](https://docs.stripe.com/radar) and reviewing payments
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
    # The reason the review was closed, or null if it has not yet been closed. One of `approved`, `refunded`, `refunded_as_fraud`, `disputed`, `redacted`, `canceled`, `payment_never_settled`, or `acknowledged`.
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
    # The reason the review is currently open or closed. One of `rule`, `manual`, `approved`, `refunded`, `refunded_as_fraud`, `disputed`, `redacted`, `canceled`, `payment_never_settled`, or `acknowledged`.
    sig { returns(String) }
    attr_reader :reason
    # Information related to the browsing session of the user who initiated the payment.
    sig { returns(T.nilable(Session)) }
    attr_reader :session
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lte
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return reviews that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::Review::ListParams::Created, Integer))) }
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(created: T.nilable(T.any(::Stripe::Review::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class ApproveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # Approves a Review object, closing it and removing it from the list of reviews.
    sig {
      params(params: T.any(::Stripe::Review::ApproveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Review)
     }
    def approve(params = {}, opts = {}); end

    # Approves a Review object, closing it and removing it from the list of reviews.
    sig {
      params(review: String, params: T.any(::Stripe::Review::ApproveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Review)
     }
    def self.approve(review, params = {}, opts = {}); end

    # Returns a list of Review objects that have open set to true. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
    sig {
      params(params: T.any(::Stripe::Review::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end