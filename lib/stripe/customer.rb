module Stripe
  class Customer < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::List

    # Set or replace a customer's default source.
    def source=(value)
      super

      # The parent setter will perform certain useful operations like
      # converting to an APIResource if appropriate.
      value = self.source

      # Note that source may be a card, but could also be a tokenized card's ID
      # (which is a string), and so we check its type here.
      if value.is_a?(APIResource)
        value.save_with_parent = true
      end

      value
    end

    def add_invoice_item(params, opts={})
      opts = @opts.merge(Util.normalize_opts(opts))
      InvoiceItem.create(params.merge(:customer => id), opts)
    end

    def invoices(params={}, opts={})
      opts = @opts.merge(Util.normalize_opts(opts))
      Invoice.all(params.merge(:customer => id), opts)
    end

    def invoice_items(params={}, opts={})
      opts = @opts.merge(Util.normalize_opts(opts))
      InvoiceItem.all(params.merge(:customer => id), opts)
    end

    def upcoming_invoice(params={}, opts={})
      opts = @opts.merge(Util.normalize_opts(opts))
      Invoice.upcoming(params.merge(:customer => id), opts)
    end

    def charges(params={}, opts={})
      opts = @opts.merge(Util.normalize_opts(opts))
      Charge.all(params.merge(:customer => id), opts)
    end

    def create_upcoming_invoice(params={}, opts={})
      opts = @opts.merge(Util.normalize_opts(opts))
      Invoice.create(params.merge(:customer => id), opts)
    end

    def cancel_subscription(params={}, opts={})
      response, opts = request(:delete, subscription_url, params, opts)
      initialize_from({ :subscription => response }, opts, true)
      subscription
    end

    def update_subscription(params={}, opts={})
      response, opts = request(:post, subscription_url, params, opts)
      initialize_from({ :subscription => response }, opts, true)
      subscription
    end

    def create_subscription(params={}, opts={})
      response, opts = request(:post, subscriptions_url, params, opts)
      initialize_from({ :subscription => response }, opts, true)
      subscription
    end

    def delete_discount
      _, opts = request(:delete, discount_url)
      initialize_from({ :discount => nil }, opts, true)
    end

    private

    def discount_url
      resource_url + '/discount'
    end

    def subscription_url
      resource_url + '/subscription'
    end

    def subscriptions_url
      resource_url + '/subscriptions'
    end
  end
end
