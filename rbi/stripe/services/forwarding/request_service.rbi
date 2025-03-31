# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Forwarding
    class RequestService < StripeService
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
        sig { returns(T.nilable(::Stripe::Forwarding::RequestService::ListParams::Created)) }
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
          params(created: T.nilable(::Stripe::Forwarding::RequestService::ListParams::Created), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
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
            returns(T.nilable(T::Array[::Stripe::Forwarding::RequestService::CreateParams::Request::Header]))
           }
          attr_accessor :headers
          sig {
            params(body: T.nilable(String), headers: T.nilable(T::Array[::Stripe::Forwarding::RequestService::CreateParams::Request::Header])).void
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
        sig { returns(::Stripe::Forwarding::RequestService::CreateParams::Request) }
        attr_accessor :request
        # The destination URL for the forwarded request. Must be supported by the config.
        sig { returns(String) }
        attr_accessor :url
        sig {
          params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), payment_method: String, replacements: T::Array[String], request: ::Stripe::Forwarding::RequestService::CreateParams::Request, url: String).void
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
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Creates a ForwardingRequest object.
      sig {
        params(params: T.any(::Stripe::Forwarding::RequestService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Forwarding::Request)
       }
      def create(params = {}, opts = {}); end

      # Lists all ForwardingRequest objects.
      sig {
        params(params: T.any(::Stripe::Forwarding::RequestService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a ForwardingRequest object.
      sig {
        params(id: String, params: T.any(::Stripe::Forwarding::RequestService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Forwarding::Request)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end