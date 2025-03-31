# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # To share the contents of a `File` object with non-Stripe users, you can
  # create a `FileLink`. `FileLink`s contain a URL that you can use to
  # retrieve the contents of the file without authentication.
  class FileLink < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "file_link"
    def self.object_name
      "file_link"
    end

    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # Only return links that were created during the given date interval.
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Filter links by their expiration status. By default, Stripe returns all links.
      attr_accessor :expired
      # Only return links for the given file.
      attr_accessor :file
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        created: nil,
        ending_before: nil,
        expand: nil,
        expired: nil,
        file: nil,
        limit: nil,
        starting_after: nil
      )
        @created = created
        @ending_before = ending_before
        @expand = expand
        @expired = expired
        @file = file
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The link isn't usable after this future timestamp.
      attr_accessor :expires_at
      # The ID of the file. The file's `purpose` must be one of the following: `business_icon`, `business_logo`, `customer_signature`, `dispute_evidence`, `finance_report_run`, `financial_account_statement`, `identity_document_downloadable`, `issuing_regulatory_reporting`, `pci_document`, `selfie`, `sigma_scheduled_query`, `tax_document_user_upload`, or `terminal_reader_splashscreen`.
      attr_accessor :file
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(expand: nil, expires_at: nil, file: nil, metadata: nil)
        @expand = expand
        @expires_at = expires_at
        @file = file
        @metadata = metadata
      end
    end

    class UpdateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A future timestamp after which the link will no longer be usable, or `now` to expire the link immediately.
      attr_accessor :expires_at
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(expand: nil, expires_at: nil, metadata: nil)
        @expand = expand
        @expires_at = expires_at
        @metadata = metadata
      end
    end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Returns if the link is already expired.
    attr_reader :expired
    # Time that the link expires.
    attr_reader :expires_at
    # The file object this link points to.
    attr_reader :file
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The publicly accessible URL to download the file.
    attr_reader :url

    # Creates a new file link object.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/file_links", params: params, opts: opts)
    end

    # Returns a list of file links.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/file_links", params: params, opts: opts)
    end

    # Updates an existing file link object. Expired links can no longer be updated.
    def self.update(link, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/file_links/%<link>s", { link: CGI.escape(link) }),
        params: params,
        opts: opts
      )
    end
  end
end
