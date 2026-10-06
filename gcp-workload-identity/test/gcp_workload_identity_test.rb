# frozen_string_literal: true

require File.expand_path("test_helper", __dir__)

module Stripe
  class GcpWorkloadIdentityTest < Test::Unit::TestCase
    context "#provider" do
      should "be gcp" do
        assert_equal "gcp", GcpWorkloadIdentity::GcpWorkloadIdentity.new.provider
      end
    end

    context "#identity_assertion" do
      should "request an ID token for the fixed Stripe audience and return it" do
        fake_creds = mock
        fake_creds.expects(:fetch_access_token!)
        fake_creds.expects(:id_token).returns("fake-id-token")

        Google::Auth::GCECredentials.expects(:new)
                                    .with(token_type: :id_token,
                                          target_audience: GcpWorkloadIdentity::AUDIENCE)
                                    .returns(fake_creds)

        assert_equal "fake-id-token", GcpWorkloadIdentity::GcpWorkloadIdentity.new.identity_assertion
      end

      should "wrap a metadata server failure in an actionable error with the cause preserved" do
        fake_creds = mock
        original_error = Signet::AuthorizationError.new("no metadata server")
        fake_creds.expects(:fetch_access_token!).raises(original_error)

        Google::Auth::GCECredentials.expects(:new).returns(fake_creds)

        error = assert_raise(GcpWorkloadIdentity::Error) do
          GcpWorkloadIdentity::GcpWorkloadIdentity.new.identity_assertion
        end
        assert_match(/Compute Engine or Cloud Run/, error.message)
        assert_equal original_error, error.cause
      end

      should "raise if the metadata server returns no identity token" do
        fake_creds = mock
        fake_creds.expects(:fetch_access_token!)
        fake_creds.expects(:id_token).returns(nil)

        Google::Auth::GCECredentials.expects(:new).returns(fake_creds)

        assert_raise(GcpWorkloadIdentity::Error) do
          GcpWorkloadIdentity::GcpWorkloadIdentity.new.identity_assertion
        end
      end

      should "raise if the metadata server returns an empty identity token" do
        fake_creds = mock
        fake_creds.expects(:fetch_access_token!)
        fake_creds.expects(:id_token).returns("")

        Google::Auth::GCECredentials.expects(:new).returns(fake_creds)

        assert_raise(GcpWorkloadIdentity::Error) do
          GcpWorkloadIdentity::GcpWorkloadIdentity.new.identity_assertion
        end
      end
    end
  end
end
