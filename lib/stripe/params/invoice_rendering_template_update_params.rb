# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class InvoiceRenderingTemplateUpdateParams < ::Stripe::RequestParams
    class LineItemPolicy < ::Stripe::RequestParams
      # A CEL expression that takes a line item and returns a boolean indicating whether to display it on the invoice.
      attr_accessor :display

      def initialize(display: nil)
        @display = display
      end
    end

    class SummaryItemPolicy < ::Stripe::RequestParams
      # Controls how each summary group is rendered on the invoice. `all` displays the summary line item, its constituent line items, and a group subtotal. `none` displays only the summary line item. Defaults to `all`.
      attr_accessor :display_items
      # A CEL expression that takes a line item and returns a boolean indicating whether to include it in this grouping policy. If omitted, includes all ungrouped line items.
      attr_accessor :filter
      # A CEL expression that takes a line item and returns a string. Line items with the same result are grouped into a summary item, using that result as its group title.
      attr_accessor :group_by

      def initialize(display_items: nil, filter: nil, group_by: nil)
        @display_items = display_items
        @filter = filter
        @group_by = group_by
      end
    end
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Controls how individual line items are displayed on the invoice, visible to customers.
    attr_accessor :line_item_policy
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_accessor :metadata
    # Nickname for the template that is hidden from customers
    attr_accessor :nickname
    # Controls the grouping of line items into summary items which are displayed on the invoice, visible to customers. The policies are applied in order - only ungrouped line items from the previous policy are considered by the following policies.
    attr_accessor :summary_item_policies

    def initialize(
      expand: nil,
      line_item_policy: nil,
      metadata: nil,
      nickname: nil,
      summary_item_policies: nil
    )
      @expand = expand
      @line_item_policy = line_item_policy
      @metadata = metadata
      @nickname = nickname
      @summary_item_policies = summary_item_policies
    end
  end
end
