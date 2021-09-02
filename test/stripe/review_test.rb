# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class ReviewTest < Test::Unit::TestCase
    should "be listable" do
      reviews = EwStripe::Review.list
      assert_requested :get, "#{EwStripe.api_base}/v1/reviews"
      assert reviews.data.is_a?(Array)
      assert reviews.first.is_a?(EwStripe::Review)
    end

    should "be retrievable" do
      review = EwStripe::Review.retrieve("prv_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/reviews/prv_123"
      assert review.is_a?(EwStripe::Review)
    end

    should "be approvable" do
      review = EwStripe::Review.retrieve("prv_123")
      review.approve
      assert_requested :post, "#{EwStripe.api_base}/v1/reviews/prv_123/approve"
      assert review.is_a?(EwStripe::Review)
    end
  end
end
