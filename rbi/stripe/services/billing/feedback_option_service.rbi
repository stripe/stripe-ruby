# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class FeedbackOptionService < StripeService
      # Creates a new feedback option.
      sig {
        params(params: T.any(::Stripe::Billing::FeedbackOptionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Billing::FeedbackOption)
       }
      def create(params = {}, opts = {}); end

      # Deactivates a feedback option. Deactivated feedback options cannot be used in portal configurations.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::FeedbackOptionDeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Billing::FeedbackOption)
       }
      def deactivate(id, params = {}, opts = {}); end

      # Returns a list of your feedback options.
      sig {
        params(params: T.any(::Stripe::Billing::FeedbackOptionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a feedback option object given an ID.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::FeedbackOptionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Billing::FeedbackOption)
       }
      def retrieve(id, params = {}, opts = {}); end

      # Updates the description of an existing feedback option.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::FeedbackOptionUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Billing::FeedbackOption)
       }
      def update(id, params = {}, opts = {}); end
    end
  end
end