# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Privacy
    class RedactionJobValidationErrorService < StripeService
      # Returns a list of validation errors for the specified redaction job.
      def list(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/privacy/redaction_jobs/%<id>s/validation_errors", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
