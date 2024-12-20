# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class FormService < StripeService
      class ListParams < Stripe::RequestParams
        class Payee < Stripe::RequestParams
          # The ID of the Stripe account whose forms will be retrieved.
          attr_accessor :account

          # The external reference to the payee whose forms will be retrieved.
          attr_accessor :external_reference

          # Specifies the payee type. Either `account` or `external_reference`.
          attr_accessor :type

          def initialize(account: nil, external_reference: nil, type: nil)
            @account = account
            @external_reference = external_reference
            @type = type
          end
        end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before

        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit

        # The payee whose volume is represented on the tax form.
        attr_accessor :payee

        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        # An optional filter on the list, based on the object `type` field. Without the filter, the list includes all current and future tax form types. If your integration expects only one type of tax form in the response, make sure to provide a type value in the request.
        attr_accessor :type

        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          payee: nil,
          starting_after: nil,
          type: nil
        )
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @payee = payee
          @starting_after = starting_after
          @type = type
        end
      end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class PdfParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      # Returns a list of tax forms which were previously created. The tax forms are returned in sorted order, with the oldest tax forms appearing first.
      def list(params = {}, opts = {})
        request(method: :get, path: "/v1/tax/forms", params: params, opts: opts, base_address: :api)
      end

      # Download the PDF for a tax form.
      def pdf(id, params = {}, opts = {}, &read_body_chunk_block)
        opts = { api_base: APIRequestor.active_requestor.config.uploads_base }.merge(opts)
        request_stream(
          method: :get,
          path: format("/v1/tax/forms/%<id>s/pdf", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :files,
          &read_body_chunk_block
        )
      end

      # Retrieves the details of a tax form that has previously been created. Supply the unique tax form ID that was returned from your previous request, and Stripe will return the corresponding tax form information.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/tax/forms/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
