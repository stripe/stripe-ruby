# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class CustomerEvaluationUpdateParams < ::Stripe::RequestParams
      class LoginFailed < ::Stripe::RequestParams
        # The reason why this login failed.
        sig { returns(String) }
        def reason; end
        sig { params(_reason: String).returns(String) }
        def reason=(_reason); end
        sig { params(reason: String).void }
        def initialize(reason: nil); end
      end
      class RegistrationFailed < ::Stripe::RequestParams
        # The reason why this registration failed.
        sig { returns(String) }
        def reason; end
        sig { params(_reason: String).returns(String) }
        def reason=(_reason); end
        sig { params(reason: String).void }
        def initialize(reason: nil); end
      end
      class RegistrationSuccess < ::Stripe::RequestParams
        # Stripe customer ID to attach to an entity-less registration evaluation.
        sig { returns(T.nilable(String)) }
        def customer; end
        sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
        def customer=(_customer); end
        sig { params(customer: T.nilable(String)).void }
        def initialize(customer: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Event payload for login_failed.
      sig { returns(T.nilable(::Stripe::Radar::CustomerEvaluationUpdateParams::LoginFailed)) }
      def login_failed; end
      sig {
        params(_login_failed: T.nilable(::Stripe::Radar::CustomerEvaluationUpdateParams::LoginFailed)).returns(T.nilable(::Stripe::Radar::CustomerEvaluationUpdateParams::LoginFailed))
       }
      def login_failed=(_login_failed); end
      # Event payload for registration_failed.
      sig {
        returns(T.nilable(::Stripe::Radar::CustomerEvaluationUpdateParams::RegistrationFailed))
       }
      def registration_failed; end
      sig {
        params(_registration_failed: T.nilable(::Stripe::Radar::CustomerEvaluationUpdateParams::RegistrationFailed)).returns(T.nilable(::Stripe::Radar::CustomerEvaluationUpdateParams::RegistrationFailed))
       }
      def registration_failed=(_registration_failed); end
      # Event payload for registration_success.
      sig {
        returns(T.nilable(::Stripe::Radar::CustomerEvaluationUpdateParams::RegistrationSuccess))
       }
      def registration_success; end
      sig {
        params(_registration_success: T.nilable(::Stripe::Radar::CustomerEvaluationUpdateParams::RegistrationSuccess)).returns(T.nilable(::Stripe::Radar::CustomerEvaluationUpdateParams::RegistrationSuccess))
       }
      def registration_success=(_registration_success); end
      # The type of event to report.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(expand: T.nilable(T::Array[String]), login_failed: T.nilable(::Stripe::Radar::CustomerEvaluationUpdateParams::LoginFailed), registration_failed: T.nilable(::Stripe::Radar::CustomerEvaluationUpdateParams::RegistrationFailed), registration_success: T.nilable(::Stripe::Radar::CustomerEvaluationUpdateParams::RegistrationSuccess), type: String).void
       }
      def initialize(
        expand: nil,
        login_failed: nil,
        registration_failed: nil,
        registration_success: nil,
        type: nil
      ); end
    end
  end
end