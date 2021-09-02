# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module EwStripe
  module Terminal
    class ReaderTest < Test::Unit::TestCase
      should "be creatable" do
        reader = EwStripe::Terminal::Reader.create(
          registration_code: "elegant-orange-aqua",
          label: "label"
        )
        assert_requested :post, "#{EwStripe.api_base}/v1/terminal/readers"
        assert reader.is_a?(EwStripe::Terminal::Reader)
      end

      should "be listable" do
        readers = EwStripe::Terminal::Reader.list
        assert_requested :get, "#{EwStripe.api_base}/v1/terminal/readers"
        assert readers.data.is_a?(Array)
        assert readers.data[0].is_a?(EwStripe::Terminal::Reader)
      end

      should "be retrievable" do
        reader = EwStripe::Terminal::Reader.retrieve("rdr_123")
        assert_requested :get, "#{EwStripe.api_base}/v1/terminal/readers/rdr_123"
        assert reader.is_a?(EwStripe::Terminal::Reader)
      end

      should "be saveable" do
        reader = EwStripe::Terminal::Reader.retrieve("rdr_123")
        reader["label"] = "new label"
        reader.save
        assert_requested :post, "#{EwStripe.api_base}/v1/terminal/readers/rdr_123"
        assert reader.is_a?(EwStripe::Terminal::Reader)
      end

      should "be updateable" do
        reader = EwStripe::Terminal::Reader.update("rdr_123", label: "new label")
        assert_requested :post, "#{EwStripe.api_base}/v1/terminal/readers/rdr_123"
        assert reader.is_a?(EwStripe::Terminal::Reader)
      end

      context "#delete" do
        should "be deletable" do
          reader = EwStripe::Terminal::Reader.retrieve("rdr_123")
          reader = reader.delete
          assert_requested :delete, "#{EwStripe.api_base}/v1/terminal/readers/#{reader.id}"
          assert reader.is_a?(EwStripe::Terminal::Reader)
        end
      end

      context ".delete" do
        should "be deletable" do
          reader = EwStripe::Terminal::Reader.delete("rdr_123")
          assert_requested :delete, "#{EwStripe.api_base}/v1/terminal/readers/rdr_123"
          assert reader.is_a?(EwStripe::Terminal::Reader)
        end
      end
    end
  end
end
