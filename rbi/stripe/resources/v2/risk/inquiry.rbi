# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Risk
      # A risk inquiry represents a request from Stripe for information about a connected account.
      class Inquiry < APIResource
        class Appeal < ::Stripe::StripeObject
          # A text explanation for the appeal.
          sig { returns(String) }
          def explanation; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class AuthorizationDocuments < ::Stripe::StripeObject
          # IDs of uploaded files to attach as authorization documents.
          sig { returns(T::Array[String]) }
          def files; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class ProductRemoval < ::Stripe::StripeObject
          # The timestamp when the prohibited items were removed.
          sig { returns(String) }
          def items_removed_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Data for appeal inquiries. Only present when type is appeal.
        sig { returns(T.nilable(Appeal)) }
        def appeal; end
        # Data for authorization_documents inquiries. Only present when type is authorization_documents.
        sig { returns(T.nilable(AuthorizationDocuments)) }
        def authorization_documents; end
        # Time at which the inquiry was closed.
        sig { returns(String) }
        def closed_at; end
        # Time at which the inquiry was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the inquiry.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Time at which the inquiry was opened.
        sig { returns(String) }
        def opened_at; end
        # Data for product_removal inquiries. Only present when type is product_removal.
        sig { returns(T.nilable(ProductRemoval)) }
        def product_removal; end
        # The current status of the inquiry.
        sig { returns(String) }
        def status; end
        # The type of inquiry.
        sig { returns(String) }
        def type; end
      end
    end
  end
end