# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class ConnectionSessionCreateParams < ::Stripe::RequestParams
        # The Account the ConnectionSession will create a connection for.
        sig { returns(String) }
        def account; end
        sig { params(_account: String).returns(String) }
        def account=(_account); end
        # The Connection types that the ConnectionSession is allowed to establish.
        sig { returns(T.nilable(T::Array[String])) }
        def allowed_connection_types; end
        sig {
          params(_allowed_connection_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def allowed_connection_types=(_allowed_connection_types); end
        # The access that should be collected with the ConnectionSession.
        sig { returns(T.nilable(T::Array[String])) }
        def requested_access; end
        sig {
          params(_requested_access: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def requested_access=(_requested_access); end
        sig {
          params(account: String, allowed_connection_types: T.nilable(T::Array[String]), requested_access: T.nilable(T::Array[String])).void
         }
        def initialize(account: nil, allowed_connection_types: nil, requested_access: nil); end
      end
    end
  end
end