# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A (partner) margin represents a specific discount distributed in partner reseller programs to business partners who
  # resell products and services and earn a discount (margin) for doing so.
  class Margin < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "margin"
    def self.object_name
      "margin"
    end

    class ListParams < Stripe::RequestParams
      # Only return margins that are active or inactive. For example, pass `true` to only list active margins.
      attr_accessor :active
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(active: nil, ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @active = active
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      # Whether the margin can be applied to invoices, invoice items, or invoice line items or not. Defaults to `true`.
      attr_accessor :active
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Name of the margin, which is displayed to customers, such as on invoices.
      attr_accessor :name
      # Percent that will be taken off the subtotal before tax (after all other discounts and promotions) of any invoice to which the margin is applied.
      attr_accessor :percent_off

      def initialize(active: nil, expand: nil, metadata: nil, name: nil, percent_off: nil)
        @active = active
        @expand = expand
        @metadata = metadata
        @name = name
        @percent_off = percent_off
      end
    end

    class UpdateParams < Stripe::RequestParams
      # Whether the margin can be applied to invoices, invoice items, or invoice line items or not.
      attr_accessor :active
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Name of the margin, which is displayed to customers, such as on invoices.
      attr_accessor :name

      def initialize(active: nil, expand: nil, metadata: nil, name: nil)
        @active = active
        @expand = expand
        @metadata = metadata
        @name = name
      end
    end
    # Whether the margin can be applied to invoices, invoice items, or invoice line items. Defaults to `true`.
    attr_reader :active
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # Name of the margin that's displayed on, for example, invoices.
    attr_reader :name
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Percent that will be taken off the subtotal before tax (after all other discounts and promotions) of any invoice to which the margin is applied.
    attr_reader :percent_off
    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    attr_reader :updated

    # Create a margin object to be used with invoices, invoice items, and invoice line items for a customer to represent a partner discount. A margin has a percent_off which is the percent that will be taken off the subtotal after all items and other discounts and promotions) of any invoices for a customer. Calculation of prorations do not include any partner margins applied on the original invoice item.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/billing/margins", params: params, opts: opts)
    end

    # Retrieve a list of your margins.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/billing/margins", params: params, opts: opts)
    end

    # Update the specified margin object. Certain fields of the margin object are not editable.
    def self.update(margin, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/billing/margins/%<margin>s", { margin: CGI.escape(margin) }),
        params: params,
        opts: opts
      )
    end

    def self.inner_class_types
      @inner_class_types = {}
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
