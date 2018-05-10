# frozen_string_literal: true

require File.expand_path("../../test_helper", __FILE__)

module Stripe
  class FileUploadTest < Test::Unit::TestCase
    should "be listable" do
      files = Stripe::FileUpload.list
      assert files.data.is_a?(Array)
      assert files.data[0].is_a?(Stripe::FileUpload)
    end

    should "be retrievable" do
      file = Stripe::FileUpload.retrieve("file_123")
      assert file.is_a?(Stripe::FileUpload)
    end

    should "be creatable with a File" do
      file = Stripe::FileUpload.create(
        purpose: "dispute_evidence",
        file: File.new(__FILE__)
      )
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
      assert file.is_a?(Stripe::FileUpload)
    end

    should "be creatable with Faraday::UploadIO" do
      file = Stripe::FileUpload.create(
        purpose: "dispute_evidence",
        file: Faraday::UploadIO.new(File.new(__FILE__), nil)
      )
      assert file.is_a?(Stripe::FileUpload)
    end
  end
end
