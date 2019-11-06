# frozen_string_literal: true

module Stripe
  class Instrumentation
    def self.subscribe(topic, name = rand, &block)
      subscribers[topic][name] = block
      name
    end

    def self.unsubscribe(topic, name)
      subscribers[topic].delete(name)
    end

    def self.notify(topic, *args)
      subscribers[topic].each_value { |subscriber| subscriber.call(*args) }
    end

    def self.subscribers
      @subscribers ||= Hash.new { |hash, key| hash[key] = {} }
    end
    private_class_method :subscribers
  end
end
