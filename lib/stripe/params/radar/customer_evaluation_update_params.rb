# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class CustomerEvaluationUpdateParams < ::Stripe::RequestParams
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

      class RegistrationSuccess < ::Stripe::RequestParams
        # The ID of a Customer to attach to an entity-less registration evaluation.
        attr_accessor :customer

        def initialize(customer: nil)
          @customer = customer
        end
      end
      # The ID of a Customer to attach to an entity-less registration evaluation.
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Data for a failed login event.
      attr_accessor :login_failed
      # Data for a failed registration event.
      attr_accessor :registration_failed
      # Data for a successful registration event.
      attr_accessor :registration_success
      # The outcome status of the evaluation: allowed, restricted, or blocked.
      attr_accessor :status
      # The type of event to report on the customer evaluation.
      attr_accessor :type

      def initialize(
        customer: nil,
        expand: nil,
        login_failed: nil,
        registration_failed: nil,
        registration_success: nil,
        status: nil,
        type: nil
      )
        @customer = customer
        @expand = expand
        @login_failed = login_failed
        @registration_failed = registration_failed
        @registration_success = registration_success
        @status = status
        @type = type
      end
    end
  end
end
