require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class FileUploadTest < Test::Unit::TestCase
    # Note that these tests are written different from others because we
    # don't have anything on the uploads service in our OpenAPI spec. This is
    # something that should be looked into at some point. We may need to ship
    # a separate spec for it though, so it's high effort with low reward for
    # the time being.
    FIXTURE = {
      id: "fil_15ABpV2eZvKYlo2C7vu7XS5l",
      object: "file_upload",
    }.freeze

    should "be listable" do
      stub_request(:get, "#{Stripe.uploads_base}/v1/files").
        to_return(body: JSON.generate({
          data: [FIXTURE],
          object: 'list',
          resource_url: '/v1/files'
        }))

      files = Stripe::FileUpload.list
      assert files.data.kind_of?(Array)
      assert files.data[0].kind_of?(Stripe::FileUpload)
    end

    should "be retrievable" do
      stub_request(:get, "#{Stripe.uploads_base}/v1/files/#{FIXTURE[:id]}").
        to_return(body: JSON.generate(FIXTURE))

      file = Stripe::FileUpload.retrieve(FIXTURE[:id])
      assert file.kind_of?(Stripe::FileUpload)
    end

    should "be creatable" do
      stub_request(:post, "#{Stripe.uploads_base}/v1/files").
        with(:headers => {
          "Content-Type" => %r|\A#{Faraday::Request::Multipart.mime_type}|
        }) { |request|
          request.body =~ /FileUploadTest/
        }.to_return(body: JSON.generate(FIXTURE))

      file = Stripe::FileUpload.create(
        purpose: "dispute_evidence",
        file: File.new(__FILE__),
      )
      assert file.kind_of?(Stripe::FileUpload)
    end

    should "be creatable with Faraday::UploadIO" do
      stub_request(:post, "#{Stripe.uploads_base}/v1/files").
        with(:headers => {
          "Content-Type" => %r|\A#{Faraday::Request::Multipart.mime_type}|
        }) { |request|
          request.body =~ /FileUploadTest/
        }.to_return(body: JSON.generate(FIXTURE))

      file = Stripe::FileUpload.create(
        purpose: "dispute_evidence",
        file: Faraday::UploadIO.new(File.new(__FILE__), nil),
      )
      assert file.kind_of?(Stripe::FileUpload)
    end
  end
end
