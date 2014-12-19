module Stripe
  class Customer < APIResource
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::List

    def add_invoice_item(params, opts={})
      opts[:api_key] = @api_key
      InvoiceItem.create(params.merge(:customer => id), opts)
    end

    def invoices
      Invoice.all({ :customer => id }, @api_key)
    end

    def invoice_items
      InvoiceItem.all({ :customer => id }, @api_key)
    end

    def upcoming_invoice
      Invoice.upcoming({ :customer => id }, @api_key)
    end

    def charges
      Charge.all({ :customer => id }, @api_key)
    end

    def create_upcoming_invoice(params={}, opts={})
      opts[:api_key] = @api_key
      Invoice.create(params.merge(:customer => id), opts)
    end

    def cancel_subscription(params={}, opts={})
      api_key, headers = Util.parse_opts(opts)
      response, api_key = Stripe.request(
        :delete, subscription_url, api_key || @api_key, params, headers)
      refresh_from({ :subscription => response }, api_key, true)
      subscription
    end

    def update_subscription(params={}, opts={})
      api_key, headers = Util.parse_opts(opts)
      response, api_key = Stripe.request(
        :post, subscription_url, api_key  || @api_key, params, headers)
      refresh_from({ :subscription => response }, api_key, true)
      subscription
    end

    def create_subscription(params={}, opts={})
      api_key, headers = Util.parse_opts(opts)
      response, api_key = Stripe.request(
        :post, subscriptions_url, api_key || @api_key, params, headers)
      refresh_from({ :subscription => response }, api_key, true)
      subscription
    end

    def delete_discount
      Stripe.request(:delete, discount_url, @api_key)
      refresh_from({ :discount => nil }, api_key, true)
    end

    private

    def discount_url
      url + '/discount'
    end

    def subscription_url
      url + '/subscription'
    end

    def subscriptions_url
      url + '/subscriptions'
    end
  end
end
