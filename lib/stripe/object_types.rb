# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength

module Stripe
  module ObjectTypes
    def self.object_names_to_classes
      {
        # data structures
        ListObject.object_name => ListObject,
        SearchResultObject.object_name => SearchResultObject,
        File.object_name_alt => File,

        # object classes: The beginning of the section generated from our OpenAPI spec
        # object classes: The end of the section generated from our OpenAPI spec
      }
    end

    def self.v2_object_names_to_classes
      {
        V2::ListObject.object_name => V2::ListObject,

        # v2 object classes: The beginning of the section generated from our OpenAPI spec
        # v2 object classes: The end of the section generated from our OpenAPI spec
      }
    end
  end
end

# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/MethodLength
