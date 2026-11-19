# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # A Tax Certificate associates an uploaded exemption or resale certificate file with a customer's tax exemption. A tax exemption can have multiple certificates. Deleting a tax exemption also deletes its certificates, but retains their uploaded files.
    class Certificate < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Delete
      extend Stripe::APIOperations::List

      OBJECT_NAME = "tax.certificate"
      def self.object_name
        "tax.certificate"
      end

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # If `true`, the certificate has been deleted. If `false`, it hasn't been deleted.
      attr_reader :deleted
      # The ID of the uploaded certificate [file](/api/files/object).
      attr_reader :file
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The ID of the [customer tax exemption](/api/tax/exemptions/object) associated with this certificate.
      attr_reader :tax_exemption

      # Creates a Tax Certificate associated with a tax exemption. Before creating the certificate, [upload a file](https://docs.stripe.com/api/files/create) with purpose tax_certificate.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/tax/certificates",
          params: params,
          opts: opts
        )
      end

      # Deletes a Tax Certificate without deleting its uploaded file. You can reuse the file to create another certificate, and you can still retrieve the deleted certificate.
      def self.delete(id, params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/tax/certificates/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Deletes a Tax Certificate without deleting its uploaded file. You can reuse the file to create another certificate, and you can still retrieve the deleted certificate.
      def delete(params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/tax/certificates/%<id>s", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Lists a tax exemption's certificates, ordered from newest to oldest. The list excludes deleted certificates.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/tax/certificates",
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
