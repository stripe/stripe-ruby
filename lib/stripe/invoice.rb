# frozen_string_literal: true

module Stripe
  class Invoice < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "invoice".freeze

    custom_method :finalize_invoice, http_verb: :post, http_path: "finalize"
    custom_method :mark_uncollectible, http_verb: :post
    custom_method :pay, http_verb: :post
    custom_method :send_invoice, http_verb: :post, http_path: "send"
    custom_method :void_invoice, http_verb: :post, http_path: "void"

    def finalize_invoice(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/finalize", params, opts)
      initialize_from(resp.data, opts)
    end

    def mark_uncollectible(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/mark_uncollectible", params, opts)
      initialize_from(resp.data, opts)
    end

    def pay(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/pay", params, opts)
      initialize_from(resp.data, opts)
    end

    def send_invoice(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/send", params, opts)
      initialize_from(resp.data, opts)
    end

    def void_invoice(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/void", params, opts)
      initialize_from(resp.data, opts)
    end

    def self.upcoming(params, opts = {})
      resp, opts = request(:get, resource_url + "/upcoming", params, opts)
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
