# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  # Tests for discriminated union serialization on both the request side
  # (RequestParams with a defaulted discriminator field) and the response
  # side (StripeObject construction from a hash containing a discriminator).
  class DiscriminatedUnionTest < Test::Unit::TestCase
    # --- Request-side fixtures ---

    # A standalone union where each variant is a distinct RequestParams class.
    # The discriminator field (model) defaults to the variant name so callers
    # only need to supply the variant-specific fields.
    # rubocop:disable Naming/MethodParameterName
    class RgbColor < Stripe::RequestParams
      attr_accessor :model, :r, :g, :b

      def initialize(model: "rgb", r: nil, g: nil, b: nil)
        @model = model
        @r = r
        @g = g
        @b = b
        super()
      end
    end

    class HsvColor < Stripe::RequestParams
      attr_accessor :model, :h, :s, :v

      def initialize(model: "hsv", h: nil, s: nil, v: nil)
        @model = model
        @h = h
        @s = s
        @v = v
        super()
      end
    end
    # rubocop:enable Naming/MethodParameterName

    # A parent params object whose `color` field accepts an inline union variant.
    class DrawParams < Stripe::RequestParams
      attr_accessor :color

      def initialize(color: nil)
        @color = color
        super()
      end
    end

    context "standalone union RequestParams" do
      should "serialize discriminator and variant fields for RgbColor" do
        params = RgbColor.new(model: "rgb", r: 255, g: 128, b: 0)
        result = params.to_h

        assert_equal "rgb", result[:model]
        assert_equal 255, result[:r]
        assert_equal 128, result[:g]
        assert_equal 0, result[:b]
      end

      should "serialize discriminator and variant fields for HsvColor" do
        params = HsvColor.new(model: "hsv", h: 180, s: 50, v: 75)
        result = params.to_h

        assert_equal "hsv", result[:model]
        assert_equal 180, result[:h]
        assert_equal 50, result[:s]
        assert_equal 75, result[:v]
      end

      should "default discriminator to the variant name when not explicitly supplied" do
        # When the caller omits `model:`, the initialize default sets @model but
        # the explicit-key tracker does not include it.  Callers who rely on the
        # default must pass the discriminator explicitly for it to appear in the
        # serialized hash; this test documents that expectation.
        params = RgbColor.new(model: "rgb", r: 10)
        result = params.to_h

        assert_equal "rgb", result[:model], "discriminator must be present in serialized output"
        assert_equal 10, result[:r]
      end

      should "not include nil variant fields that were not set" do
        params = RgbColor.new(model: "rgb", r: 64)
        result = params.to_h

        assert result.key?(:r)
        refute result.key?(:g), "g was not set and should be omitted"
        refute result.key?(:b), "b was not set and should be omitted"
      end
    end

    context "inline union RequestParams (nested inside parent params)" do
      should "serialize the discriminator and variant fields when nested" do
        color = RgbColor.new(model: "rgb", r: 100, g: 200, b: 50)
        draw = DrawParams.new(color: color)
        result = draw.to_h

        assert_equal({ model: "rgb", r: 100, g: 200, b: 50 }, result[:color])
      end

      should "serialize hsv variant nested inside parent params" do
        color = HsvColor.new(model: "hsv", h: 270, s: 80, v: 90)
        draw = DrawParams.new(color: color)
        result = draw.to_h

        assert_equal "hsv", result[:color][:model]
        assert_equal 270, result[:color][:h]
      end
    end

    context "response-side StripeObject construction" do
      should "expose discriminator field as an accessor" do
        obj = Stripe::StripeObject.construct_from({ model: "rgb", r: 255, g: 128, b: 0 })

        assert_equal "rgb", obj.model
      end

      should "expose all variant fields on the StripeObject" do
        obj = Stripe::StripeObject.construct_from({ model: "rgb", r: 255, g: 128, b: 0 })

        assert_equal 255, obj.r
        assert_equal 128, obj.g
        assert_equal 0, obj.b
      end

      should "work for a different discriminator variant" do
        obj = Stripe::StripeObject.construct_from({ model: "hsv", h: 180, s: 50, v: 75 })

        assert_equal "hsv", obj.model
        assert_equal 180, obj.h
        assert_equal 50, obj.s
        assert_equal 75, obj.v
      end

      should "construct nested discriminated union from hash" do
        # Simulates an API response where a field contains an inline union object.
        obj = Stripe::StripeObject.construct_from({
          id: "draw_123",
          color: { model: "rgb", r: 10, g: 20, b: 30 },
        })

        assert_equal "draw_123", obj.id
        assert_equal "rgb", obj.color.model
        assert_equal 10, obj.color.r
      end
    end
  end
end
