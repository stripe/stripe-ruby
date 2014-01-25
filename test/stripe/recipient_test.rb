require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class RecipientTest < Test::Unit::TestCase
    context "when specifying per-object credentials" do
      setup do
        Stripe.api_key = "global"
      end

      teardown do
        Stripe.api_key = nil
      end

      should "use the per-object credentials when getting transfers" do
        fee = Stripe::Recipient.new("test_application_fee")

        Stripe.expects(:execute_request).with do |opts|
          opts[:headers][:authorization] == "Bearer sk_test_local"
        end.returns(test_response({}))

        fee.transfers('sk_test_local')
      end
    end
  end
end
