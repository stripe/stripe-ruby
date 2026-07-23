# frozen_string_literal: true
# typed: true

module Stripe
  class ErrorObject < StripeObject
    # errorFields: The beginning of the section generated from our OpenAPI spec
    # For card errors resulting from a card issuer decline, a short string indicating [how to proceed with an error](https://docs.stripe.com/declines#retrying-issuer-declines) if they provide one.
    sig { returns(T.nilable(String)) }
    def advice_code; end
    
    # For card errors, the ID of the failed charge.
    sig { returns(T.nilable(String)) }
    def charge; end
    
    # For some errors that could be handled programmatically, a short string indicating the [error code](https://docs.stripe.com/error-codes) reported.
    sig { returns(T.nilable(String)) }
    def code; end
    
    # For card errors resulting from a card issuer decline, a short string indicating the [card issuer's reason for the decline](https://docs.stripe.com/declines#issuer-declines) if they provide one.
    sig { returns(T.nilable(String)) }
    def decline_code; end
    
    # A URL to more information about the [error code](https://docs.stripe.com/error-codes) reported.
    sig { returns(T.nilable(String)) }
    def doc_url; end
    
    # The GiftCardOperation object for errors returned on a request involving a GiftCardOperation.
    sig { returns(T.nilable(::Stripe::GiftCardOperation)) }
    def gift_card_operation; end
    
    # A human-readable message providing more details about the error. For card errors, these messages can be shown to your users.
    sig { returns(T.nilable(String)) }
    def message; end
    
    # For card errors resulting from a card issuer decline, a 2 digit code which indicates the advice given to merchant by the card network on how to proceed with an error.
    sig { returns(T.nilable(String)) }
    def network_advice_code; end
    
    # For payments declined by the network, an alphanumeric code which indicates the reason the payment failed.
    sig { returns(T.nilable(String)) }
    def network_decline_code; end
    
    # If the error is parameter-specific, the parameter related to the error. For example, you can use this to display a message near the correct form field.
    sig { returns(T.nilable(String)) }
    def param; end
    
    # The PaymentIntent object for errors returned on a request involving a PaymentIntent.
    sig { returns(T.nilable(::Stripe::PaymentIntent)) }
    def payment_intent; end
    
    # The PaymentMethod object for errors returned on a request involving a PaymentMethod.
    sig { returns(T.nilable(::Stripe::PaymentMethod)) }
    def payment_method; end
    
    # If the error is specific to the type of payment method, the payment method type that had a problem. This field is only populated for invoice-related errors.
    sig { returns(T.nilable(String)) }
    def payment_method_type; end
    
    # A URL to the request log entry in your dashboard.
    sig { returns(T.nilable(String)) }
    def request_log_url; end
    
    # The SetupIntent object for errors returned on a request involving a SetupIntent.
    sig { returns(T.nilable(::Stripe::SetupIntent)) }
    def setup_intent; end
    
    # The PaymentSource object for errors returned on a request involving a PaymentSource.
    sig {
      returns(T.nilable(T.any(::Stripe::Account, ::Stripe::BankAccount, ::Stripe::Card, ::Stripe::Source)))
     }
    def source; end
    
    # The type of error returned. One of `api_error`, `card_error`, `idempotency_error`, or `invalid_request_error`
    sig { returns(String) }
    def type; end
    
    # The user message associated with the error.
    sig { returns(T.nilable(String)) }
    def user_message; end
    
    # errorFields: The end of the section generated from our OpenAPI spec
  end

  class OAuthErrorObject < StripeObject
    sig { returns(T.nilable(String)) }
    def error; end

    sig { returns(T.nilable(String)) }
    def error_description; end
  end

end
