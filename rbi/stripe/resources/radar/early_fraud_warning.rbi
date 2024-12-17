# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    # An early fraud warning indicates that the card issuer has notified us that a
    # charge may be fraudulent.
    #
    # Related guide: [Early fraud warnings](https://stripe.com/docs/disputes/measuring#early-fraud-warnings)
    class EarlyFraudWarning < APIResource
      # An EFW is actionable if it has not received a dispute and has not been fully refunded. You may wish to proactively refund a charge that receives an EFW, in order to avoid receiving a dispute later.
      sig { returns(T::Boolean) }
      attr_reader :actionable
      # ID of the charge this early fraud warning is for, optionally expanded.
      sig { returns(T.any(String, Stripe::Charge)) }
      attr_reader :charge
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # The type of fraud labelled by the issuer. One of `card_never_received`, `fraudulent_card_application`, `made_with_counterfeit_card`, `made_with_lost_card`, `made_with_stolen_card`, `misc`, `unauthorized_use_of_card`.
      sig { returns(String) }
      attr_reader :fraud_type
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # ID of the Payment Intent this early fraud warning is for, optionally expanded.
      sig { returns(T.any(String, Stripe::PaymentIntent)) }
      attr_reader :payment_intent
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(Integer) }
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          sig { returns(Integer) }
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          sig { returns(Integer) }
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          sig { returns(Integer) }
          attr_accessor :lte
          sig { params(gt: Integer, gte: Integer, lt: Integer, lte: Integer).void }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return early fraud warnings for the charge specified by this charge ID.
        sig { returns(String) }
        attr_accessor :charge
        # Only return early fraud warnings that were created during the given date interval.
        sig { returns(T.any(::Stripe::Radar::EarlyFraudWarning::ListParams::Created, Integer)) }
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(String) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(Integer) }
        attr_accessor :limit
        # Only return early fraud warnings for charges that were created by the PaymentIntent specified by this PaymentIntent ID.
        sig { returns(String) }
        attr_accessor :payment_intent
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(String) }
        attr_accessor :starting_after
        sig {
          params(charge: String, created: T.any(::Stripe::Radar::EarlyFraudWarning::ListParams::Created, Integer), ending_before: String, expand: T::Array[String], limit: Integer, payment_intent: String, starting_after: String).void
         }
        def initialize(
          charge: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          payment_intent: nil,
          starting_after: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      # Returns a list of early fraud warnings.
      sig {
        params(params: T.any(::Stripe::Radar::EarlyFraudWarning::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end