# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # This object represents files hosted on Stripe's servers. You can upload
  # files with the [create file](https://stripe.com/docs/api#create_file) request
  # (for example, when uploading dispute evidence). Stripe also
  # creates files independently (for example, the results of a [Sigma scheduled
  # query](https://docs.stripe.com/api#scheduled_queries)).
  #
  # Related guide: [File upload guide](https://stripe.com/docs/file-upload)
  class File < APIResource
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # The file expires and isn't available at this time in epoch seconds.
    sig { returns(T.nilable(Integer)) }
    def expires_at; end
    # The suitable name for saving the file to a filesystem.
    sig { returns(T.nilable(String)) }
    def filename; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # A list of [file links](https://stripe.com/docs/api#file_links) that point at this file.
    sig { returns(T.nilable(Stripe::ListObject)) }
    def links; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # The [purpose](https://stripe.com/docs/file-upload#uploading-a-file) of the uploaded file.
    sig { returns(String) }
    def purpose; end
    # The size of the file object in bytes.
    sig { returns(Integer) }
    def size; end
    # A suitable title for the document.
    sig { returns(T.nilable(String)) }
    def title; end
    # The returned file type (for example, `csv`, `pdf`, `jpg`, or `png`).
    sig { returns(T.nilable(String)) }
    def type; end
    # Use your live secret API key to download the file from this URL.
    sig { returns(T.nilable(String)) }
    def url; end
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def gt; end
        sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gt=(_gt); end
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def gte; end
        sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gte=(_gte); end
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def lt; end
        sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lt=(_lt); end
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def lte; end
        sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lte=(_lte); end
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return files that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::File::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::File::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::File::ListParams::Created, Integer)))
       }
      def created=(_created); end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # Filter queries by the file purpose. If you don't provide a purpose, the queries return unfiltered files.
      sig { returns(T.nilable(String)) }
      def purpose; end
      sig { params(_purpose: T.nilable(String)).returns(T.nilable(String)) }
      def purpose=(_purpose); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(created: T.nilable(T.any(::Stripe::File::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), purpose: T.nilable(String), starting_after: T.nilable(String)).void
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
        # Set this to `true` to create a file link for the newly created file. Creating a link is only possible when the file's `purpose` is one of the following: `business_icon`, `business_logo`, `customer_signature`, `dispute_evidence`, `issuing_regulatory_reporting`, `pci_document`, `tax_document_user_upload`, `terminal_android_apk`, or `terminal_reader_splashscreen`.
        sig { returns(T::Boolean) }
        def create; end
        sig { params(_create: T::Boolean).returns(T::Boolean) }
        def create=(_create); end
        # The link isn't available after this future timestamp.
        sig { returns(T.nilable(Integer)) }
        def expires_at; end
        sig { params(_expires_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def expires_at=(_expires_at); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def metadata=(_metadata); end
        sig {
          params(create: T::Boolean, expires_at: T.nilable(Integer), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
         }
        def initialize(create: nil, expires_at: nil, metadata: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A file to upload. Make sure that the specifications follow RFC 2388, which defines file transfers for the `multipart/form-data` protocol.
      sig { returns(T.untyped) }
      def file; end
      sig { params(_file: T.untyped).returns(T.untyped) }
      def file=(_file); end
      # Optional parameters that automatically create a [file link](https://stripe.com/docs/api#file_links) for the newly created file.
      sig { returns(T.nilable(::Stripe::File::CreateParams::FileLinkData)) }
      def file_link_data; end
      sig {
        params(_file_link_data: T.nilable(::Stripe::File::CreateParams::FileLinkData)).returns(T.nilable(::Stripe::File::CreateParams::FileLinkData))
       }
      def file_link_data=(_file_link_data); end
      # The [purpose](https://stripe.com/docs/file-upload#uploading-a-file) of the uploaded file.
      sig { returns(String) }
      def purpose; end
      sig { params(_purpose: String).returns(String) }
      def purpose=(_purpose); end
      sig {
        params(expand: T.nilable(T::Array[String]), file: T.untyped, file_link_data: T.nilable(::Stripe::File::CreateParams::FileLinkData), purpose: String).void
       }
      def initialize(expand: nil, file: nil, file_link_data: nil, purpose: nil); end
    end
    # To upload a file to Stripe, you need to send a request of type multipart/form-data. Include the file you want to upload in the request, and the parameters for creating a file.
    #
    # All of Stripe's officially supported Client libraries support sending multipart/form-data.
    sig {
      params(params: T.any(::Stripe::File::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::File)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of the files that your account has access to. Stripe sorts and returns the files by their creation dates, placing the most recently created files at the top.
    sig {
      params(params: T.any(::Stripe::File::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end