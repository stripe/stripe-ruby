# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      # The `ProviderServiceDetail` resource represents a service offered by a
      # provider in the catalog.
      class ProviderServiceDetail < APIResource
        OBJECT_NAME = "v2.provisioning.provider_service_detail"
        def self.object_name
          "v2.provisioning.provider_service_detail"
        end

        class AllowedUpdate < ::Stripe::StripeObject
          # Whether the target service appears in upgrade flows, downgrade flows, or both.
          attr_reader :direction
          # Identifier of a service to which a resource can be updated.
          attr_reader :service

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
            attr_reader :at_most

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Limit on the number of active resources for the service.
          attr_reader :count
          # Whether provisioning is blocked when an allowed-update target is active in the same scope.
          attr_reader :mutual_exclusion_allowed_updates
          # Kind of constraint represented by this entry.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { count: Count }
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
                attr_reader :description
                # Provider-supplied pricing terms, set when `type` is `freeform`.
                attr_reader :freeform
                # Kind of pricing represented by this entry.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Whether this option applies when no parent-service-specific option matches.
              attr_reader :is_default
              # Pricing details for this option, set when `type` is `paid`.
              attr_reader :paid
              # Identifiers of active parent services for which this option applies.
              attr_reader :parent_services
              # Whether the component is free or paid when this option applies.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = { paid: Paid }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Pricing options selected according to the resource's active parent services.
            attr_reader :options

            def self.inner_class_types
              @inner_class_types = { options: Option }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Paid < ::Stripe::StripeObject
            # Additional display information about the price.
            attr_reader :description
            # Provider-supplied pricing terms, set when `type` is `freeform`.
            attr_reader :freeform
            # Kind of pricing represented by this entry.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class PaidPricing < ::Stripe::StripeObject
            # Service configuration values for which this pricing entry applies.
            attr_reader :configuration
            # Additional display information about the price.
            attr_reader :description
            # Provider-supplied pricing terms, set when `type` is `freeform`.
            attr_reader :freeform
            # Whether this entry is the fallback when no configuration-specific entry matches.
            attr_reader :is_default
            # Kind of pricing represented by this entry.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Parent-service-dependent pricing details, set when `type` is `component`.
          attr_reader :component
          # Legacy compatibility field for top-level paid pricing.
          # Mirrors the single paid pricing entry when only one exists, or the entry marked
          # `is_default`. If multiple paid pricing entries exist and none is default, this field
          # is unset.
          attr_reader :paid
          # Canonical top-level paid pricing entries for this service.
          # When multiple entries are present, callers should read this field instead of `paid`.
          attr_reader :paid_pricing
          # Pricing model for the service: free, paid, or dependent on a parent service.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { component: Component, paid: Paid, paid_pricing: PaidPricing }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Updates allowed for resources using this service.
        attr_reader :allowed_updates
        # Availability of the service.
        attr_reader :availability
        # Categories the service belongs to.
        attr_reader :categories
        # Schema describing the configuration accepted by this service.
        attr_reader :configuration_schema
        # Constraints on resources using this service.
        attr_reader :constraints
        # Time at which the service was created.
        attr_reader :created
        # Description of the service.
        attr_reader :description
        # Denormalized from the parent Provider. If a Provider's partition changes, re-sync its services.
        # proto3 scalar defaults apply: if unset, this value is `false`.
        attr_reader :development
        # Group the service belongs to, used to organize related services.
        attr_reader :group
        # Unique identifier for the provider service.
        attr_reader :id
        # Kind of the service.
        attr_reader :kind
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # URL of additional context about the service intended for LLM consumption.
        attr_reader :llm_context
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Pricing details for the service.
        attr_reader :pricing
        # Identifier of the provider that offers this service.
        attr_reader :provider
        # Human-readable name of the provider that offers this service.
        attr_reader :provider_name
        # Scope of the service.
        attr_reader :scope
        # Identifier of the service, unique within its provider.
        attr_reader :service_id
        # Deprecated: use allowed_updates instead.
        attr_reader :updateable_to

        def self.inner_class_types
          @inner_class_types = {
            allowed_updates: AllowedUpdate,
            constraints: Constraint,
            pricing: Pricing,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
