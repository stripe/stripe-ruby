module Stripe
  class InvoiceItem < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::Update
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Save
  end
end
