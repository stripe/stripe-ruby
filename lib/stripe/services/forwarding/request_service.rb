# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Forwarding
    class RequestService < StripeService
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

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      # Creates a ForwardingRequest object.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/forwarding/requests",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Lists all ForwardingRequest objects.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/forwarding/requests",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a ForwardingRequest object.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/forwarding/requests/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
