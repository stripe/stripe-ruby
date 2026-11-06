# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # Tax exemption and resale certificates associated with tax exemptions.
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
      # Whether the certificate has been deleted.
      attr_reader :deleted
      # The uploaded certificate file.
      attr_reader :file
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The tax exemption associated with this certificate.
      attr_reader :tax_exemption

      # Create a tax certificate associated with a tax exemption.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/tax/certificates",
          params: params,
          opts: opts
        )
      end

      # Delete a tax certificate associated with a tax exemption.
      def self.delete(id, params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/tax/certificates/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Delete a tax certificate associated with a tax exemption.
      def delete(params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/tax/certificates/%<id>s", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # List certificates for an existing tax exemption.
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
