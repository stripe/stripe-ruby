# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class FileService < StripeService
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

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    # To upload a file to Stripe, you need to send a request of type multipart/form-data. Include the file you want to upload in the request, and the parameters for creating a file.
    #
    # All of Stripe's officially supported Client libraries support sending multipart/form-data.
    def create(params = {}, opts = {})
      if params[:file] && !params[:file].is_a?(String) && !params[:file].respond_to?(:read)
        raise ArgumentError, "file must respond to `#read`"
      end

      opts = { content_type: MultipartEncoder::MULTIPART_FORM_DATA }.merge(Util.normalize_opts(opts))

      request(method: :post, path: "/v1/files", params: params, opts: opts, base_address: :files)
    end

    # Returns a list of the files that your account has access to. Stripe sorts and returns the files by their creation dates, placing the most recently created files at the top.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/files", params: params, opts: opts, base_address: :api)
    end

    # Retrieves the details of an existing file object. After you supply a unique file ID, Stripe returns the corresponding file object. Learn how to [access file contents](https://docs.stripe.com/docs/file-upload#download-file-contents).
    def retrieve(file, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/files/%<file>s", { file: CGI.escape(file) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
