# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    class CreditUnderwritingRecordCreateFromApplicationParams < ::Stripe::RequestParams
      class Application < ::Stripe::RequestParams
        # The channel through which the applicant has submitted their application. Defaults to `online`.
        sig { returns(T.nilable(String)) }
        def application_method; end
        sig { params(_application_method: T.nilable(String)).returns(T.nilable(String)) }
        def application_method=(_application_method); end
        # Scope of demand made by the applicant.
        sig { returns(String) }
        def purpose; end
        sig { params(_purpose: String).returns(String) }
        def purpose=(_purpose); end
        # Date when the applicant submitted their application.
        sig { returns(Integer) }
        def submitted_at; end
        sig { params(_submitted_at: Integer).returns(Integer) }
        def submitted_at=(_submitted_at); end
        sig {
          params(application_method: T.nilable(String), purpose: String, submitted_at: Integer).void
         }
        def initialize(application_method: nil, purpose: nil, submitted_at: nil); end
      end
      class CreditUser < ::Stripe::RequestParams
        # Email of the applicant or accountholder.
        sig { returns(String) }
        def email; end
        sig { params(_email: String).returns(String) }
        def email=(_email); end
        # Full name of the company or person.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        sig { params(email: String, name: String).void }
        def initialize(email: nil, name: nil); end
      end
      # Details about the application submission.
      sig {
        returns(::Stripe::Issuing::CreditUnderwritingRecordCreateFromApplicationParams::Application)
       }
      def application; end
      sig {
        params(_application: ::Stripe::Issuing::CreditUnderwritingRecordCreateFromApplicationParams::Application).returns(::Stripe::Issuing::CreditUnderwritingRecordCreateFromApplicationParams::Application)
       }
      def application=(_application); end
      # Information about the company or person applying or holding the account.
      sig {
        returns(::Stripe::Issuing::CreditUnderwritingRecordCreateFromApplicationParams::CreditUser)
       }
      def credit_user; end
      sig {
        params(_credit_user: ::Stripe::Issuing::CreditUnderwritingRecordCreateFromApplicationParams::CreditUser).returns(::Stripe::Issuing::CreditUnderwritingRecordCreateFromApplicationParams::CreditUser)
       }
      def credit_user=(_credit_user); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      sig {
        params(application: ::Stripe::Issuing::CreditUnderwritingRecordCreateFromApplicationParams::Application, credit_user: ::Stripe::Issuing::CreditUnderwritingRecordCreateFromApplicationParams::CreditUser, expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String])).void
       }
      def initialize(application: nil, credit_user: nil, expand: nil, metadata: nil); end
    end
  end
end