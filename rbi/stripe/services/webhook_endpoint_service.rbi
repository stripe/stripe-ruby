# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class WebhookEndpointService < StripeService
    class DeleteParams < Stripe::RequestParams

    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      # An optional description of what the webhook is used for.
      sig { returns(T.nilable(T.nilable(String))) }
      attr_accessor :description
      # Disable the webhook endpoint if set to true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :disabled
      # The list of events to enable for this endpoint. You may specify `['*']` to enable all events, except those that require explicit selection.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :enabled_events
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.nilable(T.any(String, T::Hash[String, String])))) }
      attr_accessor :metadata
      # The URL of the webhook endpoint.
      sig { returns(T.nilable(String)) }
      attr_accessor :url
      sig {
        params(description: T.nilable(T.nilable(String)), disabled: T.nilable(T::Boolean), enabled_events: T.nilable(T::Array[String]), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.nilable(T.any(String, T::Hash[String, String]))), url: T.nilable(String)).void
       }
      def initialize(
        description: nil,
        disabled: nil,
        enabled_events: nil,
        expand: nil,
        metadata: nil,
        url: nil
      ); end
    end
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    class CreateParams < Stripe::RequestParams
      # Events sent to this endpoint will be generated with this Stripe Version instead of your account's default Stripe Version.
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version
      # Whether this endpoint should receive events from connected accounts (`true`), or from your account (`false`). Defaults to `false`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :connect
      # An optional description of what the webhook is used for.
      sig { returns(T.nilable(T.nilable(String))) }
      attr_accessor :description
      # The list of events to enable for this endpoint. You may specify `['*']` to enable all events, except those that require explicit selection.
      sig { returns(T::Array[String]) }
      attr_accessor :enabled_events
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.nilable(T.any(String, T::Hash[String, String])))) }
      attr_accessor :metadata
      # The URL of the webhook endpoint.
      sig { returns(String) }
      attr_accessor :url
      sig {
        params(api_version: T.nilable(String), connect: T.nilable(T::Boolean), description: T.nilable(T.nilable(String)), enabled_events: T::Array[String], expand: T.nilable(T::Array[String]), metadata: T.nilable(T.nilable(T.any(String, T::Hash[String, String]))), url: String).void
       }
      def initialize(
        api_version: nil,
        connect: nil,
        description: nil,
        enabled_events: nil,
        expand: nil,
        metadata: nil,
        url: nil
      ); end
    end
    # A webhook endpoint must have a url and a list of enabled_events. You may optionally specify the Boolean connect parameter. If set to true, then a Connect webhook endpoint that notifies the specified url about events from all connected accounts is created; otherwise an account webhook endpoint that notifies the specified url only about events from your account is created. You can also create webhook endpoints in the [webhooks settings](https://dashboard.stripe.com/account/webhooks) section of the Dashboard.
    sig {
      params(params: T.any(::Stripe::WebhookEndpointService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::WebhookEndpoint)
     }
    def create(params = {}, opts = {}); end

    # You can also delete webhook endpoints via the [webhook endpoint management](https://dashboard.stripe.com/account/webhooks) page of the Stripe dashboard.
    sig {
      params(webhook_endpoint: String, params: T.any(::Stripe::WebhookEndpointService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::WebhookEndpoint)
     }
    def delete(webhook_endpoint, params = {}, opts = {}); end

    # Returns a list of your webhook endpoints.
    sig {
      params(params: T.any(::Stripe::WebhookEndpointService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the webhook endpoint with the given ID.
    sig {
      params(webhook_endpoint: String, params: T.any(::Stripe::WebhookEndpointService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::WebhookEndpoint)
     }
    def retrieve(webhook_endpoint, params = {}, opts = {}); end

    # Updates the webhook endpoint. You may edit the url, the list of enabled_events, and the status of your endpoint.
    sig {
      params(webhook_endpoint: String, params: T.any(::Stripe::WebhookEndpointService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::WebhookEndpoint)
     }
    def update(webhook_endpoint, params = {}, opts = {}); end
  end
end