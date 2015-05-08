require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CustomerCardTest < Test::Unit::TestCase
    CUSTOMER_CARD_URL = '/v1/customers/test_customer/sources/test_card'

    def customer
      @mock.expects(:get).once.returns(test_response(test_customer))
      Stripe::Customer.retrieve('test_customer')
    end

    should "customer cards should be listable" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_customer_card_array(customer.id)))
      cards = c.sources.all(:object => "card").data
      assert cards.kind_of? Array
      assert cards[0].kind_of? Stripe::Card
    end

    should "customer cards should have the correct url" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_card(
        :id => 'test_card',
        :customer => 'test_customer'
      )))
      card = c.sources.retrieve('card')
      assert_equal CUSTOMER_CARD_URL, card.url
    end

    should "customer cards should be deletable" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_card))
      @mock.expects(:delete).once.returns(test_response(test_card(:deleted => true)))
      card = c.sources.retrieve('card')
      card.delete
      assert card.deleted
    end

    should "customer cards should be updateable" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_card(:exp_year => "2000")))
      @mock.expects(:post).once.returns(test_response(test_card(:exp_year => "2100")))
      card = c.sources.retrieve('card')
      assert_equal "2000", card.exp_year
      card.exp_year = "2100"
      card.save
      assert_equal "2100", card.exp_year
    end

    should "create should return a new customer card" do
      c = customer
      @mock.expects(:post).once.returns(test_response(test_card(:id => "test_card")))
      card = c.sources.create(:source => "tok_41YJ05ijAaWaFS")
      assert_equal "test_card", card.id
    end

    should "raise if accessing Stripe::Card.retrieve directly" do
      assert_raises NotImplementedError do
        Stripe::Card.retrieve "card_12345"
      end
    end
  end
end
