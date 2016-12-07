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

  should "allow ca_bundle_path to be configured" do
    begin
      old = Stripe.ca_bundle_path
      Stripe.ca_bundle_path = "path/to/ca/bundle"
      assert_equal "path/to/ca/bundle", Stripe.ca_bundle_path
    ensure
      Stripe.ca_bundle_path = old
    end
  end

  should "allow max_network_retries to be configured" do
    begin
      old = Stripe.max_network_retries
      Stripe.max_network_retries = 99
      assert_equal 99, Stripe.max_network_retries
    ensure
      Stripe.max_network_retries = old
    end
  end

  should "makes requests with the Stripe-Account header" do
    response = make_account(
      charges_enabled: false,
      details_submitted: false,
      email: "test+bindings@stripe.com"
    )
    Stripe.stripe_account = 'acct_1234'

    Stripe.expects(:execute_request).with(
      has_entry(:headers, has_entry('Stripe-Account', 'acct_1234')),
    ).returns(make_response(response))

    Stripe.request(:post, '/v1/account', 'sk_live12334566')
  end

  context ".ciphers" do
    should "produce a cipher list disallowing TLS 1.0" do
      assert_includes Stripe.ciphers.split(":"), "!TLSv1"
    end

    should "produce a cipher list with sane length" do
      # The list should be longer than the elements that we've added. This is
      # here to protect against a bug that I almost introduced one whereby I
      # set a new array instead of appending to the existing one.
      assert(Stripe.ciphers.split(":").count > 3)
    end
  end
end
