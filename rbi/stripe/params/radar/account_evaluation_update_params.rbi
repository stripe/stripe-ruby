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
      class RegistrationFailed < ::Stripe::RequestParams
        # The reason why this registration failed.
        sig { returns(String) }
        def reason; end
        sig { params(_reason: String).returns(String) }
        def reason=(_reason); end
        sig { params(reason: String).void }
        def initialize(reason: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Event payload for login_failed.
      sig { returns(T.nilable(Radar::AccountEvaluationUpdateParams::LoginFailed)) }
      def login_failed; end
      sig {
        params(_login_failed: T.nilable(Radar::AccountEvaluationUpdateParams::LoginFailed)).returns(T.nilable(Radar::AccountEvaluationUpdateParams::LoginFailed))
       }
      def login_failed=(_login_failed); end
      # Event payload for registration_failed.
      sig { returns(T.nilable(Radar::AccountEvaluationUpdateParams::RegistrationFailed)) }
      def registration_failed; end
      sig {
        params(_registration_failed: T.nilable(Radar::AccountEvaluationUpdateParams::RegistrationFailed)).returns(T.nilable(Radar::AccountEvaluationUpdateParams::RegistrationFailed))
       }
      def registration_failed=(_registration_failed); end
      # The type of event to report.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(expand: T.nilable(T::Array[String]), login_failed: T.nilable(Radar::AccountEvaluationUpdateParams::LoginFailed), registration_failed: T.nilable(Radar::AccountEvaluationUpdateParams::RegistrationFailed), type: String).void
       }
      def initialize(expand: nil, login_failed: nil, registration_failed: nil, type: nil); end
    end
  end
end