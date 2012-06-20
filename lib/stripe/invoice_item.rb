module Stripe
  class InvoiceItem < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Update
  end
end
