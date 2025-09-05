# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class FormService < StripeService
      class ListParams < Stripe::RequestParams
        class Payee < Stripe::RequestParams
          # The ID of the Stripe account whose forms will be retrieved.
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          # The external reference to the payee whose forms will be retrieved.
          sig { returns(T.nilable(String)) }
          def external_reference; end
          sig { params(_external_reference: T.nilable(String)).returns(T.nilable(String)) }
          def external_reference=(_external_reference); end
          # Specifies the payee type. Either `account` or `external_reference`.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          sig {
            params(account: T.nilable(String), external_reference: T.nilable(String), type: T.nilable(String)).void
           }
          def initialize(account: nil, external_reference: nil, type: nil); end
        end
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
        # The payee whose volume is represented on the tax form.
        sig { returns(::Stripe::Tax::FormService::ListParams::Payee) }
        def payee; end
        sig {
          params(_payee: ::Stripe::Tax::FormService::ListParams::Payee).returns(::Stripe::Tax::FormService::ListParams::Payee)
         }
        def payee=(_payee); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # An optional filter on the list, based on the object `type` field. Without the filter, the list includes all current and future tax form types. If your integration expects only one type of tax form in the response, make sure to provide a type value in the request.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), payee: ::Stripe::Tax::FormService::ListParams::Payee, starting_after: T.nilable(String), type: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          payee: nil,
          starting_after: nil,
          type: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class PdfParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Returns a list of tax forms which were previously created. The tax forms are returned in sorted order, with the oldest tax forms appearing first.
      sig {
        params(params: T.any(::Stripe::Tax::FormService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Download the PDF for a tax form.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::FormService::PdfParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, read_body_chunk_block: T.untyped).returns(T.untyped)
       }
      def pdf(id, params = {}, opts = {}, &read_body_chunk_block); end

      # Retrieves the details of a tax form that has previously been created. Supply the unique tax form ID that was returned from your previous request, and Stripe will return the corresponding tax form information.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::FormService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Form)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end