# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      # The result of resolving an address to its tax precision level.
      class OperationsResolveAddressResult < APIResource
        class Address < ::Stripe::StripeObject
          # The city.
          sig { returns(T.nilable(String)) }
          def city; end
          # The two-letter country code.
          sig { returns(T.nilable(String)) }
          def country; end
          # The first line of the street address.
          sig { returns(T.nilable(String)) }
          def line1; end
          # The postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          # The state or province.
          sig { returns(T.nilable(String)) }
          def state; end
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
            sig { returns(String) }
            def code; end
            # The address field with the issue.
            sig { returns(String) }
            def field; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Issues preventing higher precision.
          sig { returns(T::Array[Issue]) }
          def issues; end
          def self.inner_class_types
            @inner_class_types = {issues: Issue}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The normalized form of the input address.
        sig { returns(Address) }
        def address; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The precision level of the resolved address.
        sig { returns(String) }
        def precision; end
        # Details about the precision, including any issues.
        sig { returns(PrecisionDetails) }
        def precision_details; end
      end
    end
  end
end