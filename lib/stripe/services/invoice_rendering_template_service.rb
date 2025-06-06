# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class InvoiceRenderingTemplateService < StripeService
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # Attribute for param field status
      attr_accessor :status

      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil, status: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
        @status = status
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Attribute for param field version
      attr_accessor :version

      def initialize(expand: nil, version: nil)
        @expand = expand
        @version = version
      end
    end

    class ArchiveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UnarchiveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    # Updates the status of an invoice rendering template to ‘archived' so no new Stripe objects (customers, invoices, etc.) can reference it. The template can also no longer be updated. However, if the template is already set on a Stripe object, it will continue to be applied on invoices generated by it.
    def archive(template, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/invoice_rendering_templates/%<template>s/archive", { template: CGI.escape(template) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # List all templates, ordered by creation date, with the most recently created template appearing first.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/invoice_rendering_templates",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves an invoice rendering template with the given ID. It by default returns the latest version of the template. Optionally, specify a version to see previous versions.
    def retrieve(template, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/invoice_rendering_templates/%<template>s", { template: CGI.escape(template) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Unarchive an invoice rendering template so it can be used on new Stripe objects again.
    def unarchive(template, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/invoice_rendering_templates/%<template>s/unarchive", { template: CGI.escape(template) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
