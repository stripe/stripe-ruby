# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Risk
    class FormService < StripeService
      # Retrieves a risk Form by ID.
      #
      # Error Codes
      #
      # | Code | HTTP status | Description |
      # | — | — | — |
      # | form_not_found | 400 | No Form matches the supplied ID. |
      sig {
        params(id: String, params: T.any(::Stripe::Risk::FormRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Risk::Form)
       }
      def retrieve(id, params = {}, opts = {}); end

      # Updates a risk Form with the connected account's response.
      #
      # Error Codes
      #
      # | Code | HTTP status | Description |
      # | — | — | — |
      # | form_not_found | 400 | No Form matches the supplied ID. |
      # | form_closed | 400 | The Form is closed and cannot accept updates. |
      # | invalid_field_for_form_type | 400 | A submitted field is not supported by this Form type. |
      # | form_field_already_submitted | 400 | A submitted field has already been submitted. |
      # | form_insufficient_fields | 400 | Required fields are missing for this Form type. |
      # | resource_missing | 404 | A submitted file does not exist or is not accessible to the requesting account. |
      sig {
        params(id: String, params: T.any(::Stripe::Risk::FormUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Risk::Form)
       }
      def update(id, params = {}, opts = {}); end
    end
  end
end