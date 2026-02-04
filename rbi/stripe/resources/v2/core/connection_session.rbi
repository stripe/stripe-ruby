# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      # The ConnectionSession resource.
      class ConnectionSession < APIResource
        class Connection < ::Stripe::StripeObject
          # The access granted to the Account by the Connection.
          sig { returns(T.nilable(T::Array[String])) }
          def granted_access; end
          # The type of the Connection.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The Account this Connection Session was created for.
        sig { returns(String) }
        def account; end
        # The Connection types that the Connection Session is allowed to establish.
        sig { returns(T.nilable(T::Array[String])) }
        def allowed_connection_types; end
        # The client secret of this Connection Session. Used on the client to set up secure access to the given Account.
        sig { returns(String) }
        def client_secret; end
        # The Connection created by the ConnectionSession.
        sig { returns(T.nilable(Connection)) }
        def connection; end
        # Time at which the ConnectionSession was created.
        sig { returns(String) }
        def created; end
        # The unique identifier for this ConnectionSession.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The access that is collected with the Connection Session.
        sig { returns(T.nilable(T::Array[String])) }
        def requested_access; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end