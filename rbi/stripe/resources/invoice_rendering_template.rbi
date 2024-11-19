# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Invoice Rendering Templates are used to configure how invoices are rendered on surfaces like the PDF. Invoice Rendering Templates
  # can be created from within the Dashboard, and they can be used over the API when creating invoices.
  class InvoiceRenderingTemplate < APIResource
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
    sig { returns(T.nilable(String)) }
    # A brief description of the template, hidden from customers
    attr_reader :nickname
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(String) }
    # The status of the template, one of `active` or `archived`.
    attr_reader :status
    sig { returns(Integer) }
    # Version of this template; version increases by one when an update on the template changes any field that controls invoice rendering
    attr_reader :version
  end
end