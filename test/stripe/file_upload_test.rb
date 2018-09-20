# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  # This is a strict copy of `FileTest`, except that it uses
  # `Stripe::FileUpload` instead of `Stripe::File`.
  class FileUploadTest < Test::Unit::TestCase
    should "be listable" do
      files = Stripe::FileUpload.list
      assert_requested :get, "#{Stripe.api_base}/v1/files"
      assert files.data.is_a?(Array)
      assert files.data[0].is_a?(Stripe::FileUpload)
    end

    should "be retrievable" do
      file = Stripe::FileUpload.retrieve("file_123")
      assert_requested :get, "#{Stripe.api_base}/v1/files/file_123"
      assert file.is_a?(Stripe::FileUpload)
    end

    context ".create" do
      setup do
        # We don't point to the same host for the API and uploads in
        # production, but `stripe-mock` supports both APIs.
        Stripe.uploads_base = Stripe.api_base

        # Set `api_base` to `nil` to ensure that these requests are _not_ sent
        # to the default API hostname. `api_base` is reset when each test
        # starts so this won't affect the global state.
        Stripe.api_base = nil
      end

      should "be creatable with a File" do
        file = Stripe::FileUpload.create(
          purpose: "dispute_evidence",
          file: ::File.new(__FILE__)
        )
        assert_requested :post, "#{Stripe.uploads_base}/v1/files"
        assert file.is_a?(Stripe::FileUpload)
      end

      should "be creatable with a Tempfile" do
        tempfile = Tempfile.new("foo")
        tempfile.write("Hello world")
        tempfile.rewind

        file = Stripe::FileUpload.create(
          purpose: "dispute_evidence",
          file: tempfile
        )
        assert_requested :post, "#{Stripe.uploads_base}/v1/files"
        assert file.is_a?(Stripe::FileUpload)
      end

      should "be creatable with Faraday::UploadIO" do
        file = Stripe::FileUpload.create(
          purpose: "dispute_evidence",
          file: Faraday::UploadIO.new(::File.new(__FILE__), nil)
        )
        assert_requested :post, "#{Stripe.uploads_base}/v1/files"
        assert file.is_a?(Stripe::FileUpload)
      end
    end

    should "be deserializable when `object=file`" do
      file = Stripe::Util.convert_to_stripe_object({ object: "file" }, {})
      assert file.is_a?(Stripe::FileUpload)
    end

    should "be deserializable when `object=file_upload`" do
      file = Stripe::Util.convert_to_stripe_object({ object: "file_upload" }, {})
      assert file.is_a?(Stripe::FileUpload)
    end
  end
end
