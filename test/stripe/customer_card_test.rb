require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CustomerCardTest < Test::Unit::TestCase
    def customer
      stub_request(:get, "#{Stripe.api_base}/v1/customers/test_customer").
        to_return(body: make_response(make_customer))
      Stripe::Customer.retrieve('test_customer')
    end

    should "customer cards should be listable" do
      c = customer

      stub_request(:get, "#{Stripe.api_base}/v1/customers/#{c.id}/sources").
        with(query: { object: "card" }).
        to_return(body: make_response(make_customer_card_array(customer.id)))
      cards = c.sources.list(:object => "card").data
      assert cards.kind_of? Array
      assert cards[0].kind_of? Stripe::Card
    end

    should "customer cards should be deletable" do
      c = customer

      stub_request(:get, "#{Stripe.api_base}/v1/customers/#{c.id}/sources/card").
        to_return(body: make_response(make_card))
      card = c.sources.retrieve('card')

      stub_request(:delete, "#{Stripe.api_base}/v1/customers/#{card.customer}/sources/#{card.id}").
        to_return(body: make_response(make_card(:deleted => true)))
      _ =  card.delete
    end

    should "customer cards should be updateable" do
      c = customer

      stub_request(:get, "#{Stripe.api_base}/v1/customers/#{c.id}/sources/card").
        to_return(body: make_response(make_card))
      card = c.sources.retrieve('card')

      stub_request(:post, "#{Stripe.api_base}/v1/customers/#{card.customer}/sources/#{card.id}").
        with(body: { exp_year: "2100" }).
        to_return(body: make_response(make_card))
      card.exp_year = "2100"
      card.save
    end

    should "create should return a new customer card" do
      c = customer

      stub_request(:post, "#{Stripe.api_base}/v1/customers/#{c.id}/sources").
        with(body: { source: "tok_41YJ05ijAaWaFS" }).
        to_return(body: make_response(make_card))
      _ = c.sources.create(:source => "tok_41YJ05ijAaWaFS")
    end

    should "raise if accessing Stripe::Card.retrieve directly" do
      assert_raises NotImplementedError do
        Stripe::Card.retrieve "card_12345"
      end
    end
  end
end
