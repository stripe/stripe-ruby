# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class FormService < StripeService
      # Returns a list of tax forms which were previously created. The tax forms are returned in sorted order, with the oldest tax forms appearing first.
      sig {
        params(params: T.any(::Stripe::Tax::FormListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Download the PDF for a tax form.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::FormPdfParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, read_body_chunk_block: T.untyped).returns(T.untyped)
       }
      def pdf(id, params = {}, opts = {}, &read_body_chunk_block); end

      # Retrieves the details of a tax form that has previously been created. Supply the unique tax form ID that was returned from your previous request, and Stripe will return the corresponding tax form information.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::FormRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Form)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end