# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class TopupService < StripeService
    class ListParams < Stripe::RequestParams
      class Amount < Stripe::RequestParams
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
      # A positive integer representing how much to transfer.
      sig { returns(T.nilable(T.any(::Stripe::TopupService::ListParams::Amount, Integer))) }
      attr_accessor :amount
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      sig { returns(T.nilable(T.any(::Stripe::TopupService::ListParams::Created, Integer))) }
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
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      # Only return top-ups that have the given status. One of `canceled`, `failed`, `pending` or `succeeded`.
      sig { returns(T.nilable(String)) }
      attr_accessor :status
      sig {
        params(amount: T.nilable(T.any(::Stripe::TopupService::ListParams::Amount, Integer)), created: T.nilable(T.any(::Stripe::TopupService::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String)).void
       }
      def initialize(
        amount: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        status: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      # A positive integer representing how much to transfer.
      sig { returns(Integer) }
      attr_accessor :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_accessor :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # The ID of a source to transfer funds from. For most users, this should be left unspecified which will use the bank account that was set up in the dashboard for the specified currency. In test mode, this can be a test bank token (see [Testing Top-ups](https://stripe.com/docs/connect/testing#testing-top-ups)).
      sig { returns(T.nilable(String)) }
      attr_accessor :source
      # Extra information about a top-up for the source's bank statement. Limited to 15 ASCII characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor
      # A string that identifies this top-up as part of a group.
      sig { returns(T.nilable(String)) }
      attr_accessor :transfer_group
      sig {
        params(amount: Integer, currency: String, description: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), source: T.nilable(String), statement_descriptor: T.nilable(String), transfer_group: T.nilable(String)).void
       }
      def initialize(
        amount: nil,
        currency: nil,
        description: nil,
        expand: nil,
        metadata: nil,
        source: nil,
        statement_descriptor: nil,
        transfer_group: nil
      ); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      sig {
        params(description: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
       }
      def initialize(description: nil, expand: nil, metadata: nil); end
    end
    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # Cancels a top-up. Only pending top-ups can be canceled.
    sig {
      params(topup: String, params: T.any(::Stripe::TopupService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Topup)
     }
    def cancel(topup, params = {}, opts = {}); end

    # Top up the balance of an account
    sig {
      params(params: T.any(::Stripe::TopupService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Topup)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of top-ups.
    sig {
      params(params: T.any(::Stripe::TopupService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the details of a top-up that has previously been created. Supply the unique top-up ID that was returned from your previous request, and Stripe will return the corresponding top-up information.
    sig {
      params(topup: String, params: T.any(::Stripe::TopupService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Topup)
     }
    def retrieve(topup, params = {}, opts = {}); end

    # Updates the metadata of a top-up. Other top-up details are not editable by design.
    sig {
      params(topup: String, params: T.any(::Stripe::TopupService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Topup)
     }
    def update(topup, params = {}, opts = {}); end
  end
end