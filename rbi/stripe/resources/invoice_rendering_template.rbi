# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Invoice Rendering Templates are used to configure how invoices are rendered on surfaces like the PDF. Invoice Rendering Templates
  # can be created from within the Dashboard, and they can be used over the API when creating invoices.
  class InvoiceRenderingTemplate < APIResource
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

    # A brief description of the template, hidden from customers
    sig { returns(T.nilable(String)) }
    attr_reader :nickname

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The status of the template, one of `active` or `archived`.
    sig { returns(String) }
    attr_reader :status

    # Version of this template; version increases by one when an update on the template changes any field that controls invoice rendering
    sig { returns(Integer) }
    attr_reader :version
  end
end