require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class RecipientCardTest < Test::Unit::TestCase
    setup do
      @recipient = Stripe::Recipient.retrieve("rp_123")
    end

    should "be listable" do
      cards = @recipient.cards.list
      assert cards.data.kind_of?(Array)
      assert cards.data[0].kind_of?(Stripe::Card)
    end

    should "be creatable" do
      card = @recipient.cards.create(
        card: "tok_123"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/recipients/#{@recipient.id}/cards"
      assert card.kind_of?(Stripe::Card)
    end

    should "be deletable" do
      card = Stripe::Card.construct_from({
        id: "card_123",
        recipient: @recipient.id
      })
      card = card.delete
      assert_requested :delete, "#{Stripe.api_base}/v1/recipients/#{@recipient.id}/cards/card_123"
      assert card.kind_of?(Stripe::Card)
    end

    should "be saveable" do
      card = Stripe::Card.construct_from({
        id: "card_123",
        metadata: {},
        recipient: @recipient.id
      })
      card.metadata['key'] = 'value'
      card.save
      assert_requested :post, "#{Stripe.api_base}/v1/recipients/#{@recipient.id}/cards/card_123"
    end
  end
end
