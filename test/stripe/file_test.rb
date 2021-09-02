# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class FileTest < Test::Unit::TestCase
    should "be listable" do
      files = EwStripe::File.list
      assert_requested :get, "#{EwStripe.api_base}/v1/files"
      assert files.data.is_a?(Array)
      assert files.data[0].is_a?(EwStripe::File)
    end

    should "be retrievable" do
      file = EwStripe::File.retrieve("file_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/files/file_123"
      assert file.is_a?(EwStripe::File)
    end

    context ".create" do
      setup do
        # We don't point to the same host for the API and uploads in
        # production, but `stripe-mock` supports both APIs.
        EwStripe.uploads_base = EwStripe.api_base

        # Set `api_base` to `nil` to ensure that these requests are _not_ sent
        # to the default API hostname.
        EwStripe.api_base = nil
      end

      should "be creatable with a File" do
        file = EwStripe::File.create(
          purpose: "dispute_evidence",
          file: ::File.new(__FILE__),
          file_link_data: { create: true }
        )
        assert_requested :post, "#{EwStripe.uploads_base}/v1/files"
        assert file.is_a?(EwStripe::File)
      end

      should "be creatable with a Tempfile" do
        tempfile = Tempfile.new("foo")
        tempfile.write("Hello world")
        tempfile.rewind

        file = EwStripe::File.create(
          purpose: "dispute_evidence",
          file: tempfile,
          file_link_data: { create: true }
        )
        assert_requested :post, "#{EwStripe.uploads_base}/v1/files"
        assert file.is_a?(EwStripe::File)
      end

      should "be creatable with a string" do
        file = EwStripe::File.create(
          purpose: "dispute_evidence",
          file: "my-file-contents",
          file_link_data: { create: true }
        )
        assert_requested :post, "#{EwStripe.uploads_base}/v1/files"
        assert file.is_a?(EwStripe::File)
      end

      should "raise given a file object that doesn't respond to #read" do
        e = assert_raises(ArgumentError) do
          EwStripe::File.create(
            purpose: "dispute_evidence",
            file: Object.new,
            file_link_data: { create: true }
          )
        end
        assert_equal "file must respond to `#read`", e.message
      end
    end

    should "be deserializable when `object=file`" do
      file = EwStripe::Util.convert_to_stripe_object({ object: "file" }, {})
      assert file.is_a?(EwStripe::File)
    end

    should "be deserializable when `object=file_upload`" do
      file = EwStripe::Util.convert_to_stripe_object({ object: "file_upload" }, {})
      assert file.is_a?(EwStripe::File)
    end
  end
end
