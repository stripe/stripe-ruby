# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class DeletedObject < APIResource
      # String representing the type of the object that has been deleted. Objects of the same type share the same value of the object field.
      attr_reader :object
      # The ID of the object that's being deleted.
      attr_reader :id
    end
  end
end
