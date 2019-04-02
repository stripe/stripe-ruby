# frozen_string_literal: true

require ::File.expand_path("../../../test_helper", __FILE__)

module Stripe
  module Terminal
    class ReaderTest < Test::Unit::TestCase
      should "be creatable" do
        reader = Stripe::Terminal::Reader.create(
          registration_code: "elegant-orange-aqua",
          label: "label"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers"
        assert reader.is_a?(Stripe::Terminal::Reader)
      end

      should "be listable" do
        readers = Stripe::Terminal::Reader.list
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/readers"
        assert readers.data.is_a?(Array)
        assert readers.data[0].is_a?(Stripe::Terminal::Reader)
      end

      should "be retrievable" do
        reader = Stripe::Terminal::Reader.retrieve("rdr_123")
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/readers/rdr_123"
        assert reader.is_a?(Stripe::Terminal::Reader)
      end

      should "be saveable" do
        reader = Stripe::Terminal::Reader.retrieve("rdr_123")
        reader["label"] = "new label"
        reader.save
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/rdr_123"
        assert reader.is_a?(Stripe::Terminal::Reader)
      end

      should "be updateable" do
        reader = Stripe::Terminal::Reader.update("rdr_123", label: "new label")
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/rdr_123"
        assert reader.is_a?(Stripe::Terminal::Reader)
      end

      context "#delete" do
        should "be deletable" do
          reader = Stripe::Terminal::Reader.retrieve("rdr_123")
          reader = reader.delete
          assert_requested :delete, "#{Stripe.api_base}/v1/terminal/readers/#{reader.id}"
          assert reader.is_a?(Stripe::Terminal::Reader)
        end
      end

      context ".delete" do
        should "be deletable" do
          reader = Stripe::Terminal::Reader.delete("rdr_123")
          assert_requested :delete, "#{Stripe.api_base}/v1/terminal/readers/rdr_123"
          assert reader.is_a?(Stripe::Terminal::Reader)
        end
      end
    end
  end
end
