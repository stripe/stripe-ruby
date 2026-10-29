# frozen_string_literal: true

module Stripe
  # Represents an error object as returned by the API.
  #
  # @see https://stripe.com/docs/api/errors
  class ErrorObject < StripeObject
    # Unlike other objects, we explicitly declare getter methods here. This
    # is because the API doesn't return `null` values for fields on this
    # object, rather the fields are omitted entirely. Not declaring the getter
    # methods would cause users to run into `NoMethodError` exceptions and
    # get in the way of generic error handling.

    # errorFields: The beginning of the section generated from our OpenAPI spec
    # errorFields: The end of the section generated from our OpenAPI spec
  end

  # Represents on OAuth error returned by the OAuth API.
  #
  # @see https://stripe.com/docs/connect/oauth-reference#post-token-errors
  class OAuthErrorObject < StripeObject
    # A unique error code per error type.
    def error
      @values[:error]
    end

    # A human readable description of the error.
    def error_description
      @values[:error_description]
    end
  end
end
