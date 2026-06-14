# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class ConnectionSessionCreateParams < ::Stripe::RequestParams
        # The Account the ConnectionSession will create a connection for.
        attr_accessor :account
        # The Connection types that the ConnectionSession is allowed to establish.
        attr_accessor :allowed_connection_types
        # The access that should be collected with the ConnectionSession.
        attr_accessor :requested_access

        def initialize(account: nil, allowed_connection_types: nil, requested_access: nil)
          @account = account
          @allowed_connection_types = allowed_connection_types
          @requested_access = requested_access
        end
      end
    end
  end
end
