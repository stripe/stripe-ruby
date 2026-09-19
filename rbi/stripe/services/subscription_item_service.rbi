# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class SubscriptionItemService < StripeService
    # Adds a new item to an existing subscription. No existing items will be changed or replaced.
    sig {
      params(params: T.any(::Stripe::SubscriptionItemCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::SubscriptionItem)
     }
    def create(params = {}, opts = {}); end

    # Deletes an item from the subscription. Removing a subscription item from a subscription will not cancel the subscription.
    sig {
      params(id: String, params: T.any(::Stripe::SubscriptionItemDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::SubscriptionItem)
     }
    def delete(id, params = {}, opts = {}); end

    # Returns a list of your subscription items for a given subscription.
    sig {
      params(params: T.any(::Stripe::SubscriptionItemListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the subscription item with the given ID.
    sig {
      params(id: String, params: T.any(::Stripe::SubscriptionItemRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::SubscriptionItem)
     }
    def retrieve(id, params = {}, opts = {}); end

    # Serializes a SubscriptionItem create request into a batch job JSONL line.
    sig { params(params: ::Stripe::SubscriptionItemCreateParams, opts: T.untyped).returns(String) }
    def serialize_batch_create(params = {}, opts = {}); end

    # Serializes a SubscriptionItem delete request into a batch job JSONL line.
    sig {
      params(id: String, params: ::Stripe::SubscriptionItemDeleteParams, opts: T.untyped).returns(String)
     }
    def serialize_batch_delete(id, params = {}, opts = {}); end

    # Serializes a SubscriptionItem update request into a batch job JSONL line.
    sig {
      params(id: String, params: ::Stripe::SubscriptionItemUpdateParams, opts: T.untyped).returns(String)
     }
    def serialize_batch_update(id, params = {}, opts = {}); end

    # Updates the plan or quantity of an item on a current subscription.
    sig {
      params(id: String, params: T.any(::Stripe::SubscriptionItemUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::SubscriptionItem)
     }
    def update(id, params = {}, opts = {}); end
  end
end