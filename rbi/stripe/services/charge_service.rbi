# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ChargeService < StripeService
    # This method is deprecated and will be removed soon. If your integration uses it, you need to update it to use a different payment flow, such as [the Payment Intents API](https://docs.stripe.com/docs/payments/payment-intents).
    sig {
      params(id: String, params: T.any(::Stripe::ChargeCaptureParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Charge)
     }
    def capture(id, params = {}, opts = {}); end

    # This method is deprecated and will be removed soon. If your integration uses it, you need to update it to use a different payment flow, such as [the Payment Intents API](https://docs.stripe.com/docs/payments/payment-intents).
    sig {
      params(params: T.any(::Stripe::ChargeCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Charge)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of charges you've previously created. The charges are returned in sorted order, with the most recent charges appearing first.
    sig {
      params(params: T.any(::Stripe::ChargeListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the details of a charge that has previously been created. Supply the unique charge ID that was returned from your previous request, and Stripe will return the corresponding charge information. The same information is returned when creating or refunding the charge.
    sig {
      params(id: String, params: T.any(::Stripe::ChargeRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Charge)
     }
    def retrieve(id, params = {}, opts = {}); end

    # Search for charges you've previously created using Stripe's [Search Query Language](https://docs.stripe.com/docs/search#search-query-language).
    # Don't use search in read-after-write flows where strict consistency is necessary. Under normal operating
    # conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up
    # to an hour behind during outages. Search functionality is not available to merchants in India.
    sig {
      params(params: T.any(::Stripe::ChargeSearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::SearchResultObject)
     }
    def search(params = {}, opts = {}); end

    # Updates the specified charge by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    sig {
      params(id: String, params: T.any(::Stripe::ChargeUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Charge)
     }
    def update(id, params = {}, opts = {}); end
  end
end