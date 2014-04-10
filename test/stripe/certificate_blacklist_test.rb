require File.expand_path('../../test_helper', __FILE__)

module Stripe

  class CertificateBlacklistTest < Test::Unit::TestCase
    should "not trust revoked certificates" do
      assert_raises(Stripe::APIConnectionError) {
        Stripe::CertificateBlacklist.check_ssl_cert("https://revoked.stripe.com:444",
                                                    Stripe::DEFAULT_CA_BUNDLE_PATH)
      }
    end

    should "trust api.stripe.com" do
      assert_true Stripe::CertificateBlacklist.check_ssl_cert("https://api.stripe.com",
                                                              Stripe::DEFAULT_CA_BUNDLE_PATH)
    end
  end
end
