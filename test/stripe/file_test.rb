# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class FileTest < Test::Unit::TestCase
    should "be listable" do
      files = StripeClient.new.file.list
      assert_requested :get, "#{Stripe.api_base}/v1/files"
      assert files.data.is_a?(Array)
      assert files.data[0].is_a?(Stripe::File)
    end

    should "be retrievable" do
      file = StripeClient.new.file.retrieve("file_123")
      assert_requested :get, "#{Stripe.api_base}/v1/files/file_123"
      assert file.is_a?(Stripe::File)
    end

    context ".create" do
      setup do
        # We don't point to the same host for the API and uploads in
        # production, but `stripe-mock` supports both APIs.
        Stripe.uploads_base = Stripe.api_base

        # Set `api_base` to `nil` to ensure that these requests are _not_ sent
        # to the default API hostname.
        Stripe.api_base = nil
      end

      should "be creatable with a File" do
        file = StripeClient.new.file.create(
          purpose: "dispute_evidence",
          file: ::File.new(__FILE__),
          file_link_data: { create: true }
        )
        assert_requested :post, "#{Stripe.uploads_base}/v1/files"
        assert file.is_a?(Stripe::File)
      end

      should "be creatable with a Tempfile" do
        tempfile = Tempfile.new("foo")
        tempfile.write("Hello world")
        tempfile.rewind

        file = StripeClient.new.file.create(
          purpose: "dispute_evidence",
          file: tempfile,
          file_link_data: { create: true }
        )
        assert_requested :post, "#{Stripe.uploads_base}/v1/files"
        assert file.is_a?(Stripe::File)
      end

      should "be creatable with a string" do
        file = StripeClient.new.file.create(
          purpose: "dispute_evidence",
          file: "my-file-contents",
          file_link_data: { create: true }
        )
        assert_requested :post, "#{Stripe.uploads_base}/v1/files"
        assert file.is_a?(Stripe::File)
      end

      should "raise given a file object that doesn't respond to #read" do
        e = assert_raises(ArgumentError) do
          StripeClient.new.file.create(
            purpose: "dispute_evidence",
            file: Object.new,
            file_link_data: { create: true }
          )
        end
        assert_equal "file must respond to `#read`", e.message
      end

      context "when the caller is a StripeClient" do
        should "permit the StripeClient to set the `api_base`" do
          client = StripeClient.new(uploads_base: Stripe.uploads_base)
          Stripe.config.stubs(:uploads_base).returns("old")

          file = client.file.create(
            purpose: "dispute_evidence",
            file: ::File.new(__FILE__),
            file_link_data: { create: true }
          )
          assert_requested :post, "#{client.config.uploads_base}/v1/files"
          assert file.is_a?(Stripe::File)
        end
      end
    end

    should "be deserializable when `object=file`" do
      file = Stripe::Util.convert_to_stripe_object({ object: "file" }, {})
      assert file.is_a?(Stripe::File)
    end

    should "be deserializable when `object=file_upload`" do
      file = Stripe::Util.convert_to_stripe_object({ object: "file_upload" }, {})
      assert file.is_a?(Stripe::File)
    end
  end
end
