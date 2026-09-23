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
          # Attribute for field direction
          attr_reader :direction
          # Attribute for field service
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
            # Attribute for field at_most
            attr_reader :at_most

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Attribute for field count
          attr_reader :count
          # Attribute for field mutual_exclusion_allowed_updates
          attr_reader :mutual_exclusion_allowed_updates
          # Attribute for field type
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
                # Attribute for field description
                attr_reader :description
                # Attribute for field freeform
                attr_reader :freeform
                # Attribute for field type
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Attribute for field is_default
              attr_reader :is_default
              # Attribute for field paid
              attr_reader :paid
              # Attribute for field parent_services
              attr_reader :parent_services
              # Attribute for field type
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = { paid: Paid }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Attribute for field options
            attr_reader :options

            def self.inner_class_types
              @inner_class_types = { options: Option }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Paid < ::Stripe::StripeObject
            # Attribute for field description
            attr_reader :description
            # Attribute for field freeform
            attr_reader :freeform
            # Attribute for field type
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class PaidPricing < ::Stripe::StripeObject
            # Attribute for field configuration
            attr_reader :configuration
            # Attribute for field description
            attr_reader :description
            # Attribute for field freeform
            attr_reader :freeform
            # Attribute for field is_default
            attr_reader :is_default
            # Attribute for field type
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Attribute for field component
          attr_reader :component
          # Legacy compatibility field for top-level paid pricing.
          # Mirrors the single paid pricing entry when only one exists, or the entry marked
          # `is_default`. If multiple paid pricing entries exist and none is default, this field
          # is unset.
          attr_reader :paid
          # Canonical top-level paid pricing entries for this service.
          # When multiple entries are present, callers should read this field instead of `paid`.
          attr_reader :paid_pricing
          # Attribute for field type
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
