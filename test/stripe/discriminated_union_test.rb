# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  # Tests for discriminated union serialization on the request side: variants
  # declare a fixed discriminator that the caller never supplies.
  class DiscriminatedUnionTest < Test::Unit::TestCase
    # These fixtures mirror generated output: the variant declares its tag with
    # the `discriminator` macro and does not accept it as a keyword argument.
    # Keep them in step with src/ruby/generator.tsx — a fixture that drifts from
    # the generator stops being evidence about anything.
    # rubocop:disable Naming/MethodParameterName
    class RgbColor < Stripe::RequestParams
      discriminator :model, "rgb"

      attr_accessor :r, :g, :b

      def initialize(r: nil, g: nil, b: nil)
        @r = r
        @g = g
        @b = b
        super()
      end
    end

    class HsvColor < Stripe::RequestParams
      discriminator :model, "hsv"

      attr_accessor :h, :s, :v

      def initialize(h: nil, s: nil, v: nil)
        @h = h
        @s = s
        @v = v
        super()
      end
    end
    # rubocop:enable Naming/MethodParameterName

    # A subclass of a variant. Class-level instance variables are not inherited,
    # so this exercises the ancestor walk in RequestParams.discriminator_field.
    class BrightRgbColor < RgbColor; end

    # A parent params object whose `color` field accepts an inline union variant.
    # Defined after the variants above so it also covers the "no bleed into
    # sibling classes" case.
    class DrawParams < Stripe::RequestParams
      attr_accessor :color

      def initialize(color: nil)
        @color = color
        super()
      end
    end

    context "standalone union RequestParams" do
      should "serialize discriminator and variant fields for RgbColor" do
        params = RgbColor.new(r: 255, g: 128, b: 0)
        result = params.to_h

        assert_equal "rgb", result[:model]
        assert_equal 255, result[:r]
        assert_equal 128, result[:g]
        assert_equal 0, result[:b]
      end

      should "serialize discriminator and variant fields for HsvColor" do
        params = HsvColor.new(h: 180, s: 50, v: 75)
        result = params.to_h

        assert_equal "hsv", result[:model]
        assert_equal 180, result[:h]
        assert_equal 50, result[:s]
        assert_equal 75, result[:v]
      end

      should "serialize the discriminator without the caller supplying it" do
        # The tag is declared on the class, not passed by the caller, so it is
        # not subject to explicit-set tracking and is always serialized.
        params = RgbColor.new(r: 10)
        result = params.to_h

        assert_equal "rgb", result[:model], "discriminator must be present in serialized output"
        assert_equal 10, result[:r]
      end

      should "serialize the discriminator when no fields are set at all" do
        assert_equal({ model: "rgb" }, RgbColor.new.to_h)
      end

      should "not include nil variant fields that were not set" do
        params = RgbColor.new(r: 64)
        result = params.to_h

        assert result.key?(:r)
        refute result.key?(:g), "g was not set and should be omitted"
        refute result.key?(:b), "b was not set and should be omitted"
      end

      should "expose the discriminator as a reader" do
        assert_equal "rgb", RgbColor.new(r: 1).model
      end

      should "not define a writer for the discriminator" do
        refute RgbColor.new(r: 1).respond_to?(:model=),
               "a mutable tag could only produce a payload that lies about its shape"
      end

      should "reject an explicitly supplied discriminator" do
        assert_raises ArgumentError do
          RgbColor.new(model: "hsv", r: 1)
        end
      end

      should "inherit the discriminator in a subclass of a variant" do
        assert_equal({ r: 1, model: "rgb" }, BrightRgbColor.new(r: 1).to_h)
      end
    end

    context "non-variant RequestParams" do
      should "not report a discriminator" do
        assert_nil DrawParams.discriminator_field
        assert_nil Stripe::RequestParams.discriminator_field
      end

      should "not add a discriminator key to the serialized hash" do
        refute DrawParams.new(color: nil).to_h.key?(:model)
      end
    end

    context "inline union RequestParams (nested inside parent params)" do
      should "serialize the discriminator and variant fields when nested" do
        color = RgbColor.new(r: 100, g: 200, b: 50)
        draw = DrawParams.new(color: color)
        result = draw.to_h

        assert_equal({ r: 100, g: 200, b: 50, model: "rgb" }, result[:color])
      end

      should "serialize hsv variant nested inside parent params" do
        color = HsvColor.new(h: 270, s: 80, v: 90)
        draw = DrawParams.new(color: color)
        result = draw.to_h

        assert_equal "hsv", result[:color][:model]
        assert_equal 270, result[:color][:h]
      end
    end
  end
end
