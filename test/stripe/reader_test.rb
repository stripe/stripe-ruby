require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ReaderTest < Test::Unit::TestCase
    @@example_valid = "%B1234123412341234^CardUser/John^030510100000019301000000877000000?"
    @@example_invalid = "%B9319293219392193?"

    should "allow Stripe::Reader to read in valid card data" do
      @parsed = Stripe::Reader.parse(@@example_valid)

      assert_equal "1234123412341234", @parsed[:number]
      assert_equal "JOHN CARDUSER", @parsed[:name]
      assert_equal "05", @parsed[:exp_month]
      assert_equal "03", @parsed[:exp_year]
      assert_equal "", @parsed[:cvc]
    end

    should "allow Stripe::Reader to pass in CVC" do
      @parsed = Stripe::Reader.parse(@@example_valid, { :cvc => "321" })

      assert_equal "1234123412341234", @parsed[:number]
      assert_equal "JOHN CARDUSER", @parsed[:name]
      assert_equal "05", @parsed[:exp_month]
      assert_equal "03", @parsed[:exp_year]
      assert_equal "321", @parsed[:cvc]
    end

    should "ensure Stripe::Reader errors invalid card data" do
      assert_raises(Stripe::StripeError) do
        Stripe::Reader.parse(@@example_invalid)
      end
    end
  end
end