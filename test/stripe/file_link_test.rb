# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class FileLinkTest < Test::Unit::TestCase
    should "be listable" do
      file_links = Stripe::FileLink.list
      assert_requested :get, "#{Stripe.api_base}/v1/file_links"
      assert file_links.data.is_a?(Array)
      assert file_links.first.is_a?(Stripe::FileLink)
    end

    should "be retrievable" do
      file_link = Stripe::FileLink.retrieve("link_123")
      assert_requested :get, "#{Stripe.api_base}/v1/file_links/link_123"
      assert file_link.is_a?(Stripe::FileLink)
    end

    should "be creatable" do
      file_link = Stripe::FileLink.create(
        file: "file_123"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/file_links"
      assert file_link.is_a?(Stripe::FileLink)
    end

    should "be saveable" do
      file_link = Stripe::FileLink.retrieve("link_123")
      file_link.metadata["key"] = "value"
      file_link.save
      assert_requested :post, "#{Stripe.api_base}/v1/file_links/#{file_link.id}"
    end

    should "be updateable" do
      file_link = Stripe::FileLink.update("link_123", metadata: { key: "value" })
      assert_requested :post, "#{Stripe.api_base}/v1/file_links/link_123"
      assert file_link.is_a?(Stripe::FileLink)
    end
  end
end
