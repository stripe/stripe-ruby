require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class LoginLinkTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:login_link)

    setup do
      account_fixture = API_FIXTURES.fetch(:account)
      account_fixture = account_fixture.merge(
        'login_links' => {
          'data' => [],
          'has_more' => false,
          'object' => 'list',
          'url' =>  "/v1/accounts/#{account_fixture[:id]}/login_links"
        }
      )
      @account = Stripe::Account.construct_from(account_fixture)
    end

    should "not be retrievable" do
      assert_raises NotImplementedError do
        Stripe::LoginLink.retrieve('foo')
      end
    end

    should "be creatable" do
      stub_request(:post, "#{Stripe.api_base}/v1/accounts/#{@account.id}/login_links").
        to_return(body: JSON.generate(FIXTURE))

      login_link = @account.login_links.create
      assert_requested :post,
        "#{Stripe.api_base}/v1/accounts/#{@account.id}/login_links"
      assert login_link.kind_of?(Stripe::LoginLink)
    end
  end
end
