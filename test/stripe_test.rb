require File.expand_path('../test_helper', __FILE__)

class StripeTest < Test::Unit::TestCase
  should "warn that #refresh_from is deprecated" do
    old_stderr = $stderr
    $stderr = StringIO.new
    begin
      Stripe.uri_encode({})
      message = "NOTE: Stripe.uri_encode is deprecated; use " +
        "Stripe::Util#encode_parameters instead"
      assert_match Regexp.new(message), $stderr.string
    ensure
      $stderr = old_stderr
    end
  end
end
