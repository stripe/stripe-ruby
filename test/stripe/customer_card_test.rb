require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CustomerCardTest < Test::Unit::TestCase
    CUSTOMER_CARD_URL = '/v1/customers/make_customer/cards/make_card'

    def customer
      @mock.expects(:get).once.returns(make_response(make_customer))
      Stripe::Customer.retrieve('make_customer')
    end

    should "customer cards should be listable" do
      c = customer
      @mock.expects(:get).once.returns(make_response(make_card_array(customer.id)))
      cards = c.cards.all.data
      assert cards.kind_of? Array
      assert cards[0].kind_of? Stripe::Card
    end

    should "customer cards should have the correct url" do
      c = customer
      @mock.expects(:get).once.returns(make_response(make_card(
        :id => 'make_card',
        :customer => 'make_customer'
      )))
      card = c.cards.retrieve('card')
      assert_equal CUSTOMER_CARD_URL, card.url
    end

    should "customer cards should be deletable" do
      c = customer
      @mock.expects(:get).once.returns(make_response(make_card))
      @mock.expects(:delete).once.returns(make_response(make_card(:deleted => true)))
      card = c.cards.retrieve('card')
      card.delete
      assert card.deleted
    end

    should "customer cards should be updateable" do
      c = customer
      @mock.expects(:get).once.returns(make_response(make_card(:exp_year => "2000")))
      @mock.expects(:post).once.returns(make_response(make_card(:exp_year => "2100")))
      card = c.cards.retrieve('card')
      assert_equal "2000", card.exp_year
      card.exp_year = "2100"
      card.save
      assert_equal "2100", card.exp_year
    end

    should "create should return a new customer card" do
      c = customer
      @mock.expects(:post).once.returns(make_response(make_card(:id => "make_card")))
      card = c.cards.create(:card => "tok_41YJ05ijAaWaFS")
      assert_equal "make_card", card.id
    end
  end
end
