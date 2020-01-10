# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class SourceTest < Test::Unit::TestCase
    should "be retrievable" do
      source = Stripe::Source.retrieve("src_123")
      assert_requested :get, "#{Stripe.api_base}/v1/sources/src_123"
      assert source.is_a?(Stripe::Source)
    end

    should "be creatable" do
      source = Stripe::Source.create(
        type: "card",
        token: "tok_123"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/sources"
      assert source.is_a?(Stripe::Source)
    end

    should "be saveable" do
      source = Stripe::Source.retrieve("src_123")
      source.metadata["key"] = "value"
      source.save
      assert_requested :post, "#{Stripe.api_base}/v1/sources/#{source.id}"
    end

    should "be updateable" do
      source = Stripe::Source.update("src_123", metadata: { foo: "bar" })
      assert_requested :post, "#{Stripe.api_base}/v1/sources/src_123"
      assert source.is_a?(Stripe::Source)
    end

    context "#detach" do
      should "not be deletable when unattached" do
        source = Stripe::Source.retrieve("src_123")

        assert_raises NotImplementedError do
          source.detach
        end
      end

      should "be deletable when attached to a customer" do
        source = Stripe::Source.construct_from(customer: "cus_123",
                                               id: "src_123",
                                               object: "source")
        source = source.detach
        assert_requested :delete, "#{Stripe.api_base}/v1/customers/cus_123/sources/src_123"
        assert source.is_a?(Stripe::Source)
      end
    end

    should "not be listable" do
      assert_raises NoMethodError do
        Stripe::Source.list
      end
    end

    context "#verify" do
      should "verify the source" do
        source = Stripe::Source.retrieve("src_123")
        source = source.verify(values: [1, 2])
        assert_requested :post,
                         "#{Stripe.api_base}/v1/sources/#{source.id}/verify",
                         body: { values: [1, 2] }
        assert source.is_a?(Stripe::Source)
      end
    end

    context ".verify" do
      should "verify the source" do
        source = Stripe::Source.verify("src_123", values: [1, 2])
        assert_requested :post,
                         "#{Stripe.api_base}/v1/sources/src_123/verify",
                         body: { values: [1, 2] }
        assert source.is_a?(Stripe::Source)
      end
    end

    context ".retrieve_source_transaction" do
      should "retrieve a source transaction" do
        Stripe::Source.retrieve_source_transaction(
          "src_123",
          "srctxn_123"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/sources/src_123/source_transactions/srctxn_123"
      end
    end

    context ".list_source_transactions" do
      should "list source transactions" do
        Stripe::Source.list_source_transactions(
          "src_123"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/sources/src_123/source_transactions"
      end
    end

    context "#source_transactions" do
      should "list source transactions" do
        old_stderr = $stderr
        $stderr = StringIO.new

        begin
          source = Stripe::Source.construct_from(id: "src_123",
                                                 object: "source")
          source.source_transactions
          assert_requested :get, "#{Stripe.api_base}/v1/sources/src_123/source_transactions"

          assert_include $stderr.string,
                         "use Source.list_source_transactions instead"
        ensure
          $stderr = old_stderr
        end
      end
    end
  end
end
