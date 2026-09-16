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
    # For card errors resulting from a card issuer decline, a short string indicating [how to proceed with an error](https://docs.stripe.com/declines#retrying-issuer-declines) if they provide one.
    def advice_code
      @values[:advice_code]
    end

    # For card errors, the ID of the failed charge.
    def charge
      @values[:charge]
    end

    # For some errors that could be handled programmatically, a short string indicating the [error code](https://docs.stripe.com/error-codes) reported.
    def code
      @values[:code]
    end

    # For card errors resulting from a card issuer decline, a short string indicating the [card issuer's reason for the decline](https://docs.stripe.com/declines#issuer-declines) if they provide one.
    def decline_code
      @values[:decline_code]
    end

    # A URL to more information about the [error code](https://docs.stripe.com/error-codes) reported.
    def doc_url
      @values[:doc_url]
    end

    # A human-readable message providing more details about the error. For card errors, these messages can be shown to your users.
    def message
      @values[:message]
    end

    # For card errors resulting from a card issuer decline, a 2 digit code which indicates the advice given to merchant by the card network on how to proceed with an error.
    def network_advice_code
      @values[:network_advice_code]
    end

    # For payments declined by the network, an alphanumeric code which indicates the reason the payment failed.
    def network_decline_code
      @values[:network_decline_code]
    end

    # If the error is parameter-specific, the parameter related to the error. For example, you can use this to display a message near the correct form field.
    def param
      @values[:param]
    end

    # The PaymentIntent object for errors returned on a request involving a PaymentIntent.
    def payment_intent
      @values[:payment_intent]
    end

    # The PaymentMethod object for errors returned on a request involving a PaymentMethod.
    def payment_method
      @values[:payment_method]
    end

    # If the error is specific to the type of payment method, the payment method type that had a problem. This field is only populated for invoice-related errors.
    def payment_method_type
      @values[:payment_method_type]
    end

    # A URL to the request log entry in your dashboard.
    def request_log_url
      @values[:request_log_url]
    end

    # The SetupIntent object for errors returned on a request involving a SetupIntent.
    def setup_intent
      @values[:setup_intent]
    end

    # The PaymentSource object for errors returned on a request involving a PaymentSource.
    def source
      @values[:source]
    end

    # The type of error returned. One of `api_error`, `card_error`, `idempotency_error`, or `invalid_request_error`
    def type
      @values[:type]
    end

    # The user message associated with the error.
    def user_message
      @values[:user_message]
    end

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
