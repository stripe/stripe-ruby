module Stripe
  class Customer < APIResource
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::List

    def add_invoice_item(params, api_key=nil)
      api_key ||= @api_key
      InvoiceItem.create(params.merge(:customer => id), api_key)
    end

    def invoices(api_key=nil)
      api_key ||= @api_key
      Invoice.all({ :customer => id }, api_key)
    end

    def invoice_items(api_key=nil)
      api_key ||= @api_key
      InvoiceItem.all({ :customer => id }, api_key)
    end

    def upcoming_invoice(api_key=nil)
      api_key ||= @api_key
      Invoice.upcoming({ :customer => id }, api_key)
    end

    def charges(api_key=nil)
      api_key ||= @api_key
      Charge.all({ :customer => id }, api_key)
    end

    def create_upcoming_invoice(params={}, api_key=nil)
      api_key ||= @api_key
      Invoice.create(params.merge(:customer => id), api_key)
    end

    def cancel_subscription(params={}, api_key=nil)
      api_key ||= @api_key
      response, key = Stripe.request(:delete, subscription_url, api_key, params)
      refresh_from({ :subscription => response }, key, true)
      subscription
    end

    def update_subscription(params, api_key=nil)
      api_key ||= @api_key
      response, key = Stripe.request(:post, subscription_url, api_key, params)
      refresh_from({ :subscription => response }, key, true)
      subscription
    end

    def delete_discount(api_key=nil)
      api_key ||= @api_key
      response, key = Stripe.request(:delete, discount_url, api_key)
      refresh_from({ :discount => nil }, key, true)
    end

    private

    def discount_url
      url + '/discount'
    end

    def subscription_url
      url + '/subscription'
    end
  end
end
