# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class MultipartEncoderTest < Test::Unit::TestCase
    should "multipart encode parameters" do
      Tempfile.create("image.jpg") do |f|
        f.write "file-content"
        f.flush
        f.rewind

        encoder = MultipartEncoder.new
        encoder.encode(
          file: f,
          other_param: "other-param-content"
        )
        encoder.close
        body = encoder.body

        assert_equal <<~BODY.rstrip, body
          --#{encoder.boundary}\r
          Content-Disposition: form-data; name="file"; filename="#{::File.basename(f.path)}"\r
          Content-Type: application/octet-stream\r
          \r
          file-content\r
          --#{encoder.boundary}\r
          Content-Disposition: form-data; name="other_param"\r
          \r
          other-param-content\r
          --#{encoder.boundary}--
        BODY
      end
    end

    should "encode file-like objects" do
      klass = Class.new do
        def read
          "klass-read-content"
        end
      end

      encoder = MultipartEncoder.new
      encoder.encode(
        file_like: klass.new
      )
      encoder.close
      body = encoder.body

      assert_equal <<~BODY.rstrip, body
        --#{encoder.boundary}\r
        Content-Disposition: form-data; name="file_like"; filename="blob"\r
        Content-Type: application/octet-stream\r
        \r
        klass-read-content\r
        --#{encoder.boundary}--
      BODY
    end

    should "escape quotes and line break characters in parameter names" do
      encoder = MultipartEncoder.new
      encoder.encode(
        %("quoted\n\r") => "content"
      )
      encoder.close
      body = encoder.body

      assert_equal <<~BODY.rstrip, body
        --#{encoder.boundary}\r
        Content-Disposition: form-data; name="%22quoted  %22"\r
        \r
        content\r
        --#{encoder.boundary}--
      BODY
    end

    context ".encode" do
      should "provide an easy encoding shortcut" do
        body, content_type = MultipartEncoder.encode(
          param: "content"
        )
        assert_include body, %(Content-Disposition: form-data; name="param")
        assert_include content_type, "#{MultipartEncoder::MULTIPART_FORM_DATA}; boundary="
      end
    end

    context "#body" do
      should "error if not yet closed" do
        encoder = MultipartEncoder.new

        e = assert_raises RuntimeError do
          encoder.body
        end
        assert_equal "object must be closed before getting body", e.message
      end
    end

    context "#close" do
      should "error if closed twice" do
        encoder = MultipartEncoder.new
        encoder.close

        e = assert_raises RuntimeError do
          encoder.close
        end
        assert_equal "object already closed", e.message
      end
    end

    context "#content_type" do
      should "produce a content type containing boundary" do
        encoder = MultipartEncoder.new
        assert_equal "#{MultipartEncoder::MULTIPART_FORM_DATA}; boundary=#{encoder.boundary}",
                     encoder.content_type
      end
    end

    context "#encode" do
      should "error if already closed" do
        encoder = MultipartEncoder.new
        encoder.close

        e = assert_raises RuntimeError do
          encoder.encode(param: "content")
        end
        assert_equal "no more parameters can be written to closed object", e.message
      end
    end
  end
end
