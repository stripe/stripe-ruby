# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class CustomerTaxIdService < StripeService
    # Creates a new tax_id object for a customer.
    sig {
      params(customer: String, params: T.any(::Stripe::CustomerTaxIdCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::TaxId)
     }
    def create(customer, params = {}, opts = {}); end

    # Deletes an existing tax_id object.
    sig {
      params(customer: String, id: String, params: T.any(::Stripe::CustomerTaxIdDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::TaxId)
     }
    def delete(customer, id, params = {}, opts = {}); end

    # Returns a list of tax IDs for a customer.
    sig {
      params(customer: String, params: T.any(::Stripe::CustomerTaxIdListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(customer, params = {}, opts = {}); end

    # Retrieves the tax_id object with the given identifier.
    sig {
      params(customer: String, id: String, params: T.any(::Stripe::CustomerTaxIdRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::TaxId)
     }
    def retrieve(customer, id, params = {}, opts = {}); end

    # Serializes a CustomerTaxId create request into a batch job JSONL line.
    sig {
      params(customer: String, params: ::Stripe::CustomerTaxIdCreateParams, opts: T.untyped).returns(String)
     }
    def serialize_batch_create_for_customer(customer, params = {}, opts = {}); end

    # Serializes a CustomerTaxId delete request into a batch job JSONL line.
    sig {
      params(customer: String, id: String, params: ::Stripe::CustomerTaxIdDeleteParams, opts: T.untyped).returns(String)
     }
    def serialize_batch_delete(customer, id, params = {}, opts = {}); end
  end
end