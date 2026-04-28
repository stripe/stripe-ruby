# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an extension run fails.
    class V2ExtendExtensionRunFailedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.extend.extension_run.failed"
      end

      class V2ExtendExtensionRunFailedEventData < ::Stripe::StripeObject
        class Error < ::Stripe::StripeObject
          # URL to the extension run in Workbench for deeper debugging.
          attr_reader :debug_url
          # Detailed error message.
          attr_reader :message

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Extension < ::Stripe::StripeObject
          # The extension's unique identifier.
          attr_reader :id
          # The extension method called where the failure occurred.
          attr_reader :method
          # Human-readable name of the extension.
          attr_reader :name
          # Version of the extension that failed.
          attr_reader :version

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Details about the error that occurred.
        attr_reader :error
        # Details about the extension that failed.
        attr_reader :extension
        # The ID of the extension run that failed.
        attr_reader :extension_run_id

        def self.inner_class_types
          @inner_class_types = { error: Error, extension: Extension }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2ExtendExtensionRunFailedEventData }
      end
      attr_reader :data
    end

    # Occurs when an extension run fails.
    class V2ExtendExtensionRunFailedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.extend.extension_run.failed"
      end
    end
  end
end
