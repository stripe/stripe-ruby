# frozen_string_literal: true

module Stripe
  class Instrumentation
    def self.subscribe(name = rand, &block)
      subscribers[name] = block
      name
    end

    def self.unsubscribe(name)
      subscribers.delete(name)
    end

    def self.notify(*args)
      subscribers.each_value { |subscriber| subscriber.call(*args) }
    end

    def self.subscribers
      @subscribers ||= {}
    end
    private_class_method :subscribers
  end
end
