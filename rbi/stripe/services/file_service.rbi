# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class FileService < StripeService
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
      # Only return files that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::FileService::ListParams::Created, Integer))) }
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # Filter queries by the file purpose. If you don't provide a purpose, the queries return unfiltered files.
      sig { returns(T.nilable(String)) }
      attr_accessor :purpose
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(created: T.nilable(T.any(::Stripe::FileService::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), purpose: T.nilable(String), starting_after: T.nilable(String)).void
       }
      def initialize(
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        purpose: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class FileLinkData < Stripe::RequestParams
        # Set this to `true` to create a file link for the newly created file. Creating a link is only possible when the file's `purpose` is one of the following: `business_icon`, `business_logo`, `customer_signature`, `dispute_evidence`, `issuing_regulatory_reporting`, `pci_document`, `tax_document_user_upload`, or `terminal_reader_splashscreen`.
        sig { returns(T::Boolean) }
        attr_accessor :create
        # The link isn't available after this future timestamp.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expires_at
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.nilable(T.any(String, T::Hash[String, String])))) }
        attr_accessor :metadata
        sig {
          params(create: T::Boolean, expires_at: T.nilable(Integer), metadata: T.nilable(T.nilable(T.any(String, T::Hash[String, String])))).void
         }
        def initialize(create: nil, expires_at: nil, metadata: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A file to upload. Make sure that the specifications follow RFC 2388, which defines file transfers for the `multipart/form-data` protocol.
      sig { returns(T.untyped) }
      attr_accessor :file
      # Optional parameters that automatically create a [file link](https://stripe.com/docs/api#file_links) for the newly created file.
      sig { returns(T.nilable(::Stripe::FileService::CreateParams::FileLinkData)) }
      attr_accessor :file_link_data
      # The [purpose](https://stripe.com/docs/file-upload#uploading-a-file) of the uploaded file.
      sig { returns(String) }
      attr_accessor :purpose
      sig {
        params(expand: T.nilable(T::Array[String]), file: T.untyped, file_link_data: T.nilable(::Stripe::FileService::CreateParams::FileLinkData), purpose: String).void
       }
      def initialize(expand: nil, file: nil, file_link_data: nil, purpose: nil); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # To upload a file to Stripe, you need to send a request of type multipart/form-data. Include the file you want to upload in the request, and the parameters for creating a file.
    #
    # All of Stripe's officially supported Client libraries support sending multipart/form-data.
    sig {
      params(params: T.any(::Stripe::FileService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::File)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of the files that your account has access to. Stripe sorts and returns the files by their creation dates, placing the most recently created files at the top.
    sig {
      params(params: T.any(::Stripe::FileService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the details of an existing file object. After you supply a unique file ID, Stripe returns the corresponding file object. Learn how to [access file contents](https://stripe.com/docs/file-upload#download-file-contents).
    sig {
      params(file: String, params: T.any(::Stripe::FileService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::File)
     }
    def retrieve(file, params = {}, opts = {}); end
  end
end