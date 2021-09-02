# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module EwStripe
  module Radar
    class ValueListTest < Test::Unit::TestCase
      should "be listable" do
        lists = EwStripe::Radar::ValueList.list
        assert_requested :get, "#{EwStripe.api_base}/v1/radar/value_lists"
        assert lists.data.is_a?(Array)
        assert lists.first.is_a?(EwStripe::Radar::ValueList)
      end

      should "be retrievable" do
        list = EwStripe::Radar::ValueList.retrieve("rsl_123")
        assert_requested :get, "#{EwStripe.api_base}/v1/radar/value_lists/rsl_123"
        assert list.is_a?(EwStripe::Radar::ValueList)
      end

      should "be creatable" do
        list = EwStripe::Radar::ValueList.create(
          alias: "list_alias",
          name: "list_name"
        )
        assert_requested :post, "#{EwStripe.api_base}/v1/radar/value_lists"
        assert list.is_a?(EwStripe::Radar::ValueList)
      end

      should "be saveable" do
        list = EwStripe::Radar::ValueList.retrieve("rsl_123")
        list.metadata["key"] = "value"
        list.save
        assert_requested :post, "#{EwStripe.api_base}/v1/radar/value_lists/rsl_123"
      end

      should "be updateable" do
        list = EwStripe::Radar::ValueList.update("rsl_123", metadata: { key: "value" })
        assert_requested :post, "#{EwStripe.api_base}/v1/radar/value_lists/rsl_123"
        assert list.is_a?(EwStripe::Radar::ValueList)
      end

      context "#delete" do
        should "be deletable" do
          list = EwStripe::Radar::ValueList.retrieve("rsl_123")
          list = list.delete
          assert_requested :delete, "#{EwStripe.api_base}/v1/radar/value_lists/rsl_123"
          assert list.is_a?(EwStripe::Radar::ValueList)
        end
      end

      context ".delete" do
        should "be deletable" do
          list = EwStripe::Radar::ValueList.delete("rsl_123")
          assert_requested :delete, "#{EwStripe.api_base}/v1/radar/value_lists/rsl_123"
          assert list.is_a?(EwStripe::Radar::ValueList)
        end
      end
    end
  end
end
