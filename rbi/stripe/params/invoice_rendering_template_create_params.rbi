# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class InvoiceRenderingTemplateCreateParams < ::Stripe::RequestParams
    class LineItemPolicy < ::Stripe::RequestParams
      # A CEL expression that takes a line item and returns a boolean indicating whether to display it on the invoice.
      sig { returns(T.nilable(String)) }
      def display; end
      sig { params(_display: T.nilable(String)).returns(T.nilable(String)) }
      def display=(_display); end
      sig { params(display: T.nilable(String)).void }
      def initialize(display: nil); end
    end
    class RenderingSettings < ::Stripe::RequestParams
      class InvoicePdf < ::Stripe::RequestParams
        class Block < ::Stripe::RequestParams
          class CustomPlainTextCel < ::Stripe::RequestParams
            # A CEL expression that returns text using the invoice context.
            sig { returns(String) }
            def cel_expression; end
            sig { params(_cel_expression: String).returns(String) }
            def cel_expression=(_cel_expression); end
            sig { params(cel_expression: String).void }
            def initialize(cel_expression: nil); end
          end
          # Configuration for a custom CEL text block.
          sig {
            returns(T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings::InvoicePdf::Block::CustomPlainTextCel))
           }
          def custom_plain_text_cel; end
          sig {
            params(_custom_plain_text_cel: T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings::InvoicePdf::Block::CustomPlainTextCel)).returns(T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings::InvoicePdf::Block::CustomPlainTextCel))
           }
          def custom_plain_text_cel=(_custom_plain_text_cel); end
          # A unique key within this template's blocks. Generated when omitted.
          sig { returns(T.nilable(String)) }
          def key; end
          sig { params(_key: T.nilable(String)).returns(T.nilable(String)) }
          def key=(_key); end
          # The type of content block.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(custom_plain_text_cel: T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings::InvoicePdf::Block::CustomPlainTextCel), key: T.nilable(String), type: String).void
           }
          def initialize(custom_plain_text_cel: nil, key: nil, type: nil); end
        end
        # Ordered invoice PDF blocks. A maximum of 20 blocks is allowed.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings::InvoicePdf::Block])))
         }
        def blocks; end
        sig {
          params(_blocks: T.nilable(T.any(String, T::Array[::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings::InvoicePdf::Block]))).returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings::InvoicePdf::Block])))
         }
        def blocks=(_blocks); end
        sig {
          params(blocks: T.nilable(T.any(String, T::Array[::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings::InvoicePdf::Block]))).void
         }
        def initialize(blocks: nil); end
      end
      # Rendering settings for the invoice PDF.
      sig {
        returns(T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings::InvoicePdf))
       }
      def invoice_pdf; end
      sig {
        params(_invoice_pdf: T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings::InvoicePdf)).returns(T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings::InvoicePdf))
       }
      def invoice_pdf=(_invoice_pdf); end
      sig {
        params(invoice_pdf: T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings::InvoicePdf)).void
       }
      def initialize(invoice_pdf: nil); end
    end
    class SummaryItemPolicy < ::Stripe::RequestParams
      # Controls how each summary group is rendered on the invoice. `all` displays the summary line item, its constituent line items, and a group subtotal. `none` displays only the summary line item. Defaults to `all`.
      sig { returns(T.nilable(String)) }
      def display_items; end
      sig { params(_display_items: T.nilable(String)).returns(T.nilable(String)) }
      def display_items=(_display_items); end
      # A CEL expression that takes a line item and returns a boolean indicating whether to include it in this grouping policy. If omitted, includes all ungrouped line items.
      sig { returns(T.nilable(String)) }
      def filter; end
      sig { params(_filter: T.nilable(String)).returns(T.nilable(String)) }
      def filter=(_filter); end
      # A CEL expression that takes a line item and returns a string. Line items with the same result are grouped into a summary item, using that result as its group title.
      sig { returns(T.nilable(String)) }
      def group_by; end
      sig { params(_group_by: T.nilable(String)).returns(T.nilable(String)) }
      def group_by=(_group_by); end
      sig {
        params(display_items: T.nilable(String), filter: T.nilable(String), group_by: T.nilable(String)).void
       }
      def initialize(display_items: nil, filter: nil, group_by: nil); end
    end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Controls how individual line items are displayed on the invoice, visible to customers.
    sig { returns(T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::LineItemPolicy)) }
    def line_item_policy; end
    sig {
      params(_line_item_policy: T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::LineItemPolicy)).returns(T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::LineItemPolicy))
     }
    def line_item_policy=(_line_item_policy); end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
     }
    def metadata=(_metadata); end
    # Nickname for the template that is hidden from customers
    sig { returns(T.nilable(String)) }
    def nickname; end
    sig { params(_nickname: T.nilable(String)).returns(T.nilable(String)) }
    def nickname=(_nickname); end
    # Rendering settings for invoices using this template.
    sig { returns(T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings)) }
    def rendering_settings; end
    sig {
      params(_rendering_settings: T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings)).returns(T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings))
     }
    def rendering_settings=(_rendering_settings); end
    # Controls the grouping of line items into summary items which are displayed on the invoice, visible to customers. The policies are applied in order - only ungrouped line items from the previous policy are considered by the following policies.
    sig {
      returns(T.nilable(T::Array[::Stripe::InvoiceRenderingTemplateCreateParams::SummaryItemPolicy]))
     }
    def summary_item_policies; end
    sig {
      params(_summary_item_policies: T.nilable(T::Array[::Stripe::InvoiceRenderingTemplateCreateParams::SummaryItemPolicy])).returns(T.nilable(T::Array[::Stripe::InvoiceRenderingTemplateCreateParams::SummaryItemPolicy]))
     }
    def summary_item_policies=(_summary_item_policies); end
    sig {
      params(expand: T.nilable(T::Array[String]), line_item_policy: T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::LineItemPolicy), metadata: T.nilable(T::Hash[String, String]), nickname: T.nilable(String), rendering_settings: T.nilable(::Stripe::InvoiceRenderingTemplateCreateParams::RenderingSettings), summary_item_policies: T.nilable(T::Array[::Stripe::InvoiceRenderingTemplateCreateParams::SummaryItemPolicy])).void
     }
    def initialize(
      expand: nil,
      line_item_policy: nil,
      metadata: nil,
      nickname: nil,
      rendering_settings: nil,
      summary_item_policies: nil
    ); end
  end
end