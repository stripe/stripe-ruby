# frozen_string_literal: true

module Stripe
  class TransferReversal < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = 'transfer_reversal'.freeze
  end
end
