# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Forwarding
    # Instructs Stripe to make a request on your behalf using the destination URL. The destination URL
    # is activated by Stripe at the time of onboarding. Stripe verifies requests with your credentials
    # provided during onboarding, and injects card details from the payment_method into the request.
    #
    # Stripe redacts all sensitive fields and headers, including authentication credentials and card numbers,
    # before storing the request and response data in the forwarding Request object, which are subject to a
    # 30-day retention period.
    #
    # You can provide a Stripe idempotency key to make sure that requests with the same key result in only one
    # outbound request. The Stripe idempotency key provided should be unique and different from any idempotency
    # keys provided on the underlying third-party request.
    #
    # Forwarding Requests are synchronous requests that return a response or time out according to
    # Stripe's limits.
    #
    # Related guide: [Forward card details to third-party API endpoints](https://docs.stripe.com/payments/forwarding).
    class Request < APIResource
      class RequestContext < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :destination_duration
        sig { returns(String) }
        attr_reader :destination_ip_address
      end
      class RequestDetails < Stripe::StripeObject
        class Header < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :name
          sig { returns(String) }
          attr_reader :value
        end
        sig { returns(String) }
        attr_reader :body
        sig { returns(T::Array[Header]) }
        attr_reader :headers
        sig { returns(String) }
        attr_reader :http_method
      end
      class ResponseDetails < Stripe::StripeObject
        class Header < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :name
          sig { returns(String) }
          attr_reader :value
        end
        sig { returns(String) }
        attr_reader :body
        sig { returns(T::Array[Header]) }
        attr_reader :headers
        sig { returns(Integer) }
        attr_reader :status
      end
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T.nilable(T::Hash[String, String])) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # The PaymentMethod to insert into the forwarded request. Forwarding previously consumed PaymentMethods is allowed.
      attr_reader :payment_method
      sig { returns(T::Array[String]) }
      # The field kinds to be replaced in the forwarded request.
      attr_reader :replacements
      sig { returns(T.nilable(RequestContext)) }
      # Context about the request from Stripe's servers to the destination endpoint.
      attr_reader :request_context
      sig { returns(T.nilable(RequestDetails)) }
      # The request that was sent to the destination endpoint. We redact any sensitive fields.
      attr_reader :request_details
      sig { returns(T.nilable(ResponseDetails)) }
      # The response that the destination endpoint returned to us. We redact any sensitive fields.
      attr_reader :response_details
      sig { returns(T.nilable(String)) }
      # The destination URL for the forwarded request. Must be supported by the config.
      attr_reader :url
    end
  end
end