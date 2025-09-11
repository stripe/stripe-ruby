# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # To share the contents of a `File` object with non-Stripe users, you can
  # create a `FileLink`. `FileLink`s contain a URL that you can use to
  # retrieve the contents of the file without authentication.
  class FileLink < APIResource
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Returns if the link is already expired.
    sig { returns(T::Boolean) }
    def expired; end
    # Time that the link expires.
    sig { returns(T.nilable(Integer)) }
    def expires_at; end
    # The file object this link points to.
    sig { returns(T.any(String, Stripe::File)) }
    def file; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    def metadata; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # The publicly accessible URL to download the file.
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
      # Only return links that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::FileLink::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::FileLink::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::FileLink::ListParams::Created, Integer)))
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
      # Filter links by their expiration status. By default, Stripe returns all links.
      sig { returns(T.nilable(T::Boolean)) }
      def expired; end
      sig { params(_expired: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def expired=(_expired); end
      # Only return links for the given file.
      sig { returns(T.nilable(String)) }
      def file; end
      sig { params(_file: T.nilable(String)).returns(T.nilable(String)) }
      def file=(_file); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(created: T.nilable(T.any(::Stripe::FileLink::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), expired: T.nilable(T::Boolean), file: T.nilable(String), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        created: nil,
        ending_before: nil,
        expand: nil,
        expired: nil,
        file: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The link isn't usable after this future timestamp.
      sig { returns(T.nilable(Integer)) }
      def expires_at; end
      sig { params(_expires_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def expires_at=(_expires_at); end
      # The ID of the file. The file's `purpose` must be one of the following: `business_icon`, `business_logo`, `customer_signature`, `dispute_evidence`, `finance_report_run`, `financial_account_statement`, `identity_document_downloadable`, `issuing_regulatory_reporting`, `pci_document`, `selfie`, `sigma_scheduled_query`, `tax_document_user_upload`, `terminal_android_apk`, or `terminal_reader_splashscreen`.
      sig { returns(String) }
      def file; end
      sig { params(_file: String).returns(String) }
      def file=(_file); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      sig {
        params(expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer), file: String, metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
       }
      def initialize(expand: nil, expires_at: nil, file: nil, metadata: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A future timestamp after which the link will no longer be usable, or `now` to expire the link immediately.
      sig { returns(T.nilable(T.any(String, T.any(String, Integer)))) }
      def expires_at; end
      sig {
        params(_expires_at: T.nilable(T.any(String, T.any(String, Integer)))).returns(T.nilable(T.any(String, T.any(String, Integer))))
       }
      def expires_at=(_expires_at); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      sig {
        params(expand: T.nilable(T::Array[String]), expires_at: T.nilable(T.any(String, T.any(String, Integer))), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
       }
      def initialize(expand: nil, expires_at: nil, metadata: nil); end
    end
    # Creates a new file link object.
    sig {
      params(params: T.any(::Stripe::FileLink::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FileLink)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of file links.
    sig {
      params(params: T.any(::Stripe::FileLink::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates an existing file link object. Expired links can no longer be updated.
    sig {
      params(link: String, params: T.any(::Stripe::FileLink::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FileLink)
     }
    def self.update(link, params = {}, opts = {}); end
  end
end