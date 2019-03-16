# frozen_string_literal: true

module Stripe
  module Terminal
    class Location < Stripe::APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Delete
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "terminal.location".freeze
    end
  end
end
