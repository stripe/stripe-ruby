# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    class DeletedObject < APIResource
      # String representing the object's type. Objects of the same type share the same value of the object field.
      sig { returns(String) }
      attr_reader :object
      # The ID of the object that's being deleted.
      sig { returns(String) }
      attr_reader :id
    end
  end
end