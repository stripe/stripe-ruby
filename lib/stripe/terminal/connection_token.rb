# frozen_string_literal: true

module Stripe
  module Terminal
    class ConnectionToken < Stripe::APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "terminal.connection_token".freeze
    end
  end
end
