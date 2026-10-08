# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      # The `ProviderServiceDetail` resource represents a service offered by a
      # provider in the catalog.
      class ProviderServiceDetail < APIResource
        class AllowedUpdate < ::Stripe::StripeObject
          # Whether the target service appears in upgrade flows, downgrade flows, or both.
          sig { returns(String) }
          def direction; end
          # Identifier of a service to which a resource can be updated.
          sig { returns(String) }
          def service; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Constraint < ::Stripe::StripeObject
          class Count < ::Stripe::StripeObject
            # Maximum number of active resources for the service within its scope.
            sig { returns(Integer) }
            def at_most; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Limit on the number of active resources for the service.
          sig { returns(T.nilable(Count)) }
          def count; end
          # Whether provisioning is blocked when an allowed-update target is active in the same scope.
          sig { returns(T.nilable(T::Boolean)) }
          def mutual_exclusion_allowed_updates; end
          # Kind of constraint represented by this entry.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {count: Count}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Pricing < ::Stripe::StripeObject
          class Component < ::Stripe::StripeObject
            class Option < ::Stripe::StripeObject
              class Paid < ::Stripe::StripeObject
                # Additional display information about the price.
                sig { returns(T.nilable(String)) }
                def description; end
                # Provider-supplied pricing terms, set when `type` is `freeform`.
                sig { returns(T.nilable(String)) }
                def freeform; end
                # Kind of pricing represented by this entry.
                sig { returns(String) }
                def type; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Whether this option applies when no parent-service-specific option matches.
              sig { returns(T.nilable(T::Boolean)) }
              def is_default; end
              # Pricing details for this option, set when `type` is `paid`.
              sig { returns(Paid) }
              def paid; end
              # Identifiers of active parent services for which this option applies.
              sig { returns(T::Array[String]) }
              def parent_services; end
              # Whether the component is free or paid when this option applies.
              sig { returns(String) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {paid: Paid}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Pricing options selected according to the resource's active parent services.
            sig { returns(T::Array[Option]) }
            def options; end
            def self.inner_class_types
              @inner_class_types = {options: Option}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Paid < ::Stripe::StripeObject
            # Additional display information about the price.
            sig { returns(T.nilable(String)) }
            def description; end
            # Provider-supplied pricing terms, set when `type` is `freeform`.
            sig { returns(T.nilable(String)) }
            def freeform; end
            # Kind of pricing represented by this entry.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class PaidPricing < ::Stripe::StripeObject
            # Service configuration values for which this pricing entry applies.
            sig { returns(T::Hash[String, T.untyped]) }
            def configuration; end
            # Additional display information about the price.
            sig { returns(T.nilable(String)) }
            def description; end
            # Provider-supplied pricing terms, set when `type` is `freeform`.
            sig { returns(T.nilable(String)) }
            def freeform; end
            # Whether this entry is the fallback when no configuration-specific entry matches.
            sig { returns(T.nilable(T::Boolean)) }
            def is_default; end
            # Kind of pricing represented by this entry.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Parent-service-dependent pricing details, set when `type` is `component`.
          sig { returns(Component) }
          def component; end
          # Legacy compatibility field for top-level paid pricing.
          # Mirrors the single paid pricing entry when only one exists, or the entry marked
          # `is_default`. If multiple paid pricing entries exist and none is default, this field
          # is unset.
          sig { returns(Paid) }
          def paid; end
          # Canonical top-level paid pricing entries for this service.
          # When multiple entries are present, callers should read this field instead of `paid`.
          sig { returns(T::Array[PaidPricing]) }
          def paid_pricing; end
          # Pricing model for the service: free, paid, or dependent on a parent service.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {component: Component, paid: Paid, paid_pricing: PaidPricing}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Updates allowed for resources using this service.
        sig { returns(T::Array[AllowedUpdate]) }
        def allowed_updates; end
        # Availability of the service.
        sig { returns(String) }
        def availability; end
        # Categories the service belongs to.
        sig { returns(T::Array[String]) }
        def categories; end
        # Schema describing the configuration accepted by this service.
        sig { returns(T::Hash[String, T.untyped]) }
        def configuration_schema; end
        # Constraints on resources using this service.
        sig { returns(T::Array[Constraint]) }
        def constraints; end
        # Time at which the service was created.
        sig { returns(String) }
        def created; end
        # Description of the service.
        sig { returns(String) }
        def description; end
        # Denormalized from the parent Provider. If a Provider's partition changes, re-sync its services.
        # proto3 scalar defaults apply: if unset, this value is `false`.
        sig { returns(T::Boolean) }
        def development; end
        # Group the service belongs to, used to organize related services.
        sig { returns(T.nilable(String)) }
        def group; end
        # Unique identifier for the provider service.
        sig { returns(String) }
        def id; end
        # Kind of the service.
        sig { returns(String) }
        def kind; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # URL of additional context about the service intended for LLM consumption.
        sig { returns(T.nilable(String)) }
        def llm_context; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Pricing details for the service.
        sig { returns(Pricing) }
        def pricing; end
        # Identifier of the provider that offers this service.
        sig { returns(String) }
        def provider; end
        # Human-readable name of the provider that offers this service.
        sig { returns(String) }
        def provider_name; end
        # Scope of the service.
        sig { returns(String) }
        def scope; end
        # Identifier of the service, unique within its provider.
        sig { returns(String) }
        def service_id; end
        # Deprecated: use allowed_updates instead.
        sig { returns(T::Array[String]) }
        def updateable_to; end
      end
    end
  end
end