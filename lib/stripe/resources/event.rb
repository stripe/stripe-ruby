# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Events are our way of letting you know when something interesting happens in
  # your account. When an interesting event occurs, we create a new `Event`
  # object. For example, when a charge succeeds, we create a `charge.succeeded`
  # event, and when an invoice payment attempt fails, we create an
  # `invoice.payment_failed` event. Certain API requests might create multiple
  # events. For example, if you create a new subscription for a
  # customer, you receive both a `customer.subscription.created` event and a
  # `charge.succeeded` event.
  #
  # Events occur when the state of another API resource changes. The event's data
  # field embeds the resource's state at the time of the change. For
  # example, a `charge.succeeded` event contains a charge, and an
  # `invoice.payment_failed` event contains an invoice.
  #
  # As with other API resources, you can use endpoints to retrieve an
  # [individual event](https://stripe.com/docs/api#retrieve_event) or a [list of events](https://stripe.com/docs/api#list_events)
  # from the API. We also have a separate
  # [webhooks](http://en.wikipedia.org/wiki/Webhook) system for sending the
  # `Event` objects directly to an endpoint on your server. You can manage
  # webhooks in your
  # [account settings](https://dashboard.stripe.com/account/webhooks). Learn how
  # to [listen for events](https://docs.stripe.com/webhooks)
  # so that your integration can automatically trigger reactions.
  #
  # When using [Connect](https://docs.stripe.com/connect), you can also receive event notifications
  # that occur in connected accounts. For these events, there's an
  # additional `account` attribute in the received `Event` object.
  #
  # We only guarantee access to events through the [Retrieve Event API](https://stripe.com/docs/api#retrieve_event)
  # for 30 days.
  class Event < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "event"
    def self.object_name
      "event"
    end

    class Data < Stripe::StripeObject
      # Object containing the API resource relevant to the event. For example, an `invoice.created` event will have a full [invoice object](https://stripe.com/docs/api#invoice_object) as the value of the object key.
      attr_reader :object
      # Object containing the names of the updated attributes and their values prior to the event (only included in events of type `*.updated`). If an array attribute has any updated elements, this object contains the entire array. In Stripe API versions 2017-04-06 or earlier, an updated array attribute in this object includes only the updated array elements.
      attr_reader :previous_attributes
    end

    class Reason < Stripe::StripeObject
      class AutomationAction < Stripe::StripeObject
        class StripeSendWebhookCustomEvent < Stripe::StripeObject
          # Set of key-value pairs attached to the action when creating an Automation.
          attr_reader :custom_data
        end
        # Attribute for field stripe_send_webhook_custom_event
        attr_reader :stripe_send_webhook_custom_event
        # The trigger name of the automation that triggered this action.
        #  Please visit [Revenue and retention automations](https://docs.stripe.com/billing/automations#choose-a-trigger) for all possible trigger names.
        attr_reader :trigger
        # The type of the `automation_action`.
        attr_reader :type
      end

      class Request < Stripe::StripeObject
        # ID of the API request that caused the event. If null, the event was automatic (e.g., Stripe's automatic subscription handling). Request logs are available in the [dashboard](https://dashboard.stripe.com/logs), but currently not in the API.
        attr_reader :id
        # The idempotency key transmitted during the request, if any. *Note: This property is populated only for events on or after May 23, 2017*.
        attr_reader :idempotency_key
      end
      # Attribute for field automation_action
      attr_reader :automation_action
      # Attribute for field request
      attr_reader :request
      # The type of the reason for the event.
      attr_reader :type
    end

    class Request < Stripe::StripeObject
      # ID of the API request that caused the event. If null, the event was automatic (e.g., Stripe's automatic subscription handling). Request logs are available in the [dashboard](https://dashboard.stripe.com/logs), but currently not in the API.
      attr_reader :id
      # The idempotency key transmitted during the request, if any. *Note: This property is populated only for events on or after May 23, 2017*.
      attr_reader :idempotency_key
    end
    # The connected account that originates the event.
    attr_reader :account

    # The Stripe API version used to render `data`. This property is populated only for events on or after October 31, 2014.
    attr_reader :api_version

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created

    # Attribute for field data
    attr_reader :data

    # Unique identifier for the object.
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode

    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    # Number of webhooks that haven't been successfully delivered (for example, to return a 20x response) to the URLs you specify.
    attr_reader :pending_webhooks

    # Information about the action that causes the event. Only present when the event is triggered by an API request or an [Automation](https://docs.stripe.com/billing/automations) action.
    attr_reader :reason

    # Information on the API request that triggers the event.
    attr_reader :request

    # Description of the event (for example, `invoice.created` or `charge.refunded`).
    attr_reader :type

    # List events, going back up to 30 days. Each event data is rendered according to Stripe API version at its creation time, specified in [event object](https://docs.stripe.com/api/events/object) api_version attribute (not according to your current Stripe API version or Stripe-Version header).
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/events", params: filters, opts: opts)
    end
  end
end
