# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class Quote < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = 'quote'

    custom_method :accept, http_verb: :post
    custom_method :cancel, http_verb: :post
    custom_method :finalize, http_verb: :post
    custom_method :list_line_items, http_verb: :get, http_path: 'line_items'
    custom_method :pdf, http_verb: :get

    def accept(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + '/accept',
        params: params,
        opts: opts,
      )
    end

    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + '/cancel',
        params: params,
        opts: opts,
      )
    end

    def finalize(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + '/finalize',
        params: params,
        opts: opts,
      )
    end

    def list_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: resource_url + '/line_items',
        params: params,
        opts: opts,
      )
    end

    def pdf(params = {}, opts = {}, &read_body_chunk_block)
      raise ArgumentError.new('A read_body_chunk_block block parameter is required when calling the pdf method.') unless block_given?
      request_stream(
        method: :get,
        path: resource_url + '/pdf',
        params: params,
        opts: opts,
        &read_body_chunk_block,
      )
    end
  end
end