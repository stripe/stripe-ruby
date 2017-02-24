require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class RecipientCardTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:source)

    setup do
      @recipient =
        Stripe::Recipient.retrieve(API_FIXTURES.fetch(:transfer_recipient)[:id])
    end

    should "be listable" do
      cards = @recipient.cards.list
      assert cards.data.kind_of?(Array)
      assert cards.data[0].kind_of?(Stripe::Card)
    end

    should "be creatable" do
      card = @recipient.cards.create(
        card: API_FIXTURES.fetch(:token)[:id]
      )
      assert_requested :post, "#{Stripe.api_base}/v1/recipients/#{@recipient.id}/cards"
      assert card.kind_of?(Stripe::Card)
    end

    should "be deletable" do
      card = Stripe::Card.construct_from(FIXTURE.merge(recipient: @recipient.id))
      card = card.delete
      assert_requested :delete, "#{Stripe.api_base}/v1/recipients/#{@recipient.id}/cards/#{FIXTURE[:id]}"
      assert card.kind_of?(Stripe::Card)
    end

    should "be saveable" do
      card = Stripe::Card.construct_from(FIXTURE.merge(recipient: @recipient.id))
      card.metadata['key'] = 'value'
      card.save
      assert_requested :post, "#{Stripe.api_base}/v1/recipients/#{@recipient.id}/cards/#{FIXTURE[:id]}"
    end
  end
end
