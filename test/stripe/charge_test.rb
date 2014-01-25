require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ChargeTest < Test::Unit::TestCase
    should "charges should be listable" do
      @mock.expects(:get).once.returns(test_response(test_charge_array))
      c = Stripe::Charge.all
      assert c.data.kind_of? Array
      c.each do |charge|
        assert charge.kind_of?(Stripe::Charge)
      end
    end

    should "charges should be refundable" do
      @mock.expects(:get).never
      @mock.expects(:post).once.returns(test_response({:id => "ch_test_charge", :refunded => true}))
      c = Stripe::Charge.new("test_charge")
      c.refund
      assert c.refunded
    end

    should "charges should not be deletable" do
      assert_raises NoMethodError do
        @mock.expects(:get).once.returns(test_response(test_charge))
        c = Stripe::Charge.retrieve("test_charge")
        c.delete
      end
    end

    should "charges should be updateable" do
      @mock.expects(:get).once.returns(test_response(test_charge))
      @mock.expects(:post).once.returns(test_response(test_charge))
      c = Stripe::Charge.new("test_charge")
      c.refresh
      c.mnemonic = "New charge description"
      c.save
    end

    should "charges should have Card objects associated with their Card property" do
      @mock.expects(:get).once.returns(test_response(test_charge))
      c = Stripe::Charge.retrieve("test_charge")
      assert c.card.kind_of?(Stripe::StripeObject) && c.card.object == 'card'
    end

    should "execute should return a new, fully executed charge when passed correct parameters" do
      @mock.expects(:post).with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/charges" && api_key.nil? && CGI.parse(params) == {
          'currency' => ['usd'], 'amount' => ['100'],
          'card[exp_year]' => ['2012'],
          'card[number]' => ['4242424242424242'],
          'card[exp_month]' => ['11']
        }
      end.once.returns(test_response(test_charge))

      c = Stripe::Charge.create({
        :amount => 100,
        :card => {
          :number => "4242424242424242",
          :exp_month => 11,
          :exp_year => 2012,
        },
        :currency => "usd"
      })
      assert c.paid
    end

    context "when specifying per-object credentials" do
      setup do
        Stripe.api_key = "global"
        @api_key = 'sk_test_local'

        @mock.expects(:get).once.returns(test_response(test_charge))
        @charge = Stripe::Charge.retrieve("test_charge")

        Stripe.expects(:execute_request).with do |opts|
          opts[:headers][:authorization] == "Bearer #{@api_key}"
        end.returns(test_response({}))
      end

      teardown do
        Stripe.api_key = "nil"
      end

      should "use the per-object credentials when refunding" do
        @charge.refund({}, @api_key)
      end

      should "use the per-object credentials when capturing" do
        @charge.capture({}, @api_key)
      end

      should "use the per-object credentials when updating a dispute" do
        @charge.update_dispute({}, @api_key)
      end

      should "use the per-object credentials when closing a dispute" do
        @charge.close_dispute(@api_key)
      end
    end
  end
end
