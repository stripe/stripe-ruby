# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module GiftCards
    class CardService < StripeService
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(String) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(Integer) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(String) }
        attr_accessor :starting_after
        sig {
          params(ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String).void
         }
        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
      end
      class CreateParams < Stripe::RequestParams
        class CreatedBy < Stripe::RequestParams
          class Payment < Stripe::RequestParams
            # The PaymentIntent used to collect payment for this object.
            sig { returns(String) }
            attr_accessor :payment_intent
            sig { params(payment_intent: String).void }
            def initialize(payment_intent: nil); end
          end
          # The details for the payment that created this object.
          sig { returns(::Stripe::GiftCards::CardService::CreateParams::CreatedBy::Payment) }
          attr_accessor :payment
          # The type of event that created this object.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(payment: ::Stripe::GiftCards::CardService::CreateParams::CreatedBy::Payment, type: String).void
           }
          def initialize(payment: nil, type: nil); end
        end
        # The active state for the new gift card, defaults to false. The active state can be updated after creation.
        sig { returns(T::Boolean) }
        attr_accessor :active
        # Related objects which created this gift card.
        sig { returns(::Stripe::GiftCards::CardService::CreateParams::CreatedBy) }
        attr_accessor :created_by
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # The initial amount to load onto the new gift card, defaults to 0.
        sig { returns(Integer) }
        attr_accessor :initial_amount
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        sig {
          params(active: T::Boolean, created_by: ::Stripe::GiftCards::CardService::CreateParams::CreatedBy, currency: String, expand: T::Array[String], initial_amount: Integer, metadata: T::Hash[String, String]).void
         }
        def initialize(
          active: nil,
          created_by: nil,
          currency: nil,
          expand: nil,
          initial_amount: nil,
          metadata: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        # The new active state for the gift card.
        sig { returns(T::Boolean) }
        attr_accessor :active
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        sig {
          params(active: T::Boolean, expand: T::Array[String], metadata: T.nilable(T::Hash[String, String])).void
         }
        def initialize(active: nil, expand: nil, metadata: nil); end
      end
      class ValidateParams < Stripe::RequestParams
        # The gift card code to be validated.
        sig { returns(String) }
        attr_accessor :code
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # The pin associated with the gift card. Not all gift cards have pins.
        sig { returns(String) }
        attr_accessor :giftcard_pin
        sig { params(code: String, expand: T::Array[String], giftcard_pin: String).void }
        def initialize(code: nil, expand: nil, giftcard_pin: nil); end
      end
      # Creates a new gift card object.
      sig {
        params(params: T.any(::Stripe::GiftCards::CardService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Card)
       }
      def create(params = {}, opts = {}); end

      # List gift cards for an account
      sig {
        params(params: T.any(::Stripe::GiftCards::CardService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieve a gift card by id
      sig {
        params(id: String, params: T.any(::Stripe::GiftCards::CardService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Card)
       }
      def retrieve(id, params = {}, opts = {}); end

      # Update a gift card
      sig {
        params(id: String, params: T.any(::Stripe::GiftCards::CardService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Card)
       }
      def update(id, params = {}, opts = {}); end

      # Validates a gift card code, returning the matching gift card object if it exists.
      sig {
        params(params: T.any(::Stripe::GiftCards::CardService::ValidateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Card)
       }
      def validate(params = {}, opts = {}); end
    end
  end
end