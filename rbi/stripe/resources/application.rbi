# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class Application < APIResource
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # The name of the application.
    sig { returns(T.nilable(String)) }
    attr_reader :name
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end