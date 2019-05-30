# frozen_string_literal: true

module Stripe
  class AccountLink < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "account_link".freeze
  end
end
