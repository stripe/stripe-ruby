# frozen_string_literal: true

require File.expand_path("test_helper", __dir__)

module Stripe
  class AwsWorkloadIdentityTest < Test::Unit::TestCase
    context "#provider" do
      should "be aws" do
        assert_equal "aws", WorkloadIdentity::AwsWorkloadIdentity.new.provider
      end
    end

    context "#identity_assertion" do
      should "request a web identity token for the fixed Stripe audience and return it" do
        fake_client = mock
        fake_response = mock
        fake_response.expects(:web_identity_token).returns("fake-id-token")
        fake_client.expects(:get_web_identity_token)
                   .with(audience: [WorkloadIdentity::AUDIENCE], signing_algorithm: "ES384")
                   .returns(fake_response)

        Aws::STS::Client.expects(:new).returns(fake_client)

        assert_equal "fake-id-token", WorkloadIdentity::AwsWorkloadIdentity.new.identity_assertion
      end

      should "wrap an STS failure in an actionable error with the cause preserved" do
        fake_client = mock
        original_error = Aws::STS::Errors::ServiceError.new(nil, "no credentials")
        fake_client.expects(:get_web_identity_token).raises(original_error)

        Aws::STS::Client.expects(:new).returns(fake_client)

        error = assert_raise(WorkloadIdentity::Error) do
          WorkloadIdentity::AwsWorkloadIdentity.new.identity_assertion
        end
        assert_match(/sts:GetWebIdentityToken failed/, error.message)
        assert_equal original_error, error.cause
      end

      [nil, ""].each do |blank_token|
        should "raise if STS returns a #{blank_token.inspect} web identity token" do
          fake_client = mock
          fake_response = mock
          fake_response.expects(:web_identity_token).returns(blank_token)
          fake_client.expects(:get_web_identity_token).returns(fake_response)

          Aws::STS::Client.expects(:new).returns(fake_client)

          assert_raise(WorkloadIdentity::Error) do
            WorkloadIdentity::AwsWorkloadIdentity.new.identity_assertion
          end
        end
      end
    end

    context "with a custom audience, signing algorithm, and STS client option" do
      should "use them when requesting the web identity token" do
        fake_client = mock
        fake_response = mock
        fake_response.expects(:web_identity_token).returns("fake-id-token")
        fake_client.expects(:get_web_identity_token)
                   .with(audience: ["custom-audience"], signing_algorithm: "RS256")
                   .returns(fake_response)

        Aws::STS::Client.expects(:new).with(region: "us-east-1").returns(fake_client)

        identity = WorkloadIdentity::AwsWorkloadIdentity.new(
          audience: "custom-audience",
          signing_algorithm: "RS256",
          region: "us-east-1"
        )
        assert_equal "fake-id-token", identity.identity_assertion
      end
    end
  end
end
