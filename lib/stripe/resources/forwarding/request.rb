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
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "forwarding.request"
      def self.object_name
        "forwarding.request"
      end

      class RequestContext < Stripe::StripeObject
        # The time it took in milliseconds for the destination endpoint to respond.
        attr_reader :destination_duration
        # The IP address of the destination.
        attr_reader :destination_ip_address
      end

      class RequestDetails < Stripe::StripeObject
        class Header < Stripe::StripeObject
          # The header name.
          attr_reader :name
          # The header value.
          attr_reader :value
        end
        # The body payload to send to the destination endpoint.
        attr_reader :body
        # The headers to include in the forwarded request. Can be omitted if no additional headers (excluding Stripe-generated ones such as the Content-Type header) should be included.
        attr_reader :headers
        # The HTTP method used to call the destination endpoint.
        attr_reader :http_method
      end

      class ResponseDetails < Stripe::StripeObject
        class Header < Stripe::StripeObject
          # The header name.
          attr_reader :name
          # The header value.
          attr_reader :value
        end
        # The response body from the destination endpoint to Stripe.
        attr_reader :body
        # HTTP headers that the destination endpoint returned.
        attr_reader :headers
        # The HTTP status code that the destination endpoint returned.
        attr_reader :status
      end

      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Return results where the `created` field is greater than this value.
          attr_accessor :gt
          # Return results where the `created` field is greater than or equal to this value.
          attr_accessor :gte
          # Return results where the `created` field is less than this value.
          attr_accessor :lt
          # Return results where the `created` field is less than or equal to this value.
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # Similar to other List endpoints, filters results based on created timestamp. You can pass gt, gte, lt, and lte timestamp values.
        attr_accessor :created
        # A pagination cursor to fetch the previous page of the list. The value must be a ForwardingRequest ID.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A pagination cursor to fetch the next page of the list. The value must be a ForwardingRequest ID.
        attr_accessor :starting_after

        def initialize(
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil
        )
          @created = created
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end

      class CreateParams < Stripe::RequestParams
        class Request < Stripe::RequestParams
          class Header < Stripe::RequestParams
            # The header name.
            attr_accessor :name
            # The header value.
            attr_accessor :value

            def initialize(name: nil, value: nil)
              @name = name
              @value = value
            end
          end
          # The body payload to send to the destination endpoint.
          attr_accessor :body
          # The headers to include in the forwarded request. Can be omitted if no additional headers (excluding Stripe-generated ones such as the Content-Type header) should be included.
          attr_accessor :headers

          def initialize(body: nil, headers: nil)
            @body = body
            @headers = headers
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The PaymentMethod to insert into the forwarded request. Forwarding previously consumed PaymentMethods is allowed.
        attr_accessor :payment_method
        # The field kinds to be replaced in the forwarded request.
        attr_accessor :replacements
        # The request body and headers to be sent to the destination endpoint.
        attr_accessor :request
        # The destination URL for the forwarded request. Must be supported by the config.
        attr_accessor :url

        def initialize(
          expand: nil,
          metadata: nil,
          payment_method: nil,
          replacements: nil,
          request: nil,
          url: nil
        )
          @expand = expand
          @metadata = metadata
          @payment_method = payment_method
          @replacements = replacements
          @request = request
          @url = url
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The PaymentMethod to insert into the forwarded request. Forwarding previously consumed PaymentMethods is allowed.
      attr_reader :payment_method
      # The field kinds to be replaced in the forwarded request.
      attr_reader :replacements
      # Context about the request from Stripe's servers to the destination endpoint.
      attr_reader :request_context
      # The request that was sent to the destination endpoint. We redact any sensitive fields.
      attr_reader :request_details
      # The response that the destination endpoint returned to us. We redact any sensitive fields.
      attr_reader :response_details
      # The destination URL for the forwarded request. Must be supported by the config.
      attr_reader :url

      # Creates a ForwardingRequest object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/forwarding/requests",
          params: params,
          opts: opts
        )
      end

      # Lists all ForwardingRequest objects.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/forwarding/requests",
          params: params,
          opts: opts
        )
      end
    end
  end
end
