# frozen_string_literal: true

module Stripe
  class Instrumentation
    class RequestEvent
      attr_reader :duration
      attr_reader :http_status
      attr_reader :method
      attr_reader :num_retries
      attr_reader :path

      def initialize(duration:, http_status:, method:, num_retries:, path:)
        @duration = duration
        @http_status = http_status
        @method = method
        @num_retries = num_retries
        @path = path
        freeze
      end
    end

    def self.subscribe(topic, name = rand, &block)
      subscribers[topic][name] = block
      name
    end

    def self.unsubscribe(topic, name)
      subscribers[topic].delete(name)
    end

    def self.notify(topic, event)
      subscribers[topic].each_value { |subscriber| subscriber.call(event) }
    end

    def self.subscribers
      @subscribers ||= Hash.new { |hash, key| hash[key] = {} }
    end
    private_class_method :subscribers
  end
end
