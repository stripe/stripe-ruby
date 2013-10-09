require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class MetadataTest < Test::Unit::TestCase
    setup do
      @metadata_supported = {
        :charge => {:new => Stripe::Charge.method(:new),
                   :test => method(:test_charge),
                   :url => "/v1/charges/#{test_charge()[:id]}"},
        :customer => {:new => Stripe::Customer.method(:new),
                      :test => method(:test_customer),
                      :url => "/v1/customers/#{test_customer()[:id]}"},
        :recipient => {:new => Stripe::Recipient.method(:new),
                      :test => method(:test_recipient),
                      :url => "/v1/recipients/#{test_recipient()[:id]}"},
        :transfer => {:new => Stripe::Transfer.method(:new),
                      :test => method(:test_transfer),
                      :url => "/v1/transfers/#{test_transfer()[:id]}"}
      }

      @base_url = 'https://api.stripe.com'
    end

    should "update metadata as a whole" do
      update_actions = lambda {|obj| obj.metadata = {'uuid' => '6735'}}

      check_metadata({:metadata => {}},
                    'metadata[uuid]=6735',
                    update_actions)
    end

    should "update metadata keys individually" do
      update_actions = lambda {|obj| obj.metadata['txn_id'] = '134a13'}
      check_metadata({:metadata => {'initial' => 'true'}},
                     'metadata[txn_id]=134a13',
                     update_actions)
    end

    should "clear metadata as a whole" do
      update_actions = lambda {|obj| obj.metadata = nil}
      check_metadata({:metadata => {'initial' => 'true'}},
                     'metadata=',
                     update_actions)
    end

    should "clear metadata keys individually" do
      update_actions = lambda {|obj| obj.metadata['initial'] = nil}
      check_metadata({:metadata => {'initial' => 'true'}},
                     'metadata[initial]=',
                     update_actions)
    end

    def check_metadata (initial_params, curl_args, metadata_update)
      @metadata_supported.each do |name, methods|
        neu = methods[:new]
        test = methods[:test]
        url = @base_url + methods[:url]

        initial_test_obj = test.call(initial_params)
        @mock.expects(:get).once.returns(test_response(initial_test_obj))

        final_test_obj = test.call()
        @mock.expects(:post).once.
          returns(test_response(final_test_obj)).
          with(url, nil, curl_args)

        obj = neu.call("test")
        obj.refresh()
        metadata_update.call(obj)
        obj.save
      end
    end
  end
end