# File generated from our OpenAPI spec
# frozen_string_literal: true

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
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/risk/forms/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

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
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/risk/forms/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
