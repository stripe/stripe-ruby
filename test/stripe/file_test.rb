# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class FileTest < Test::Unit::TestCase
    should "be listable" do
      files = Stripe::File.list
      assert files.data.is_a?(Array)
      assert files.data[0].is_a?(Stripe::File)
    end

    should "be retrievable" do
      file = Stripe::File.retrieve("file_123")
      assert file.is_a?(Stripe::File)
    end

    should "be creatable with a File" do
      file = Stripe::File.create(
        purpose: "dispute_evidence",
        file: ::File.new(__FILE__)
      )
      assert file.is_a?(Stripe::File)
    end

    should "be creatable with a Tempfile" do
      tempfile = Tempfile.new("foo")
      tempfile.write("Hello world")
      tempfile.rewind

      file = Stripe::File.create(
        purpose: "dispute_evidence",
        file: tempfile
      )
      assert file.is_a?(Stripe::File)
    end

    should "be creatable with Faraday::UploadIO" do
      file = Stripe::File.create(
        purpose: "dispute_evidence",
        file: Faraday::UploadIO.new(::File.new(__FILE__), nil)
      )
      assert file.is_a?(Stripe::File)
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
