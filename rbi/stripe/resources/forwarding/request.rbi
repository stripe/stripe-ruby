# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
        # The time it took in milliseconds for the destination endpoint to respond.
        sig { returns(Integer) }
        attr_reader :destination_duration
        # The IP address of the destination.
        sig { returns(String) }
        attr_reader :destination_ip_address
      end
      class RequestDetails < Stripe::StripeObject
        class Header < Stripe::StripeObject
          # The header name.
          sig { returns(String) }
          attr_reader :name
          # The header value.
          sig { returns(String) }
          attr_reader :value
        end
        # The body payload to send to the destination endpoint.
        sig { returns(String) }
        attr_reader :body
        # The headers to include in the forwarded request. Can be omitted if no additional headers (excluding Stripe-generated ones such as the Content-Type header) should be included.
        sig { returns(T::Array[Header]) }
        attr_reader :headers
        # The HTTP method used to call the destination endpoint.
        sig { returns(String) }
        attr_reader :http_method
      end
      class ResponseDetails < Stripe::StripeObject
        class Header < Stripe::StripeObject
          # The header name.
          sig { returns(String) }
          attr_reader :name
          # The header value.
          sig { returns(String) }
          attr_reader :value
        end
        # The response body from the destination endpoint to Stripe.
        sig { returns(String) }
        attr_reader :body
        # HTTP headers that the destination endpoint returned.
        sig { returns(T::Array[Header]) }
        attr_reader :headers
        # The HTTP status code that the destination endpoint returned.
        sig { returns(Integer) }
        attr_reader :status
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The PaymentMethod to insert into the forwarded request. Forwarding previously consumed PaymentMethods is allowed.
      sig { returns(String) }
      attr_reader :payment_method
      # The field kinds to be replaced in the forwarded request.
      sig { returns(T::Array[String]) }
      attr_reader :replacements
      # Context about the request from Stripe's servers to the destination endpoint.
      sig { returns(T.nilable(RequestContext)) }
      attr_reader :request_context
      # The request that was sent to the destination endpoint. We redact any sensitive fields.
      sig { returns(T.nilable(RequestDetails)) }
      attr_reader :request_details
      # The response that the destination endpoint returned to us. We redact any sensitive fields.
      sig { returns(T.nilable(ResponseDetails)) }
      attr_reader :response_details
      # The destination URL for the forwarded request. Must be supported by the config.
      sig { returns(T.nilable(String)) }
      attr_reader :url
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Return results where the `created` field is greater than this value.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gt
          # Return results where the `created` field is greater than or equal to this value.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gte
          # Return results where the `created` field is less than this value.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lt
          # Return results where the `created` field is less than or equal to this value.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lte
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Similar to other List endpoints, filters results based on created timestamp. You can pass gt, gte, lt, and lte timestamp values.
        sig { returns(T.nilable(::Stripe::Forwarding::Request::ListParams::Created)) }
        attr_accessor :created
        # A pagination cursor to fetch the previous page of the list. The value must be a ForwardingRequest ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A pagination cursor to fetch the next page of the list. The value must be a ForwardingRequest ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        sig {
          params(created: T.nilable(::Stripe::Forwarding::Request::ListParams::Created), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
         }
        def initialize(
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class Request < Stripe::RequestParams
          class Header < Stripe::RequestParams
            # The header name.
            sig { returns(String) }
            attr_accessor :name
            # The header value.
            sig { returns(String) }
            attr_accessor :value
            sig { params(name: String, value: String).void }
            def initialize(name: nil, value: nil); end
          end
          # The body payload to send to the destination endpoint.
          sig { returns(T.nilable(String)) }
          attr_accessor :body
          # The headers to include in the forwarded request. Can be omitted if no additional headers (excluding Stripe-generated ones such as the Content-Type header) should be included.
          sig {
            returns(T.nilable(T::Array[::Stripe::Forwarding::Request::CreateParams::Request::Header]))
           }
          attr_accessor :headers
          sig {
            params(body: T.nilable(String), headers: T.nilable(T::Array[::Stripe::Forwarding::Request::CreateParams::Request::Header])).void
           }
          def initialize(body: nil, headers: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The PaymentMethod to insert into the forwarded request. Forwarding previously consumed PaymentMethods is allowed.
        sig { returns(String) }
        attr_accessor :payment_method
        # The field kinds to be replaced in the forwarded request.
        sig { returns(T::Array[String]) }
        attr_accessor :replacements
        # The request body and headers to be sent to the destination endpoint.
        sig { returns(::Stripe::Forwarding::Request::CreateParams::Request) }
        attr_accessor :request
        # The destination URL for the forwarded request. Must be supported by the config.
        sig { returns(String) }
        attr_accessor :url
        sig {
          params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), payment_method: String, replacements: T::Array[String], request: ::Stripe::Forwarding::Request::CreateParams::Request, url: String).void
         }
        def initialize(
          expand: nil,
          metadata: nil,
          payment_method: nil,
          replacements: nil,
          request: nil,
          url: nil
        ); end
      end
      # Creates a ForwardingRequest object.
      sig {
        params(params: T.any(::Stripe::Forwarding::Request::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Forwarding::Request)
       }
      def self.create(params = {}, opts = {}); end

      # Lists all ForwardingRequest objects.
      sig {
        params(params: T.any(::Stripe::Forwarding::Request::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end