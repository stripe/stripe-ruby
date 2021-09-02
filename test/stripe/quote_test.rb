# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class QuoteTest < Test::Unit::TestCase
    should "be creatable" do
      coupon = EwStripe::Quote.create

      assert_requested :post, "#{EwStripe.api_base}/v1/quotes"
      assert coupon.is_a?(EwStripe::Quote)
    end

    should "be listable" do
      order_returns = EwStripe::Quote.list
      assert_requested :get, "#{EwStripe.api_base}/v1/quotes"
      assert order_returns.data.is_a?(Array)
      assert order_returns.data[0].is_a?(EwStripe::Quote)
    end

    should "be saveable" do
      quote = EwStripe::Quote.retrieve("qt_123")
      quote.description = "Sample quote description"
      quote.save
      assert_requested :post,
                       "#{EwStripe.api_base}/v1/quotes/#{quote.id}"
    end

    context "#accept" do
      should "accept quote" do
        quote = EwStripe::Quote.retrieve("qt_123")
        quote = quote.accept
        assert_requested :post,
                         "#{EwStripe.api_base}/v1/quotes/#{quote.id}/accept"
        assert quote.is_a?(EwStripe::Quote)
      end
    end

    context ".accept" do
      should "accept quote" do
        quote = EwStripe::Quote.accept("qt_123")
        assert_requested :post, "#{EwStripe.api_base}/v1/quotes/qt_123/accept"
        assert quote.is_a?(EwStripe::Quote)
      end
    end

    context "#cancel" do
      should "cancel quote" do
        quote = EwStripe::Quote.retrieve("qt_123")
        quote = quote.cancel
        assert_requested :post,
                         "#{EwStripe.api_base}/v1/quotes/#{quote.id}/cancel"
        assert quote.is_a?(EwStripe::Quote)
      end
    end

    context ".cancel" do
      should "cancel quote" do
        quote = EwStripe::Quote.cancel("qt_123")
        assert_requested :post, "#{EwStripe.api_base}/v1/quotes/qt_123/cancel"
        assert quote.is_a?(EwStripe::Quote)
      end
    end

    context "#finalize" do
      should "finalize quote" do
        quote = EwStripe::Quote.retrieve("qt_123")
        quote = quote.finalize_quote
        assert_requested :post,
                         "#{EwStripe.api_base}/v1/quotes/#{quote.id}/finalize"
        assert quote.is_a?(EwStripe::Quote)
      end
    end

    context ".finalize" do
      should "finalize quote" do
        quote = EwStripe::Quote.finalize_quote("qt_123")
        assert_requested :post, "#{EwStripe.api_base}/v1/quotes/qt_123/finalize"
        assert quote.is_a?(EwStripe::Quote)
      end
    end

    context "#line_items" do
      should "list item items for quote" do
        quote = EwStripe::Quote.retrieve("qt_123")
        line_items = quote.list_line_items
        assert_requested :get,
                         "#{EwStripe.api_base}/v1/quotes/#{quote.id}/line_items"

        assert line_items.data.is_a?(Array)
        assert line_items.data[0].is_a?(EwStripe::LineItem)
      end
    end

    context ".line_items" do
      should "list item items for quote" do
        line_items = EwStripe::Quote.list_line_items("qt_123")
        assert_requested :get,
                         "#{EwStripe.api_base}/v1/quotes/qt_123/line_items"

        assert line_items.data.is_a?(Array)
        assert line_items.data[0].is_a?(EwStripe::LineItem)
      end
    end

    context "#computed_upfront_line_items" do
      should "list item items for quote" do
        quote = EwStripe::Quote.retrieve("qt_123")
        line_items = quote.list_computed_upfront_line_items
        assert_requested :get,
                         "#{EwStripe.api_base}/v1/quotes/#{quote.id}/computed_upfront_line_items"

        assert line_items.data.is_a?(Array)
        assert line_items.data[0].is_a?(EwStripe::LineItem)
      end
    end

    context ".computed_upfront_line_items" do
      should "list item items for quote" do
        line_items = EwStripe::Quote.list_computed_upfront_line_items("qt_123")
        assert_requested :get,
                         "#{EwStripe.api_base}/v1/quotes/qt_123/computed_upfront_line_items"

        assert line_items.data.is_a?(Array)
        assert line_items.data[0].is_a?(EwStripe::LineItem)
      end
    end

    context "uploads_base methods" do
      setup do
        # We don't point to the same host for the API and uploads in
        # production, but `stripe-mock` supports both APIs.
        EwStripe.uploads_base = EwStripe.api_base
      end

      context "#pdf" do
        should "generate binary response for quote" do
          quote = EwStripe::Quote.retrieve("qt_123")
          body = +""

          # Set `api_base` to `nil` to ensure that these PDF requests are _not_ sent
          # to the default API hostname.
          EwStripe.api_base = nil

          quote.pdf do |read_body_chunk|
            body << read_body_chunk
          end

          # Reset the API base.
          EwStripe.api_base = EwStripe.uploads_base

          assert_requested :get,
                           "#{EwStripe.uploads_base}/v1/quotes/#{quote.id}/pdf"
          assert_equal "Stripe binary response", body
        end

        should "raise when no block is passed" do
          quote = EwStripe::Quote.retrieve("qt_123")

          assert_raises ArgumentError do
            quote.pdf
          end
        end
      end

      context ".pdf" do
        should "generate binary response for quote" do
          body = +""

          # Set `api_base` to `nil` to ensure that these PDF requests are _not_ sent
          # to the default API hostname.
          EwStripe.api_base = nil

          EwStripe::Quote.pdf("qt_123") do |read_body_chunk|
            body << read_body_chunk
          end

          # Reset the API base.
          EwStripe.api_base = EwStripe.uploads_base

          assert_requested :get,
                           "#{EwStripe.uploads_base}/v1/quotes/qt_123/pdf"
          assert_equal "Stripe binary response", body
        end

        should "raise when no block is passed" do
          assert_raises ArgumentError do
            EwStripe::Quote.pdf("qt_123")
          end
        end

        should "raise when no ID is passed" do
          assert_raises ArgumentError do
            EwStripe::Quote.pdf do |read_body_chunk|
            end
          end
        end
      end
    end
  end
end
