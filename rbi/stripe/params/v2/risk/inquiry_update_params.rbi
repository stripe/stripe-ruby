# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Risk
      class InquiryUpdateParams < ::Stripe::RequestParams
        class Appeal < ::Stripe::RequestParams
          # A text explanation for the appeal.
          sig { returns(String) }
          def explanation; end
          sig { params(_explanation: String).returns(String) }
          def explanation=(_explanation); end
          sig { params(explanation: String).void }
          def initialize(explanation: nil); end
        end
        class AuthorizationDocuments < ::Stripe::RequestParams
          # IDs of uploaded files to attach as authorization documents.
          sig { returns(T::Array[String]) }
          def files; end
          sig { params(_files: T::Array[String]).returns(T::Array[String]) }
          def files=(_files); end
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class ProductRemoval < ::Stripe::RequestParams
          # The timestamp when the prohibited items were removed.
          sig { returns(String) }
          def items_removed_at; end
          sig { params(_items_removed_at: String).returns(String) }
          def items_removed_at=(_items_removed_at); end
          sig { params(items_removed_at: String).void }
          def initialize(items_removed_at: nil); end
        end
        # Provide this for appeal inquiries.
        sig { returns(T.nilable(::Stripe::V2::Risk::InquiryUpdateParams::Appeal)) }
        def appeal; end
        sig {
          params(_appeal: T.nilable(::Stripe::V2::Risk::InquiryUpdateParams::Appeal)).returns(T.nilable(::Stripe::V2::Risk::InquiryUpdateParams::Appeal))
         }
        def appeal=(_appeal); end
        # Provide this for authorization_documents inquiries.
        sig { returns(T.nilable(::Stripe::V2::Risk::InquiryUpdateParams::AuthorizationDocuments)) }
        def authorization_documents; end
        sig {
          params(_authorization_documents: T.nilable(::Stripe::V2::Risk::InquiryUpdateParams::AuthorizationDocuments)).returns(T.nilable(::Stripe::V2::Risk::InquiryUpdateParams::AuthorizationDocuments))
         }
        def authorization_documents=(_authorization_documents); end
        # Provide this for product_removal inquiries.
        sig { returns(T.nilable(::Stripe::V2::Risk::InquiryUpdateParams::ProductRemoval)) }
        def product_removal; end
        sig {
          params(_product_removal: T.nilable(::Stripe::V2::Risk::InquiryUpdateParams::ProductRemoval)).returns(T.nilable(::Stripe::V2::Risk::InquiryUpdateParams::ProductRemoval))
         }
        def product_removal=(_product_removal); end
        sig {
          params(appeal: T.nilable(::Stripe::V2::Risk::InquiryUpdateParams::Appeal), authorization_documents: T.nilable(::Stripe::V2::Risk::InquiryUpdateParams::AuthorizationDocuments), product_removal: T.nilable(::Stripe::V2::Risk::InquiryUpdateParams::ProductRemoval)).void
         }
        def initialize(appeal: nil, authorization_documents: nil, product_removal: nil); end
      end
    end
  end
end