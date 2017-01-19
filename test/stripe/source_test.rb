require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SourceTest < Test::Unit::TestCase
    should 'be creatable' do
      @mock.expects(:post).once.returns(make_response(make_source_card))
      src = Stripe::Source.create(
        type: 'card',
        token: 'tok_test',
      )
      assert_equal 'src_test_card', src.id
    end

    should 'be retrievable' do
      @mock.expects(:get).once.returns(make_response(make_source_card))
      src = Stripe::Source.retrieve('src_test_card')
      assert_equal 'src_test_card', src.id
    end

    should 'be updatable' do
      @mock.expects(:post).once
        .with(
          "#{Stripe.api_base}/v1/sources/src_test_card",
          nil,
          'metadata[foo]=bar'
        )
        .returns(make_response(make_source_card(metadata: {foo: 'bar'})))
      src = Stripe::Source.update('src_test_card', metadata: {foo: 'bar'})
      assert_equal 'bar', src.metadata['foo']
    end

    should 'be saveable' do
      @mock.expects(:get).once.returns(make_response(make_source_card))
      src = Stripe::Source.retrieve('src_test_card')

      @mock.expects(:post).once
        .with(
          "#{Stripe.api_base}/v1/sources/src_test_card",
          nil,
          'metadata[foo]=bar'
        )
        .returns(make_response(make_source_card(metadata: {foo: 'bar'})))
      src.metadata['foo'] = 'bar'
      src.save
      assert_equal 'bar', src.metadata['foo']
    end

    should 'not be deletable' do
      @mock.expects(:get).once.returns(make_response(make_source_card))
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
      @mock.expects(:get).once.returns(make_response(make_source_ach_debit))
      src = Stripe::Source.retrieve('src_test_ach_debit')

      @mock.expects(:post).once
        .with(
          'https://api.stripe.com/v1/sources/src_test_ach_debit/verify',
          nil,
          'values[]=32&values[]=45'
        )
        .returns(make_response(make_source_ach_debit(
          verification: {
            attempts_remaining: 0,
            status: 'succeeded',
          }
        )))
      src.verify(values: [32, 45])
      assert_equal 'succeeded', src.verification.status
    end
  end
end
