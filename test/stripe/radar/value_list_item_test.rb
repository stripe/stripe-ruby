# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module EwStripe
  module Radar
    class ValueListItemTest < Test::Unit::TestCase
      should "be listable" do
        items = EwStripe::Radar::ValueListItem.list(value_list: "rsl_123")
        assert_requested :get, "#{EwStripe.api_base}/v1/radar/value_list_items?value_list=rsl_123"
        assert items.data.is_a?(Array)
        assert items.first.is_a?(EwStripe::Radar::ValueListItem)
      end

      should "be retrievable" do
        item = EwStripe::Radar::ValueListItem.retrieve("rsli_123")
        assert_requested :get, "#{EwStripe.api_base}/v1/radar/value_list_items/rsli_123"
        assert item.is_a?(EwStripe::Radar::ValueListItem)
      end

      should "be creatable" do
        item = EwStripe::Radar::ValueListItem.create(
          value_list: "rsl_123",
          value: "value"
        )
        assert_requested :post, "#{EwStripe.api_base}/v1/radar/value_list_items"
        assert item.is_a?(EwStripe::Radar::ValueListItem)
      end

      context "#delete" do
        should "be deletable" do
          list = EwStripe::Radar::ValueListItem.retrieve("rsli_123")
          list = list.delete
          assert_requested :delete, "#{EwStripe.api_base}/v1/radar/value_list_items/rsli_123"
          assert list.is_a?(EwStripe::Radar::ValueListItem)
        end
      end

      context ".delete" do
        should "be deletable" do
          list = EwStripe::Radar::ValueListItem.delete("rsli_123")
          assert_requested :delete, "#{EwStripe.api_base}/v1/radar/value_list_items/rsli_123"
          assert list.is_a?(EwStripe::Radar::ValueListItem)
        end
      end
    end
  end
end
