# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Risk
      class InquiryUpdateParams < ::Stripe::RequestParams
        class Appeal < ::Stripe::RequestParams
          # A text explanation for the appeal.
          attr_accessor :explanation

          def initialize(explanation: nil)
            @explanation = explanation
          end
        end

        class AuthorizationDocuments < ::Stripe::RequestParams
          # IDs of uploaded files to attach as authorization documents.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class ProductRemoval < ::Stripe::RequestParams
          # The timestamp when the prohibited items were removed.
          attr_accessor :items_removed_at

          def initialize(items_removed_at: nil)
            @items_removed_at = items_removed_at
          end
        end
        # Provide this for appeal inquiries.
        attr_accessor :appeal
        # Provide this for authorization_documents inquiries.
        attr_accessor :authorization_documents
        # Provide this for product_removal inquiries.
        attr_accessor :product_removal

        def initialize(appeal: nil, authorization_documents: nil, product_removal: nil)
          @appeal = appeal
          @authorization_documents = authorization_documents
          @product_removal = product_removal
        end
      end
    end
  end
end
