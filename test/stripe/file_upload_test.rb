require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class FileUploadTest < Test::Unit::TestCase
    should "create should return a new file" do
      params = {
        :purpose => "dispute_evidence",
        :file => File.new(__FILE__),
      }

      @mock.expects(:post).once.
        with("#{Stripe.uploads_base}/v1/files", nil, params).
        returns(make_response(make_file))

      f = Stripe::FileUpload.create(params)
      assert_equal "fil_test_file", f.id
    end

    should "files should be retrievable" do
      @mock.expects(:get).once.
        with("#{Stripe.uploads_base}/v1/files/fil_test_file", nil, nil).
        returns(make_response(make_file))

      c = Stripe::FileUpload.new("fil_test_file")
      c.refresh
      assert_equal 1403047735, c.created
    end

    should "files should be listable" do
      @mock.expects(:get).once.
        with("#{Stripe.uploads_base}/v1/files", nil, nil).
        returns(make_response(make_file_array))

      c = Stripe::FileUpload.list.data
      assert c.kind_of? Array
      assert c[0].kind_of? Stripe::FileUpload
    end
  end
end
