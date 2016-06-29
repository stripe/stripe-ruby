require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ChargeTest < Test::Unit::TestCase
    should "charges should be listable" do
      @mock.expects(:get).once.returns(make_response(make_charge_array))
      c = Stripe::Charge.list
      assert c.data.kind_of? Array
      c.each do |charge|
        assert charge.kind_of?(Stripe::Charge)
      end
    end

    should "charges should be refundable" do
      c = Stripe::Charge.construct_from(make_charge)
      @mock.expects(:get).never
      @mock.expects(:post).once.returns(make_response(make_refund(:charge => c)))
      r = c.refunds.create
      assert r.is_a?(Stripe::Refund)
    end

    should "charges should be refundable for old API versions" do
      # "refunds" was a plain array in old API versions but is not a Stripe
      # list (see the implementation of `make_charge` for a current example)
      data = make_charge.merge!(:refunds => [])
      c = Stripe::Charge.construct_from(data)
      @mock.expects(:get).never
      @mock.expects(:post).once.
        with("#{Stripe.api_base}/v1/charges/#{c.id}/refund", nil, '').
        returns(make_response(data.merge(:refunded => true)))
      c = c.refund
      assert c.is_a?(Stripe::Charge)
      assert c.refunded
    end

    should "charges should not be deletable" do
      assert_raises NoMethodError do
        @mock.expects(:get).once.returns(make_response(make_charge))
        c = Stripe::Charge.retrieve("test_charge")
        c.delete
      end
    end

    should "charges should be updateable" do
      @mock.expects(:post).once.
        with('https://api.stripe.com/v1/charges/test_charge', nil, 'metadata[foo]=bar').
        returns(make_response(make_charge(metadata: {'foo' => 'bar'})))
      c = Stripe::Charge.update("test_charge", metadata: {foo: 'bar'})
      assert_equal('bar', c.metadata['foo'])
    end

    should "charges should be saveable" do
      @mock.expects(:get).once.returns(make_response(make_charge))
      @mock.expects(:post).once.returns(make_response(make_charge))
      c = Stripe::Charge.new("test_charge")
      c.refresh
      c.mnemonic = "New charge description"
      c.save
    end

    should "charges should be able to be marked as fraudulent" do
      @mock.expects(:get).once.returns(make_response(make_charge))
      @mock.expects(:post).once.returns(make_response(make_charge))
      c = Stripe::Charge.new("test_charge")
      c.refresh
      c.mark_as_fraudulent
    end

    should "charges should be able to be marked as safe" do
      @mock.expects(:get).once.returns(make_response(make_charge))
      @mock.expects(:post).once.returns(make_response(make_charge))
      c = Stripe::Charge.new("test_charge")
      c.refresh
      c.mark_as_safe
    end

    should "charges should have Card objects associated with their Card property" do
      @mock.expects(:get).once.returns(make_response(make_charge))
      c = Stripe::Charge.retrieve("test_charge")
      assert c.card.kind_of?(Stripe::StripeObject) && c.card.object == 'card'
    end

    should "charges should have Outcome objects associated with their outcome property" do
      @mock.expects(:get).once.returns(make_response(make_charge))
      c = Stripe::Charge.retrieve("test_charge")
      assert c.outcome.kind_of?(Stripe::StripeObject) && c.outcome.type == 'authorized'
    end

    should "execute should return a new, fully executed charge when passed correct `card` parameters" do
      @mock.expects(:post).with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/charges" && api_key.nil? && CGI.parse(params) == {
          'currency' => ['usd'], 'amount' => ['100'],
          'card[exp_year]' => ['2012'],
          'card[number]' => ['4242424242424242'],
          'card[exp_month]' => ['11']
        }
      end.once.returns(make_response(make_charge))

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

    should "execute should return a new, fully executed charge when passed correct `source` parameters" do
      @mock.expects(:post).with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/charges" && api_key.nil? && CGI.parse(params) == {
          'currency' => ['usd'], 'amount' => ['100'],
          'source' => ['btcrcv_test_receiver']
        }
      end.once.returns(make_response(make_charge))

      c = Stripe::Charge.create({
        :amount => 100,
        :source => 'btcrcv_test_receiver',
        :currency => "usd"
      })
      assert c.paid
    end

    should "properly handle an array or dictionaries" do
      @mock.expects(:post).with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/charges" && api_key.nil? && CGI.parse(params) == {
          'currency' => ['usd'], 'amount' => ['100'],
          'source' => ['btcrcv_test_receiver'],
          'level3[][red]' => ['firstred', 'another'],
          'level3[][one]' => ['fish'],
        }
      end.once.returns(make_response(make_charge))

      c = Stripe::Charge.create({
        :amount => 100,
        :source => 'btcrcv_test_receiver',
        :currency => "usd",
        :level3 => [{:red => 'firstred'}, {:one => 'fish', :red => 'another'}]
      })
      assert c.paid
    end
  end
end
