# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class Application < APIResource
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(String)) }
    # The name of the application.
    attr_reader :name
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end