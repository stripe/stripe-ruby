# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # An Authorization represents the set of credentials used to connect a group of Financial Connections Accounts.
    class Authorization < APIResource
      class StatusDetails < ::Stripe::StripeObject
        class Active < ::Stripe::StripeObject
          # The action (if any) to proactively relink the Authorization.
          sig { returns(String) }
          def action; end
          # When the Authorization is expected to become inactive, if applicable.
          sig { returns(Integer) }
          def expected_deactivation_date; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Inactive < ::Stripe::StripeObject
          # The action (if any) to relink the inactive Authorization.
          sig { returns(String) }
          def action; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field active
        sig { returns(T.nilable(Active)) }
        def active; end
        # Attribute for field inactive
        sig { returns(T.nilable(Inactive)) }
        def inactive; end
        def self.inner_class_types
          @inner_class_types = {active: Active, inactive: Inactive}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # The name of the institution that this authorization belongs to.
      sig { returns(String) }
      def institution_name; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The status of the connection to the Authorization.
      sig { returns(String) }
      def status; end
      # Attribute for field status_details
      sig { returns(StatusDetails) }
      def status_details; end
    end
  end
end