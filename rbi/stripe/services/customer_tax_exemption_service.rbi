# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class CustomerTaxExemptionService < StripeService
    # Create a location specific tax exemption for a customer.
    sig {
      params(customer: String, params: T.any(::Stripe::CustomerTaxExemptionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::CustomerTaxExemption)
     }
    def create(customer, params = {}, opts = {}); end

    # Delete a location specific tax exemption for a customer.
    sig {
      params(customer: String, id: String, params: T.any(::Stripe::CustomerTaxExemptionDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::CustomerTaxExemption)
     }
    def delete(customer, id, params = {}, opts = {}); end

    # List all location specific tax exemptions for a customer.
    sig {
      params(customer: String, params: T.any(::Stripe::CustomerTaxExemptionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(customer, params = {}, opts = {}); end

    # Retrieve a location specific tax exemption for a customer.
    sig {
      params(customer: String, id: String, params: T.any(::Stripe::CustomerTaxExemptionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::CustomerTaxExemption)
     }
    def retrieve(customer, id, params = {}, opts = {}); end
  end
end