# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class RefundService < StripeService
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
      # Only return refunds for the charge specified by this charge ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :charge
      # Only return refunds that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::RefundService::ListParams::Created, Integer))) }
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
      # Only return refunds for the PaymentIntent specified by this ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_intent
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(charge: T.nilable(String), created: T.nilable(T.any(::Stripe::RefundService::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), payment_intent: T.nilable(String), starting_after: T.nilable(String)).void
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
    class CreateParams < Stripe::RequestParams
      # Attribute for param field amount
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount
      # The identifier of the charge to refund.
      sig { returns(T.nilable(String)) }
      attr_accessor :charge
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      attr_accessor :currency
      # Customer whose customer balance to refund from.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # For payment methods without native refund support (e.g., Konbini, PromptPay), use this email from the customer to receive refund instructions.
      sig { returns(T.nilable(String)) }
      attr_accessor :instructions_email
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # Origin of the refund
      sig { returns(T.nilable(String)) }
      attr_accessor :origin
      # The identifier of the PaymentIntent to refund.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_intent
      # String indicating the reason for the refund. If set, possible values are `duplicate`, `fraudulent`, and `requested_by_customer`. If you believe the charge to be fraudulent, specifying `fraudulent` as the reason will add the associated card and email to your [block lists](https://stripe.com/docs/radar/lists), and will also help us improve our fraud detection algorithms.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason
      # Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :refund_application_fee
      # Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount).<br><br>A transfer can be reversed only by the application that created the charge.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :reverse_transfer
      sig {
        params(amount: T.nilable(Integer), charge: T.nilable(String), currency: T.nilable(String), customer: T.nilable(String), expand: T.nilable(T::Array[String]), instructions_email: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), origin: T.nilable(String), payment_intent: T.nilable(String), reason: T.nilable(String), refund_application_fee: T.nilable(T::Boolean), reverse_transfer: T.nilable(T::Boolean)).void
       }
      def initialize(
        amount: nil,
        charge: nil,
        currency: nil,
        customer: nil,
        expand: nil,
        instructions_email: nil,
        metadata: nil,
        origin: nil,
        payment_intent: nil,
        reason: nil,
        refund_application_fee: nil,
        reverse_transfer: nil
      ); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      sig {
        params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
       }
      def initialize(expand: nil, metadata: nil); end
    end
    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # Cancels a refund with a status of requires_action.
    #
    # You can't cancel refunds in other states. Only refunds for payment methods that require customer action can enter the requires_action state.
    sig {
      params(refund: String, params: T.any(::Stripe::RefundService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Refund)
     }
    def cancel(refund, params = {}, opts = {}); end

    # When you create a new refund, you must specify a Charge or a PaymentIntent object on which to create it.
    #
    # Creating a new refund will refund a charge that has previously been created but not yet refunded.
    # Funds will be refunded to the credit or debit card that was originally charged.
    #
    # You can optionally refund only part of a charge.
    # You can do so multiple times, until the entire charge has been refunded.
    #
    # Once entirely refunded, a charge can't be refunded again.
    # This method will raise an error when called on an already-refunded charge,
    # or when trying to refund more money than is left on a charge.
    sig {
      params(params: T.any(::Stripe::RefundService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Refund)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of all refunds you created. We return the refunds in sorted order, with the most recent refunds appearing first. The 10 most recent refunds are always available by default on the Charge object.
    sig {
      params(params: T.any(::Stripe::RefundService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the details of an existing refund.
    sig {
      params(refund: String, params: T.any(::Stripe::RefundService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Refund)
     }
    def retrieve(refund, params = {}, opts = {}); end

    # Updates the refund that you specify by setting the values of the passed parameters. Any parameters that you don't provide remain unchanged.
    #
    # This request only accepts metadata as an argument.
    sig {
      params(refund: String, params: T.any(::Stripe::RefundService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Refund)
     }
    def update(refund, params = {}, opts = {}); end
  end
end