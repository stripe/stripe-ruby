require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class RecipientCardTest < Test::Unit::TestCase
    def recipient
      stub_request(:get, "#{Stripe.api_base}/v1/recipients/test_recipient").
        to_return(body: JSON.generate(make_recipient))
      Stripe::Recipient.retrieve('test_recipient')
    end

    should "recipient cards should be listable" do
      c = recipient

      stub_request(:get, "#{Stripe.api_base}/v1/recipients/#{c.id}/cards").
        to_return(body: JSON.generate(make_recipient_card_array(recipient.id)))
      cards = c.cards.list.data
      assert cards.kind_of? Array
      assert cards[0].kind_of? Stripe::Card
    end

    should "recipient cards should be deletable" do
      c = recipient

      stub_request(:get, "#{Stripe.api_base}/v1/recipients/#{c.id}/cards/card").
        to_return(body: JSON.generate(make_card(:recipient => 'test_recipient')))
      card = c.cards.retrieve('card')

      stub_request(:delete, "#{Stripe.api_base}/v1/recipients/#{card.recipient}/cards/#{card.id}").
        to_return(body: JSON.generate(make_card(:deleted => true)))
      _ = card.delete
    end

    should "recipient cards should be updateable" do
      c = recipient

      stub_request(:get, "#{Stripe.api_base}/v1/recipients/#{c.id}/cards/card").
        to_return(body: JSON.generate(make_card(:recipient => 'test_recipient')))
      card = c.cards.retrieve('card')

      stub_request(:post, "#{Stripe.api_base}/v1/recipients/#{card.recipient}/cards/#{card.id}").
        with(body: { exp_year: "2100" }).
        to_return(body: JSON.generate(make_card))
      card.exp_year = "2100"
      card.save
    end

    should "create should return a new recipient card" do
      c = recipient

      stub_request(:post, "#{Stripe.api_base}/v1/recipients/#{c.id}/cards").
        with(body: { card: "tok_41YJ05ijAaWaFS" }).
        to_return(body: JSON.generate(make_card))
      _ = c.cards.create(:card => "tok_41YJ05ijAaWaFS")
    end
  end
end
