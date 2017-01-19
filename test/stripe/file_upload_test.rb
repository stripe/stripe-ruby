require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class FileUploadTest < Test::Unit::TestCase
    should "create should return a new file" do
      stub_request(:post, "#{Stripe.uploads_base}/v1/files").
        to_return(body: make_response(make_file))

      f = Stripe::FileUpload.create({
        :purpose => "dispute_evidence",
        :file => File.new(__FILE__),
      })
      assert_equal "fil_test_file", f.id
    end

    should "files should be retrievable" do
      stub_request(:get, "#{Stripe.uploads_base}/v1/files/fil_test_file").
        to_return(body: make_response(make_file))

      _ = Stripe::FileUpload.retrieve("fil_test_file")
    end

    should "files should be listable" do
      stub_request(:get, "#{Stripe.uploads_base}/v1/files").
        to_return(body: make_response(make_file_array))

      c = Stripe::FileUpload.list.data
      assert c.kind_of? Array
      assert c[0].kind_of? Stripe::FileUpload
    end
  end
end
