require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SourceTest < Test::Unit::TestCase
    should 'be creatable' do
      @mock.expects(:post).once.returns(make_response(make_source_card))
      stub_request(:post, "#{Stripe.api_base}/v1/sources").
        with(body: { type: 'card', token: 'tok_test' }).
        to_return(body: make_response(make_source_card))
      _ = Stripe::Source.create(
        type: 'card',
        token: 'tok_test',
      )
    end

    should 'be retrievable' do
      stub_request(:get, "#{Stripe.api_base}/v1/sources/src_test_card").
        to_return(body: make_response(make_source_card))
      _ = Stripe::Source.retrieve('src_test_card')
    end

    should 'be updatable' do
      stub_request(:post, "#{Stripe.api_base}/v1/sources/src_test_card").
        with(body: { metadata: { foo: "bar" } }).
        to_return(body: make_response(make_source_card))
      src = Stripe::Source.update('src_test_card', metadata: {foo: 'bar'})
      assert_equal 'bar', src.metadata['foo']
    end

    should 'be saveable' do
      stub_request(:get, "#{Stripe.api_base}/v1/sources/src_test_card").
        to_return(body: make_response(make_source_card))
      src = Stripe::Source.retrieve('src_test_card')

      stub_request(:post, "#{Stripe.api_base}/v1/sources/#{src.id}").
        with(body: { metadata: { foo: "bar" } }).
        to_return(body: make_response(make_source_card))
      src.metadata['foo'] = 'bar'
      src.save
    end

    should 'not be deletable' do
      stub_request(:get, "#{Stripe.api_base}/v1/sources/src_test_card").
        to_return(body: make_response(make_source_card))
      src = Stripe::Source.retrieve('src_test_card')

      assert_raises NoMethodError do
        src.delete
      end
    end

    should 'not be listable' do
      assert_raises NoMethodError do
        Stripe::Source.list
      end
    end

    should 'be verifiable' do
      stub_request(:post, "#{Stripe.api_base}/v1/sources/#{source.id}/verify").
        with(body: { amounts: ["1", "2"] }).
        to_return(body: make_response(make_source_card))
      source.verify(:amounts => [1,2])
    end
  end
end
