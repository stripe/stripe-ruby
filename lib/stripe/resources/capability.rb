# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This is an object representing a capability for a Stripe account.
  #
  # Related guide: [Account capabilities](https://stripe.com/docs/connect/account-capabilities)
  class Capability < APIResource
    include Stripe::APIOperations::Save

    OBJECT_NAME = "capability"
    def self.object_name
      "capability"
    end

    class FutureRequirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        attr_reader :alternative_fields_due, :original_fields_due
      end

      class Error < Stripe::StripeObject
        attr_reader :code, :reason, :requirement
      end
      attr_reader :alternatives, :current_deadline, :currently_due, :disabled_reason, :errors, :eventually_due, :past_due, :pending_verification
    end

    class Requirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        attr_reader :alternative_fields_due, :original_fields_due
      end

      class Error < Stripe::StripeObject
        attr_reader :code, :reason, :requirement
      end
      attr_reader :alternatives, :current_deadline, :currently_due, :disabled_reason, :errors, :eventually_due, :past_due, :pending_verification
    end
    # The account for which the capability enables functionality.
    attr_reader :account
    # Attribute for field future_requirements
    attr_reader :future_requirements
    # The identifier for the capability.
    attr_reader :id
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Whether the capability has been requested.
    attr_reader :requested
    # Time at which the capability was requested. Measured in seconds since the Unix epoch.
    attr_reader :requested_at
    # Attribute for field requirements
    attr_reader :requirements
    # The status of the capability.
    attr_reader :status

    def resource_url
      if !respond_to?(:account) || account.nil?
        raise NotImplementedError,
              "Capabilities cannot be accessed without an account ID."
      end
      "#{Account.resource_url}/#{CGI.escape(account)}/capabilities" \
        "/#{CGI.escape(id)}"
    end

    def self.retrieve(_id, _opts = {})
      raise NotImplementedError,
            "Capabilities cannot be retrieve without an account ID. " \
            "Retrieve a capability using Account.retrieve_capability(" \
            "'account_id', 'capability_id')`"
    end

    def self.update(_id, _params = nil, _opts = nil)
      raise NotImplementedError,
            "Capabilities cannot be updated without an account ID. Update a " \
            "capability using `Account.update_capability('account_id', " \
            "'capability_id', update_params)`"
    end
  end
end
