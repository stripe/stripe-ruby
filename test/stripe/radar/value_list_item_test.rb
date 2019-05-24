# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module Stripe
  module Radar
    class ValueListItemTest < Test::Unit::TestCase
      should "be listable" do
        items = Stripe::Radar::ValueListItem.list(value_list: "rsl_123")
        assert_requested :get, "#{Stripe.api_base}/v1/radar/value_list_items?value_list=rsl_123"
        assert items.data.is_a?(Array)
        assert items.first.is_a?(Stripe::Radar::ValueListItem)
      end

      should "be retrievable" do
        item = Stripe::Radar::ValueListItem.retrieve("rsli_123")
        assert_requested :get, "#{Stripe.api_base}/v1/radar/value_list_items/rsli_123"
        assert item.is_a?(Stripe::Radar::ValueListItem)
      end

      should "be creatable" do
        item = Stripe::Radar::ValueListItem.create(
          value_list: "rsl_123",
          value: "value"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/radar/value_list_items"
        assert item.is_a?(Stripe::Radar::ValueListItem)
      end

      context "#delete" do
        should "be deletable" do
          list = Stripe::Radar::ValueListItem.retrieve("rsli_123")
          list = list.delete
          assert_requested :delete, "#{Stripe.api_base}/v1/radar/value_list_items/rsli_123"
          assert list.is_a?(Stripe::Radar::ValueListItem)
        end
      end

      context ".delete" do
        should "be deletable" do
          list = Stripe::Radar::ValueListItem.delete("rsli_123")
          assert_requested :delete, "#{Stripe.api_base}/v1/radar/value_list_items/rsli_123"
          assert list.is_a?(Stripe::Radar::ValueListItem)
        end
      end
    end
  end
end
