# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    class ReaderService < StripeService
      # Cancels the current reader action.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderCancelActionParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def cancel_action(reader, params = {}, opts = {}); end

      # Initiates an input collection flow on a Reader.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderCollectInputsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def collect_inputs(reader, params = {}, opts = {}); end

      # Initiates a payment flow on a Reader and updates the PaymentIntent with card details before manual confirmation.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderCollectPaymentMethodParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def collect_payment_method(reader, params = {}, opts = {}); end

      # Finalizes a payment on a Reader.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderConfirmPaymentIntentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def confirm_payment_intent(reader, params = {}, opts = {}); end

      # Creates a new Reader object.
      sig {
        params(params: T.any(::Stripe::Terminal::ReaderCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def create(params = {}, opts = {}); end

      # Deletes a Reader object.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def delete(reader, params = {}, opts = {}); end

      # Returns a list of Reader objects.
      sig {
        params(params: T.any(::Stripe::Terminal::ReaderListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Initiates a payment flow on a Reader.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderProcessPaymentIntentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def process_payment_intent(reader, params = {}, opts = {}); end

      # Initiates a setup intent flow on a Reader.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderProcessSetupIntentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def process_setup_intent(reader, params = {}, opts = {}); end

      # Initiates a refund on a Reader
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderRefundPaymentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def refund_payment(reader, params = {}, opts = {}); end

      # Retrieves a Reader object.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def retrieve(reader, params = {}, opts = {}); end

      # Sets reader display to show cart details.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderSetReaderDisplayParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def set_reader_display(reader, params = {}, opts = {}); end

      # Updates a Reader object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def update(reader, params = {}, opts = {}); end
    end
  end
end