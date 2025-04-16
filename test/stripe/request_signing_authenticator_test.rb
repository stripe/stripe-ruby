# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class RequestSigningAuthenticatorTest < Test::Unit::TestCase
    TEST_AUTH_TOKEN = "keyid"
    TEST_SIGN_LAMBDA = -> {}

    context "initialize" do
      should "raise error if given non-String auth token" do
        assert_raises ArgumentError do
          Stripe::RequestSigningAuthenticator.new(123, TEST_SIGN_LAMBDA)
        end
      end

      should "raise error if given non-lambda sign function" do
        assert_raises ArgumentError do
          Stripe::RequestSigningAuthenticator.new(TEST_AUTH_TOKEN, nil)
        end
      end

      should "create a new authenticator with valid arguments" do
        authenticator = Stripe::RequestSigningAuthenticator.new(TEST_AUTH_TOKEN, TEST_SIGN_LAMBDA)
        assert_equal(authenticator.auth_token, TEST_AUTH_TOKEN)
        assert_equal(authenticator.sign_lambda, TEST_SIGN_LAMBDA)
      end
    end

    context ".authenticate" do
      setup do
        RequestSigningAuthenticator.any_instance.stubs(:created_time).returns(123_456_789)
      end

      should "applies signature for POST requests" do
        signature_bases = []
        sign = lambda { |signature_base|
          signature_bases.push(signature_base)
          [1, 2, 3, 4, 5].pack("C*")
        }

        authenticator = RequestSigningAuthenticator.new(TEST_AUTH_TOKEN, sign)
        headers = { "Content-Type" => "application/json" }
        authenticator.authenticate(:post, headers, '{"string":"String!"}')

        assert_equal("\"content-type\": application/json\n" \
                     "\"content-digest\": sha-256=:HA3i38j+04ac71IzPtG1JK8o4q9sPK0fYPmJHmci5bg=:\n" \
                     "\"stripe-context\": \n" \
                     "\"stripe-account\": \n" \
                     "\"authorization\": STRIPE-V2-SIG keyid\n" \
                     "\"@signature-params\": (\"content-type\" \"content-digest\" \"stripe-context\" \"stripe-account\" \"authorization\");created=123456789",
                     signature_bases[0].force_encoding(Encoding::UTF_8))

        assert_equal('sig1=("content-type" "content-digest" "stripe-context" "stripe-account" "authorization");' \
                     "created=123456789", headers["Signature-Input"])
        assert_equal("sha-256=:HA3i38j+04ac71IzPtG1JK8o4q9sPK0fYPmJHmci5bg=:", headers["Content-Digest"])
        assert_equal("sig1=:AQIDBAU=:", headers["Signature"])
        assert_equal("STRIPE-V2-SIG keyid", headers["Authorization"])
      end

      should "applies signature for DELETE requests" do
        signature_bases = []
        sign = lambda { |signature_base|
          signature_bases.push(signature_base)
          [1, 2, 3, 4, 5].pack("C*")
        }

        authenticator = RequestSigningAuthenticator.new(TEST_AUTH_TOKEN, sign)
        headers = { "Content-Type" => "application/json" }
        authenticator.authenticate(:delete, headers, nil)

        assert_equal("\"content-type\": application/json\n" \
                     "\"content-digest\": sha-256=:47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=:\n" \
                     "\"stripe-context\": \n" \
                     "\"stripe-account\": \n" \
                     "\"authorization\": STRIPE-V2-SIG keyid\n" \
                     "\"@signature-params\": (\"content-type\" \"content-digest\" \"stripe-context\" \"stripe-account\" \"authorization\");created=123456789",
                     signature_bases[0].force_encoding(Encoding::UTF_8))

        assert_equal('sig1=("content-type" "content-digest" "stripe-context" "stripe-account" "authorization");' \
                     "created=123456789", headers["Signature-Input"])
        assert_equal("sha-256=:47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=:", headers["Content-Digest"])
        assert_equal("sig1=:AQIDBAU=:", headers["Signature"])
        assert_equal("STRIPE-V2-SIG keyid", headers["Authorization"])
      end

      should "applies signature for GET requests" do
        signature_bases = []
        sign = lambda { |signature_base|
          signature_bases.push(signature_base)
          [1, 2, 3, 4, 5].pack("C*")
        }

        authenticator = RequestSigningAuthenticator.new(TEST_AUTH_TOKEN, sign)
        headers = {}
        authenticator.authenticate(:get, headers, nil)

        assert_equal("\"stripe-context\": \n" \
                     "\"stripe-account\": \n" \
                     "\"authorization\": STRIPE-V2-SIG keyid\n" \
                     "\"@signature-params\": (\"stripe-context\" \"stripe-account\" \"authorization\");created=123456789",
                     signature_bases[0].force_encoding(Encoding::UTF_8))

        assert_equal('sig1=("stripe-context" "stripe-account" "authorization");' \
                     "created=123456789", headers["Signature-Input"])
        assert_nil(headers["Content-Digest"])
        assert_equal("sig1=:AQIDBAU=:", headers["Signature"])
        assert_equal("STRIPE-V2-SIG keyid", headers["Authorization"])
      end
    end
  end
end
