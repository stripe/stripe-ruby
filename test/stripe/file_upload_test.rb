require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class FileUploadTest < Test::Unit::TestCase
    should "create should return a new file" do
      @mock.expects(:post).once.returns(test_response(test_file))
      f = Stripe::FileUpload.create({
        :purpose => "dispute_evidence",
        :file => File.new(__FILE__),
      })
      assert_equal "fil_test_file", f.id
    end

    should "files should be retrievable" do
      @mock.expects(:get).once.returns(test_response(test_file))
      c = Stripe::FileUpload.new("fil_test_file")
      c.refresh
      assert_equal 1403047735, c.created
    end

    should "files should be listable" do
      @mock.expects(:get).once.returns(test_response(test_file_array))
      c = Stripe::FileUpload.all.data
      assert c.kind_of? Array
      assert c[0].kind_of? Stripe::FileUpload
    end
  end
end
