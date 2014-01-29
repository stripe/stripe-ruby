module Stripe
  class Customer < APIResource
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::List

    def add_invoice_item(params)
      InvoiceItem.create(params.merge(:customer => id), @api_key)
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

    def delete_discount
      Stripe.request(:delete, discount_url, @api_key)
      refresh_from({ :discount => nil }, api_key, true)
    end

    private

    def discount_url
      url + '/discount'
    end
  end
end
