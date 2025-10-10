# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class MarginService < StripeService
    # Create a margin object to be used with invoices, invoice items, and invoice line items for a customer to represent a partner discount. A margin has a percent_off which is the percent that will be taken off the subtotal after all items and other discounts and promotions) of any invoices for a customer. Calculation of prorations do not include any partner margins applied on the original invoice item.
    sig {
      params(params: T.any(::Stripe::MarginCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Margin)
     }
    def create(params = {}, opts = {}); end

    # Retrieve a list of your margins.
    sig {
      params(params: T.any(::Stripe::MarginListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieve a margin object with the given ID.
    sig {
      params(margin: String, params: T.any(::Stripe::MarginRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Margin)
     }
    def retrieve(margin, params = {}, opts = {}); end

    # Update the specified margin object. Certain fields of the margin object are not editable.
    sig {
      params(margin: String, params: T.any(::Stripe::MarginUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Margin)
     }
    def update(margin, params = {}, opts = {}); end
  end
end