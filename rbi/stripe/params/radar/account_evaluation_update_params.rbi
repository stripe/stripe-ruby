# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class AccountEvaluationUpdateParams < ::Stripe::RequestParams
      class LoginFailed < ::Stripe::RequestParams
        # The reason why this login failed.
        sig { returns(String) }
        def reason; end
        sig { params(_reason: String).returns(String) }
        def reason=(_reason); end
        sig { params(reason: String).void }
        def initialize(reason: nil); end
      end
      class LoginSucceeded < ::Stripe::RequestParams
        # An optional qualification for a login success.
        sig { returns(T.nilable(String)) }
        def qualification; end
        sig { params(_qualification: T.nilable(String)).returns(T.nilable(String)) }
        def qualification=(_qualification); end
        sig { params(qualification: T.nilable(String)).void }
        def initialize(qualification: nil); end
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
      class RegistrationSucceeded < ::Stripe::RequestParams
        # An optional qualification for a registration success.
        sig { returns(T.nilable(String)) }
        def qualification; end
        sig { params(_qualification: T.nilable(String)).returns(T.nilable(String)) }
        def qualification=(_qualification); end
        sig { params(qualification: T.nilable(String)).void }
        def initialize(qualification: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Event payload for login_failed.
      sig { returns(T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::LoginFailed)) }
      def login_failed; end
      sig {
        params(_login_failed: T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::LoginFailed)).returns(T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::LoginFailed))
       }
      def login_failed=(_login_failed); end
      # Event payload for login_succeeded.
      sig { returns(T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::LoginSucceeded)) }
      def login_succeeded; end
      sig {
        params(_login_succeeded: T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::LoginSucceeded)).returns(T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::LoginSucceeded))
       }
      def login_succeeded=(_login_succeeded); end
      # Event payload for registration_failed.
      sig { returns(T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::RegistrationFailed)) }
      def registration_failed; end
      sig {
        params(_registration_failed: T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::RegistrationFailed)).returns(T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::RegistrationFailed))
       }
      def registration_failed=(_registration_failed); end
      # Event payload for registration_succeeded.
      sig {
        returns(T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::RegistrationSucceeded))
       }
      def registration_succeeded; end
      sig {
        params(_registration_succeeded: T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::RegistrationSucceeded)).returns(T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::RegistrationSucceeded))
       }
      def registration_succeeded=(_registration_succeeded); end
      # The type of event to report.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(expand: T.nilable(T::Array[String]), login_failed: T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::LoginFailed), login_succeeded: T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::LoginSucceeded), registration_failed: T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::RegistrationFailed), registration_succeeded: T.nilable(::Stripe::Radar::AccountEvaluationUpdateParams::RegistrationSucceeded), type: String).void
       }
      def initialize(
        expand: nil,
        login_failed: nil,
        login_succeeded: nil,
        registration_failed: nil,
        registration_succeeded: nil,
        type: nil
      ); end
    end
  end
end