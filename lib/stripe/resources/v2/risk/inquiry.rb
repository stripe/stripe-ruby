# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Risk
      # A risk inquiry represents a request from Stripe for information about a connected account.
      class Inquiry < APIResource
        OBJECT_NAME = "v2.risk.inquiry"
        def self.object_name
          "v2.risk.inquiry"
        end

        class Appeal < ::Stripe::StripeObject
          # A text explanation for the appeal.
          attr_reader :explanation

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class AuthorizationDocuments < ::Stripe::StripeObject
          # IDs of uploaded files to attach as authorization documents.
          attr_reader :files

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class ProductRemoval < ::Stripe::StripeObject
          # The timestamp when the prohibited items were removed.
          attr_reader :items_removed_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Data for appeal inquiries. Only present when type is appeal.
        attr_reader :appeal
        # Data for authorization_documents inquiries. Only present when type is authorization_documents.
        attr_reader :authorization_documents
        # Time at which the inquiry was closed.
        attr_reader :closed_at
        # Time at which the inquiry was created.
        attr_reader :created
        # Unique identifier for the inquiry.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Time at which the inquiry was opened.
        attr_reader :opened_at
        # Data for product_removal inquiries. Only present when type is product_removal.
        attr_reader :product_removal
        # The current status of the inquiry.
        attr_reader :status
        # The type of inquiry.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            appeal: Appeal,
            authorization_documents: AuthorizationDocuments,
            product_removal: ProductRemoval,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
