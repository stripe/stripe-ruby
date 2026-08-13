# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Tax
      # The result of resolving an address to its tax precision level.
      class OperationsResolveAddressResult < APIResource
        OBJECT_NAME = "v2.tax.operations_resolve_address_result"
        def self.object_name
          "v2.tax.operations_resolve_address_result"
        end

        class Address < ::Stripe::StripeObject
          # The city.
          attr_reader :city
          # The two-letter country code.
          attr_reader :country
          # The first line of the street address.
          attr_reader :line1
          # The postal code.
          attr_reader :postal_code
          # The state or province.
          attr_reader :state

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class PrecisionDetails < ::Stripe::StripeObject
          class Issue < ::Stripe::StripeObject
            # A code describing the issue.
            attr_reader :code
            # The address field with the issue.
            attr_reader :field

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Issues preventing higher precision.
          attr_reader :issues

          def self.inner_class_types
            @inner_class_types = { issues: Issue }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The normalized form of the input address.
        attr_reader :address
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The precision level of the resolved address.
        attr_reader :precision
        # Details about the precision, including any issues.
        attr_reader :precision_details

        def self.inner_class_types
          @inner_class_types = { address: Address, precision_details: PrecisionDetails }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
