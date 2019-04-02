# frozen_string_literal: true

module Stripe
  class Invoice < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "invoice".freeze

    custom_method :finalize_invoice, http_verb: :post, http_path: "finalize"
    custom_method :mark_uncollectible, http_verb: :post
    custom_method :pay, http_verb: :post
    custom_method :send_invoice, http_verb: :post, http_path: "send"
    custom_method :void_invoice, http_verb: :post, http_path: "void"

    def finalize_invoice(params = {}, opts = {})
      url = resource_url + "/finalize"
      resp, opts = request(:post, url, params, opts)
      initialize_from(resp.data, opts)
    end

    def mark_uncollectible(params = {}, opts = {})
      url = resource_url + "/mark_uncollectible"
      resp, opts = request(:post, url, params, opts)
      initialize_from(resp.data, opts)
    end

    def pay(params = {}, opts = {})
      url = resource_url + "/pay"
      resp, opts = request(:post, url, params, opts)
      initialize_from(resp.data, opts)
    end

    def send_invoice(params = {}, opts = {})
      url = resource_url + "/send"
      resp, opts = request(:post, url, params, opts)
      initialize_from(resp.data, opts)
    end

    def self.upcoming(params, opts = {})
      url = resource_url + "/upcoming"
      resp, opts = request(:get, url, params, opts)
      Util.convert_to_stripe_object(resp.data, opts)
    end

    def void_invoice(params = {}, opts = {})
      url = resource_url + "/void"
      resp, opts = request(:post, url, params, opts)
      initialize_from(resp.data, opts)
    end
  end
end
