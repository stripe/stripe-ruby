# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountCapabilityService < StripeService
    class ListParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # To request a new capability for an account, pass true. There can be a delay before the requested capability becomes active. If the capability has any activation requirements, the response includes them in the `requirements` arrays.
      #
      # If a capability isn't permanent, you can remove it from the account by passing false. Some capabilities are permanent after they've been requested. Attempting to remove a permanent capability returns an error.
      attr_accessor :requested

      def initialize(expand: nil, requested: nil)
        @expand = expand
        @requested = requested
      end
    end

    # Returns a list of capabilities associated with the account. The capabilities are returned sorted by creation date, with the most recent capability appearing first.
    def list(account, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<account>s/capabilities", { account: CGI.escape(account) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves information about the specified Account Capability.
    def retrieve(account, capability, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<account>s/capabilities/%<capability>s", { account: CGI.escape(account), capability: CGI.escape(capability) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates an existing Account Capability. Request or remove a capability by updating its requested parameter.
    def update(account, capability, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/accounts/%<account>s/capabilities/%<capability>s", { account: CGI.escape(account), capability: CGI.escape(capability) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
