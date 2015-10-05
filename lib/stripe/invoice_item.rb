module Stripe
  class InvoiceItem < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Update
  end
end
