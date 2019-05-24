# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class ReviewTest < Test::Unit::TestCase
    should "be listable" do
      reviews = Stripe::Review.list
      assert_requested :get, "#{Stripe.api_base}/v1/reviews"
      assert reviews.data.is_a?(Array)
      assert reviews.first.is_a?(Stripe::Review)
    end

    should "be retrievable" do
      review = Stripe::Review.retrieve("prv_123")
      assert_requested :get, "#{Stripe.api_base}/v1/reviews/prv_123"
      assert review.is_a?(Stripe::Review)
    end

    should "be approvable" do
      review = Stripe::Review.retrieve("prv_123")
      review.approve
      assert_requested :post, "#{Stripe.api_base}/v1/reviews/prv_123/approve"
      assert review.is_a?(Stripe::Review)
    end
  end
end
