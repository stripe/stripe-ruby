# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module Stripe
  module Radar
    class ValueListTest < Test::Unit::TestCase
      should "be listable" do
        lists = Stripe::Radar::ValueList.list
        assert_requested :get, "#{Stripe.api_base}/v1/radar/value_lists"
        assert lists.data.is_a?(Array)
        assert lists.first.is_a?(Stripe::Radar::ValueList)
      end

      should "be retrievable" do
        list = Stripe::Radar::ValueList.retrieve("rsl_123")
        assert_requested :get, "#{Stripe.api_base}/v1/radar/value_lists/rsl_123"
        assert list.is_a?(Stripe::Radar::ValueList)
      end

      should "be creatable" do
        list = Stripe::Radar::ValueList.create(
          alias: "list_alias",
          name: "list_name"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/radar/value_lists"
        assert list.is_a?(Stripe::Radar::ValueList)
      end

      should "be saveable" do
        list = Stripe::Radar::ValueList.retrieve("rsl_123")
        list.metadata["key"] = "value"
        list.save
        assert_requested :post, "#{Stripe.api_base}/v1/radar/value_lists/rsl_123"
      end

      should "be updateable" do
        list = Stripe::Radar::ValueList.update("rsl_123", metadata: { key: "value" })
        assert_requested :post, "#{Stripe.api_base}/v1/radar/value_lists/rsl_123"
        assert list.is_a?(Stripe::Radar::ValueList)
      end

      context "#delete" do
        should "be deletable" do
          list = Stripe::Radar::ValueList.retrieve("rsl_123")
          list = list.delete
          assert_requested :delete, "#{Stripe.api_base}/v1/radar/value_lists/rsl_123"
          assert list.is_a?(Stripe::Radar::ValueList)
        end
      end

      context ".delete" do
        should "be deletable" do
          list = Stripe::Radar::ValueList.delete("rsl_123")
          assert_requested :delete, "#{Stripe.api_base}/v1/radar/value_lists/rsl_123"
          assert list.is_a?(Stripe::Radar::ValueList)
        end
      end
    end
  end
end
