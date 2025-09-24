# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ProfileService < StripeService
        class ListParams < Stripe::RequestParams
          # Filter billing profiles by a customer. Mutually exclusive
          # with `lookup_keys` and `default_payment_method`.
          attr_accessor :customer
          # Filter billing profiles by a default payment method. Mutually exclusive
          # with `customer` and `lookup_keys`.
          attr_accessor :default_payment_method
          # Optionally set the maximum number of results per page. Defaults to 10.
          attr_accessor :limit
          # Filter billing profiles by lookup keys. Mutually exclusive
          # with `customer` and `default_payment_method`.
          # You can specify up to 10 lookup_keys.
          attr_accessor :lookup_keys
          # Filter billing profiles by status. Can be combined
          # with all other filters. If not provided, all billing profiles will be returned.
          attr_accessor :status

          def initialize(
            customer: nil,
            default_payment_method: nil,
            limit: nil,
            lookup_keys: nil,
            status: nil
          )
            @customer = customer
            @default_payment_method = default_payment_method
            @limit = limit
            @lookup_keys = lookup_keys
            @status = status
          end
        end

        class CreateParams < Stripe::RequestParams
          # The ID of the customer object.
          attr_accessor :customer
          # The ID of the payment method object.
          attr_accessor :default_payment_method
          # A customer-facing name for the billing profile.
          # Maximum length of 250 characters.
          attr_accessor :display_name
          # An internal key you can use to search for a particular billing profile. It must be unique among billing profiles for a given customer.
          # Maximum length of 200 characters.
          attr_accessor :lookup_key
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata

          def initialize(
            customer: nil,
            default_payment_method: nil,
            display_name: nil,
            lookup_key: nil,
            metadata: nil
          )
            @customer = customer
            @default_payment_method = default_payment_method
            @display_name = display_name
            @lookup_key = lookup_key
            @metadata = metadata
          end
        end

        class RetrieveParams < Stripe::RequestParams; end

        class UpdateParams < Stripe::RequestParams
          # The ID of the payment method object.
          attr_accessor :default_payment_method
          # A customer-facing name for the billing profile.
          # Maximum length of 250 characters.
          # To remove the display_name from the object, set it to null in the request.
          attr_accessor :display_name
          # An internal key you can use to search for a particular billing profile. It must be unique among billing profiles for a given customer.
          # Maximum length of 200 characters.
          # To remove the lookup_key from the object, set it to null in the request.
          attr_accessor :lookup_key
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata

          def initialize(
            default_payment_method: nil,
            display_name: nil,
            lookup_key: nil,
            metadata: nil
          )
            @default_payment_method = default_payment_method
            @display_name = display_name
            @lookup_key = lookup_key
            @metadata = metadata
          end
        end

        # Create a BillingProfile object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/profiles",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List Billing Profiles.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/profiles",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a BillingProfile object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/profiles/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a BillingProfile object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/profiles/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
