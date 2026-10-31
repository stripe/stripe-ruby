# frozen_string_literal: true
# typed: true

module Stripe
  class StripeService
    # Initializes a new StripeService
    def initialize(requestor)
      @requestor = requestor
    end

    def request(method:, path:, base_address:, params: {}, opts: {})
      params = params.to_h if params.is_a?(RequestParams)
      @requestor.execute_request(
        method,
        path,
        base_address,
        params: params,
        opts: RequestOptions.extract_opts_from_hash(opts),
        usage: ["stripe_client"]
      )
    end

    # V2 search uses POST but sends limit in the URL, not the JSON body. Only add
    # it to the initial URL; page URLs already contain their pagination parameters.
    # Delegate to the ordinary request path exactly once.
    def request_v2_search(method:, path:, base_address:, params: {}, opts: {})
      params = params.to_h if params.is_a?(RequestParams)
      params = params.dup
      limit = params.delete(:limit)
      string_limit = params.delete("limit")
      limit ||= string_limit
      path = "#{path}?limit=#{URI.encode_www_form_component(limit)}" if !limit.nil? && !path.include?("?")
      request(method: method, path: path, base_address: base_address, params: params, opts: opts)
    end

    def request_stream(method:, path:, base_address:, params: {}, opts: {}, &read_body_chunk_block)
      @requestor.execute_request_stream(
        method,
        path,
        base_address,
        params: params,
        opts: RequestOptions.extract_opts_from_hash(opts),
        usage: ["stripe_client"],
        &read_body_chunk_block
      )
    end
  end
end
