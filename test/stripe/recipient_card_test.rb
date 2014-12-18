require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class RecipientCardTest < Test::Unit::TestCase
    RECIPIENT_CARD_URL = '/v1/recipients/make_recipient/cards/make_card'

    def recipient
      @mock.expects(:get).once.returns(make_response(make_recipient))
      Stripe::Recipient.retrieve('make_recipient')
    end

    should "recipient cards should be listable" do
      c = recipient
      @mock.expects(:get).once.returns(make_response(make_card_array(recipient.id)))
      cards = c.cards.all.data
      assert cards.kind_of? Array
      assert cards[0].kind_of? Stripe::Card
    end

    should "recipient cards should have the correct url" do
      c = recipient
      @mock.expects(:get).once.returns(make_response(make_card(
        :id => 'make_card',
        :recipient => 'make_recipient'
      )))
      card = c.cards.retrieve('card')
      assert_equal RECIPIENT_CARD_URL, card.url
    end

    should "recipient cards should be deletable" do
      c = recipient
      @mock.expects(:get).once.returns(make_response(make_card))
      @mock.expects(:delete).once.returns(make_response(make_card(:deleted => true)))
      card = c.cards.retrieve('card')
      card.delete
      assert card.deleted
    end

    should "recipient cards should be updateable" do
      c = recipient
      @mock.expects(:get).once.returns(make_response(make_card(:exp_year => "2000")))
      @mock.expects(:post).once.returns(make_response(make_card(:exp_year => "2100")))
      card = c.cards.retrieve('card')
      assert_equal "2000", card.exp_year
      card.exp_year = "2100"
      card.save
      assert_equal "2100", card.exp_year
    end

    should "create should return a new recipient card" do
      c = recipient
      @mock.expects(:post).once.returns(make_response(make_card(:id => "make_card")))
      card = c.cards.create(:card => "tok_41YJ05ijAaWaFS")
      assert_equal "make_card", card.id
    end
  end
end
