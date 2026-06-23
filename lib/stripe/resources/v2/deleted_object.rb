# frozen_string_literal: true

module Stripe
  module V2
    class DeletedObject < APIResource
      attr_reader :object, :id

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
