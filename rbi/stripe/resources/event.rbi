# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Snapshot events allow you to track and react to activity in your Stripe integration. When
  # the state of another API resource changes, Stripe creates an `Event` object that contains
  # all the relevant information associated with that action, including the affected API
  # resource. For example, a successful payment triggers a `charge.succeeded` event, which
  # contains the `Charge` in the event's data property. Some actions trigger multiple events.
  # For example, if you create a new subscription for a customer, it triggers both a
  # `customer.subscription.created` event and a `charge.succeeded` event.
  #
  # Configure an event destination in your account to listen for events that represent actions
  # your integration needs to respond to. Additionally, you can retrieve an individual event or
  # a list of events from the API.
  #
  # [Connect](https://docs.stripe.com/connect) platforms can also receive event notifications
  # that occur in their connected accounts. These events include an account attribute that
  # identifies the relevant connected account.
  #
  # You can access events through the [Retrieve Event API](https://docs.stripe.com/api/events#retrieve_event)
  # for 30 days.
  class Event < APIResource
    class Data < Stripe::StripeObject
      # Object containing the API resource relevant to the event. For example, an `invoice.created` event will have a full [invoice object](https://stripe.com/docs/api#invoice_object) as the value of the object key.
      sig { returns(T::Hash[String, T.untyped]) }
      attr_reader :object
      # Object containing the names of the updated attributes and their values prior to the event (only included in events of type `*.updated`). If an array attribute has any updated elements, this object contains the entire array. In Stripe API versions 2017-04-06 or earlier, an updated array attribute in this object includes only the updated array elements.
      sig { returns(T::Hash[String, T.untyped]) }
      attr_reader :previous_attributes
    end
    class Request < Stripe::StripeObject
      # ID of the API request that caused the event. If null, the event was automatic (e.g., Stripe's automatic subscription handling). Request logs are available in the [dashboard](https://dashboard.stripe.com/logs), but currently not in the API.
      sig { returns(T.nilable(String)) }
      attr_reader :id
      # The idempotency key transmitted during the request, if any. *Note: This property is populated only for events on or after May 23, 2017*.
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key
    end
    # The connected account that originates the event.
    sig { returns(String) }
    attr_reader :account
    # The Stripe API version used to render `data` when the event was created. The contents of `data` never change, so this value remains static regardless of the API version currently in use. This property is populated only for events created on or after October 31, 2014.
    sig { returns(T.nilable(String)) }
    attr_reader :api_version
    # Authentication context needed to fetch the event or related object.
    sig { returns(String) }
    attr_reader :context
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Attribute for field data
    sig { returns(Data) }
    attr_reader :data
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Number of webhooks that haven't been successfully delivered (for example, to return a 20x response) to the URLs you specify.
    sig { returns(Integer) }
    attr_reader :pending_webhooks
    # Information on the API request that triggers the event.
    sig { returns(T.nilable(Request)) }
    attr_reader :request
    # Description of the event (for example, `invoice.created` or `charge.refunded`).
    sig { returns(String) }
    attr_reader :type
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lte
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return events that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::Event::ListParams::Created, Integer))) }
      attr_accessor :created
      # Filter events by whether all webhooks were successfully delivered. If false, events which are still pending or have failed all delivery attempts to a webhook endpoint will be returned.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :delivery_success
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
      # A string containing a specific event name, or group of events using * as a wildcard. The list will be filtered to include only events with a matching event property.
      sig { returns(T.nilable(String)) }
      attr_accessor :type
      # An array of up to 20 strings containing specific event names. The list will be filtered to include only events with a matching event property. You may pass either `type` or `types`, but not both.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :types
      sig {
        params(created: T.nilable(T.any(::Stripe::Event::ListParams::Created, Integer)), delivery_success: T.nilable(T::Boolean), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), type: T.nilable(String), types: T.nilable(T::Array[String])).void
       }
      def initialize(
        created: nil,
        delivery_success: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        type: nil,
        types: nil
      ); end
    end
    # List events, going back up to 30 days. Each event data is rendered according to Stripe API version at its creation time, specified in [event object](https://docs.stripe.com/api/events/object) api_version attribute (not according to your current Stripe API version or Stripe-Version header).
    sig {
      params(params: T.any(::Stripe::Event::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end