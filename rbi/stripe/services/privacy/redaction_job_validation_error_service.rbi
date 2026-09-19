# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Privacy
    class RedactionJobValidationErrorService < StripeService
      # Returns a list of validation errors for the specified redaction job.
      sig {
        params(id: String, params: T.any(::Stripe::Privacy::RedactionJobValidationErrorListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(id, params = {}, opts = {}); end
    end
  end
end