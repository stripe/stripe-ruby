# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      # The ConnectionSession resource.
      class ConnectionSession < APIResource
        OBJECT_NAME = "v2.core.connection_session"
        def self.object_name
          "v2.core.connection_session"
        end

        class Connection < ::Stripe::StripeObject
          # The access granted to the Account by the Connection.
          attr_reader :granted_access
          # The type of the Connection.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The Account this Connection Session was created for.
        attr_reader :account
        # The Connection types that the Connection Session is allowed to establish.
        attr_reader :allowed_connection_types
        # The client secret of this Connection Session. Used on the client to set up secure access to the given Account.
        attr_reader :client_secret
        # The Connection created by the ConnectionSession.
        attr_reader :connection
        # Time at which the ConnectionSession was created.
        attr_reader :created
        # The unique identifier for this ConnectionSession.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The access that is collected with the Connection Session.
        attr_reader :requested_access
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = { connection: Connection }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
