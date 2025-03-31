# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This object represents files hosted on Stripe's servers. You can upload
  # files with the [create file](https://stripe.com/docs/api#create_file) request
  # (for example, when uploading dispute evidence). Stripe also
  # creates files independently (for example, the results of a [Sigma scheduled
  # query](https://stripe.com/docs/api#scheduled_queries)).
  #
  # Related guide: [File upload guide](https://stripe.com/docs/file-upload)
  class File < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List

    OBJECT_NAME = "file"
    def self.object_name
      "file"
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
      # Only return files that were created during the given date interval.
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Filter queries by the file purpose. If you don't provide a purpose, the queries return unfiltered files.
      attr_accessor :purpose
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        purpose: nil,
        starting_after: nil
      )
        @created = created
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @purpose = purpose
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class FileLinkData < Stripe::RequestParams
        # Set this to `true` to create a file link for the newly created file. Creating a link is only possible when the file's `purpose` is one of the following: `business_icon`, `business_logo`, `customer_signature`, `dispute_evidence`, `issuing_regulatory_reporting`, `pci_document`, `tax_document_user_upload`, or `terminal_reader_splashscreen`.
        attr_accessor :create
        # The link isn't available after this future timestamp.
        attr_accessor :expires_at
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(create: nil, expires_at: nil, metadata: nil)
          @create = create
          @expires_at = expires_at
          @metadata = metadata
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A file to upload. Make sure that the specifications follow RFC 2388, which defines file transfers for the `multipart/form-data` protocol.
      attr_accessor :file
      # Optional parameters that automatically create a [file link](https://stripe.com/docs/api#file_links) for the newly created file.
      attr_accessor :file_link_data
      # The [purpose](https://stripe.com/docs/file-upload#uploading-a-file) of the uploaded file.
      attr_accessor :purpose

      def initialize(expand: nil, file: nil, file_link_data: nil, purpose: nil)
        @expand = expand
        @file = file
        @file_link_data = file_link_data
        @purpose = purpose
      end
    end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # The file expires and isn't available at this time in epoch seconds.
    attr_reader :expires_at
    # The suitable name for saving the file to a filesystem.
    attr_reader :filename
    # Unique identifier for the object.
    attr_reader :id
    # A list of [file links](https://stripe.com/docs/api#file_links) that point at this file.
    attr_reader :links
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The [purpose](https://stripe.com/docs/file-upload#uploading-a-file) of the uploaded file.
    attr_reader :purpose
    # The size of the file object in bytes.
    attr_reader :size
    # A suitable title for the document.
    attr_reader :title
    # The returned file type (for example, `csv`, `pdf`, `jpg`, or `png`).
    attr_reader :type
    # Use your live secret API key to download the file from this URL.
    attr_reader :url

    # To upload a file to Stripe, you need to send a request of type multipart/form-data. Include the file you want to upload in the request, and the parameters for creating a file.
    #
    # All of Stripe's officially supported Client libraries support sending multipart/form-data.
    def self.create(params = {}, opts = {})
      if params[:file] && !params[:file].is_a?(String) && !params[:file].respond_to?(:read)
        raise ArgumentError, "file must respond to `#read`"
      end

      opts = { content_type: MultipartEncoder::MULTIPART_FORM_DATA }.merge(Util.normalize_opts(opts))

      request_stripe_object(
        method: :post,
        path: "/v1/files",
        params: params,
        opts: opts,
        base_address: :files
      )
    end

    # Returns a list of the files that your account has access to. Stripe sorts and returns the files by their creation dates, placing the most recently created files at the top.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/files", params: params, opts: opts)
    end

    # This resource can have two different object names. In latter API
    # versions, only `file` is used, but since stripe-ruby may be used with
    # any API version, we need to support deserializing the older
    # `file_upload` object into the same class.
    OBJECT_NAME_ALT = "file_upload"
    def self.object_name_alt
      "file_upload"
    end

    def self.resource_url
      "/v1/files"
    end
  end
end
