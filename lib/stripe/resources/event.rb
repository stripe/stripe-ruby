# frozen_string_literal: true

module Stripe
  class Event < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "event"
  end
end
