# frozen_string_literal: true
# typed: true

module Stripe
  # StripeContext represents a path-like context for Stripe API operations,
  # allowing for hierarchical organization of API calls. The context is
  # externally immutable, meaning all operations return new instances
  # rather than modifying existing ones.
  class StripeContext
    attr_reader :segments

    def initialize(segments = [])
      @segments = segments ? segments.dup.freeze : [].freeze
    end

    # Parses a context string into a StripeContext instance.
    def self.parse(context_string)
      return new([]) if context_string.nil? || context_string.empty?

      new(context_string.split("/"))
    end

    # Returns the parent context by removing the last segment.
    # Raises an error if the context is empty.
    def parent
      raise ArgumentError, "Cannot get parent of empty context" if @segments.empty?

      StripeContext.new(@segments[0...-1])
    end

    # Returns a new context with the given segment appended.
    def child(segment)
      StripeContext.new(@segments + [segment])
    end

    # Returns the string representation of the context.
    def to_s
      @segments.join("/")
    end

    # Enables conversion to string for JSON serialization
    def as_json(*)
      to_s
    end

    # For JSON serialization
    def to_json(*args)
      as_json.to_json(*args)
    end
  end
end