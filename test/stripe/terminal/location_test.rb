# frozen_string_literal: true

require ::File.expand_path("../../../test_helper", __FILE__)

module Stripe
  module Terminal
    class LocationTest < Test::Unit::TestCase
      should "be creatable" do
        location = Stripe::Terminal::Location.create(
          address: {
            line1: "line1",
            country: "US",
            postal_code: "12345",
            city: "San Francisco",
            state: "CA",
          },
          display_name: "name"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/locations"
        assert location.is_a?(Stripe::Terminal::Location)
      end

      should "be listable" do
        locations = Stripe::Terminal::Location.list
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/locations"
        assert locations.data.is_a?(Array)
        assert locations.data[0].is_a?(Stripe::Terminal::Location)
      end

      should "be retrievable" do
        location = Stripe::Terminal::Location.retrieve("loc_123")
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/locations/loc_123"
        assert location.is_a?(Stripe::Terminal::Location)
      end

      should "be saveable" do
        location = Stripe::Terminal::Location.retrieve("loc_123")
        location["display_name"] = "new name"
        location.save
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/locations/loc_123"
        assert location.is_a?(Stripe::Terminal::Location)
      end

      should "be updateable" do
        location = Stripe::Terminal::Location.update("loc_123", display_name: "new name")
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/locations/loc_123"
        assert location.is_a?(Stripe::Terminal::Location)
      end

      context "#delete" do
        should "be deletable" do
          location = Stripe::Terminal::Location.retrieve("loc_123")
          location = location.delete
          assert_requested :delete, "#{Stripe.api_base}/v1/terminal/locations/#{location.id}"
          assert location.is_a?(Stripe::Terminal::Location)
        end
      end

      context ".delete" do
        should "be deletable" do
          location = Stripe::Terminal::Location.delete("loc_123")
          assert_requested :delete, "#{Stripe.api_base}/v1/terminal/locations/loc_123"
          assert location.is_a?(Stripe::Terminal::Location)
        end
      end
    end
  end
end
