# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Invoice Rendering Templates are used to configure how invoices are rendered on surfaces like the PDF. Invoice Rendering Templates
  # can be created from within the Dashboard, and they can be used over the API when creating invoices.
  class InvoiceRenderingTemplate < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "invoice_rendering_template"
    def self.object_name
      "invoice_rendering_template"
    end

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # A brief description of the template, hidden from customers
    attr_reader :nickname
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The status of the template, one of `active` or `archived`.
    attr_reader :status
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
  end
end
