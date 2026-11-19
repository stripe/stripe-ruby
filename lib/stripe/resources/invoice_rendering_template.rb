# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Invoice Rendering Templates are used to configure how invoices are rendered on surfaces like the PDF. Invoice Rendering Templates
  # can be created from within the Dashboard, and they can be used over the API when creating invoices.
  class InvoiceRenderingTemplate < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "invoice_rendering_template"
    def self.object_name
      "invoice_rendering_template"
    end

    class LineItemPolicy < ::Stripe::StripeObject
      # A CEL expression that takes in a line item and returns a string indicating whether the line item should be 'hidden_if_zero' or 'visible'.
      #  If 'hidden_if_zero', the line item will be hidden if the line item's amount is zero on the invoice.
      #  If 'visible', the line item will be shown regardless of the line item's amount.
      attr_reader :display

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class RenderingSettings < ::Stripe::StripeObject
      class InvoicePdf < ::Stripe::StripeObject
        class Block < ::Stripe::StripeObject
          class CustomPlainTextCel < ::Stripe::StripeObject
            # A CEL expression that returns text using the invoice context.
            attr_reader :cel_expression

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Attribute for field custom_plain_text_cel
          attr_reader :custom_plain_text_cel
          # The key of this block in the template.
          attr_reader :key
          # The type of content block
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { custom_plain_text_cel: CustomPlainTextCel }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The ordered invoice PDF blocks.
        attr_reader :blocks

        def self.inner_class_types
          @inner_class_types = { blocks: Block }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field invoice_pdf
      attr_reader :invoice_pdf

      def self.inner_class_types
        @inner_class_types = { invoice_pdf: InvoicePdf }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class SummaryItemPolicy < ::Stripe::StripeObject
      # Either `all` or `none`. For all summary items created from this policy, if `all`, every line item will be shown under the summary item header. If `none`, the line items will be hidden and only the summary item header will be shown.
      attr_reader :display_items
      # A CEL expression that takes in a line item and returns a boolean indicating whether the line item should be considered when grouping.
      attr_reader :filter
      # A CEL expression that takes in a line item and returns a string. Line items with the same string results are put in the same summary items. The string result will become the description of the summary item.
      attr_reader :group_by

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Unique identifier for the object.
    attr_reader :id
    # The policy that controls how individual line items are rendered
    attr_reader :line_item_policy
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    attr_reader :livemode
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # A brief description of the template, hidden from customers
    attr_reader :nickname
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field rendering_settings
    attr_reader :rendering_settings
    # The status of the template, one of `active` or `archived`.
    attr_reader :status
    # The policies that control how line items are grouped into summary items
    attr_reader :summary_item_policies
    # Version of this template; version increases by one when an update on the template changes any field that controls invoice rendering
    attr_reader :version

    # Updates the status of an invoice rendering template to ‘archived' so no new Stripe objects (customers, invoices, etc.) can reference it. The template can also no longer be updated. However, if the template is already set on a Stripe object, it will continue to be applied on invoices generated by it.
    def archive(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoice_rendering_templates/%<template>s/archive", { template: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Updates the status of an invoice rendering template to ‘archived' so no new Stripe objects (customers, invoices, etc.) can reference it. The template can also no longer be updated. However, if the template is already set on a Stripe object, it will continue to be applied on invoices generated by it.
    def self.archive(template, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoice_rendering_templates/%<template>s/archive", { template: CGI.escape(template) }),
        params: params,
        opts: opts
      )
    end

    # Creates an invoice rendering template.
    def self.create(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/invoice_rendering_templates",
        params: params,
        opts: opts
      )
    end

    # List all templates, ordered by creation date, with the most recently created template appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/invoice_rendering_templates",
        params: params,
        opts: opts
      )
    end

    # Unarchive an invoice rendering template so it can be used on new Stripe objects again.
    def unarchive(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoice_rendering_templates/%<template>s/unarchive", { template: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Unarchive an invoice rendering template so it can be used on new Stripe objects again.
    def self.unarchive(template, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoice_rendering_templates/%<template>s/unarchive", { template: CGI.escape(template) }),
        params: params,
        opts: opts
      )
    end

    # Updates an existing invoice rendering template.
    def self.update(template, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoice_rendering_templates/%<template>s", { template: CGI.escape(template) }),
        params: params,
        opts: opts
      )
    end

    def self.inner_class_types
      @inner_class_types = {
        line_item_policy: LineItemPolicy,
        rendering_settings: RenderingSettings,
        summary_item_policies: SummaryItemPolicy,
      }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
