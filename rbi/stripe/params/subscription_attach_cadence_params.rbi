# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class SubscriptionAttachCadenceParams < Stripe::RequestParams
    # The Billing Cadence which controls the timing of recurring invoice generation for this subscription. If unset, the subscription will bill according to its own configured schedule and create its own invoices. If set, this subscription will be billed by the cadence instead, potentially sharing invoices with the other subscriptions linked to that Cadence.
    sig { returns(String) }
    def billing_cadence; end
    sig { params(_billing_cadence: String).returns(String) }
    def billing_cadence=(_billing_cadence); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    sig { params(billing_cadence: String, expand: T.nilable(T::Array[String])).void }
    def initialize(billing_cadence: nil, expand: nil); end
  end
end