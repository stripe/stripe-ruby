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

      class LoginSucceeded < ::Stripe::RequestParams
        # An optional qualification for a login success.
        attr_accessor :qualification

        def initialize(qualification: nil)
          @qualification = qualification
        end
      end

      class RegistrationFailed < ::Stripe::RequestParams
        # The reason why this registration failed.
        attr_accessor :reason

        def initialize(reason: nil)
          @reason = reason
        end
      end

      class RegistrationSucceeded < ::Stripe::RequestParams
        # An optional qualification for a registration success.
        attr_accessor :qualification

        def initialize(qualification: nil)
          @qualification = qualification
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Event payload for login_failed.
      attr_accessor :login_failed
      # Event payload for login_succeeded.
      attr_accessor :login_succeeded
      # Event payload for registration_failed.
      attr_accessor :registration_failed
      # Event payload for registration_succeeded.
      attr_accessor :registration_succeeded
      # The type of event to report.
      attr_accessor :type

      def initialize(
        expand: nil,
        login_failed: nil,
        login_succeeded: nil,
        registration_failed: nil,
        registration_succeeded: nil,
        type: nil
      )
        @expand = expand
        @login_failed = login_failed
        @login_succeeded = login_succeeded
        @registration_failed = registration_failed
        @registration_succeeded = registration_succeeded
        @type = type
      end
    end
  end
end
