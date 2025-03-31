# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Entitlements
    # A feature represents a monetizable ability or functionality in your system.
    # Features can be assigned to products, and when those products are purchased, Stripe will create an entitlement to the feature for the purchasing customer.
    class Feature < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "entitlements.feature"
      def self.object_name
        "entitlements.feature"
      end

      class ListParams < Stripe::RequestParams
        # If set, filter results to only include features with the given archive status.
        attr_accessor :archived
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # If set, filter results to only include features with the given lookup_key.
        attr_accessor :lookup_key
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(
          archived: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          lookup_key: nil,
          starting_after: nil
        )
          @archived = archived
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @lookup_key = lookup_key
          @starting_after = starting_after
        end
      end

      class CreateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A unique key you provide as your own system identifier. This may be up to 80 characters.
        attr_accessor :lookup_key
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata
        # The feature's name, for your own purpose, not meant to be displayable to the customer.
        attr_accessor :name

        def initialize(expand: nil, lookup_key: nil, metadata: nil, name: nil)
          @expand = expand
          @lookup_key = lookup_key
          @metadata = metadata
          @name = name
        end
      end

      class UpdateParams < Stripe::RequestParams
        # Inactive features cannot be attached to new products and will not be returned from the features list endpoint.
        attr_accessor :active
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata
        # The feature's name, for your own purpose, not meant to be displayable to the customer.
        attr_accessor :name

        def initialize(active: nil, expand: nil, metadata: nil, name: nil)
          @active = active
          @expand = expand
          @metadata = metadata
          @name = name
        end
      end
      # Inactive features cannot be attached to new products and will not be returned from the features list endpoint.
      attr_reader :active
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # A unique key you provide as your own system identifier. This may be up to 80 characters.
      attr_reader :lookup_key
      # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # The feature's name, for your own purpose, not meant to be displayable to the customer.
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # Creates a feature
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/entitlements/features",
          params: params,
          opts: opts
        )
      end

      # Retrieve a list of features
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/entitlements/features",
          params: params,
          opts: opts
        )
      end

      # Update a feature's metadata or permanently deactivate it.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/entitlements/features/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
