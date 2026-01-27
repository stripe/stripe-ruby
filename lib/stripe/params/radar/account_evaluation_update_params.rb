# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class AccountEvaluationUpdateParams < ::Stripe::RequestParams
      class LoginFailed < ::Stripe::RequestParams
        # The reason why this login failed.
        attr_accessor :reason

        def initialize(reason: nil)
          @reason = reason
        end
      end

      class RegistrationFailed < ::Stripe::RequestParams
        # The reason why this registration failed.
        attr_accessor :reason

        def initialize(reason: nil)
          @reason = reason
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Event payload for login_failed.
      attr_accessor :login_failed
      # Event payload for registration_failed.
      attr_accessor :registration_failed
      # The type of event to report.
      attr_accessor :type

      def initialize(expand: nil, login_failed: nil, registration_failed: nil, type: nil)
        @expand = expand
        @login_failed = login_failed
        @registration_failed = registration_failed
        @type = type
      end
    end
  end
end
