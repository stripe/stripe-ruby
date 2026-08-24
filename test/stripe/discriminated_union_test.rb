# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  # Tests for discriminated union serialization on both the request side
  # (RequestParams variants declaring a fixed discriminator) and the response
  # side (StripeObject dispatching a union field to its variant class).
  class DiscriminatedUnionTest < Test::Unit::TestCase
    # --- Request-side fixtures ---
    #
    # These mirror generated output: the variant declares its tag with the
    # `discriminator` macro and does not accept it as a keyword argument. Keep
    # them in step with src/ruby/generator.tsx — a fixture that drifts from the
    # generator stops being evidence about anything.
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

    # A subclass of a variant, exercising inheritance of the singleton method
    # that `discriminator` defines.
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
        assert_empty DrawParams.discriminator_fields
        assert_empty Stripe::RequestParams.discriminator_fields
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

    # --- Response-side fixtures ---
    #
    # These mirror generated output for a union field: a base class per union,
    # one subclass per known variant, and the two class maps the runtime reads.
    class ColorBase < Stripe::StripeObject; end
    class RgbVariant < ColorBase; end
    class HsvVariant < ColorBase; end

    class DrawResource < Stripe::StripeObject
      def self.inner_class_types
        @inner_class_types = { color: ColorBase }
      end

      def self.inner_class_union_variant_types
        @inner_class_union_variant_types = {
          color: ["model", { rgb: RgbVariant, hsv: HsvVariant }],
        }
      end
    end

    context "response-side union dispatch" do
      should "resolve a known variant to its variant class" do
        obj = DrawResource.construct_from({ color: { model: "rgb", r: 255, g: 128, b: 0 } })

        assert_instance_of RgbVariant, obj.color
        assert_equal "rgb", obj.color.model
        assert_equal 255, obj.color.r
      end

      should "resolve a different known variant to its own class" do
        obj = DrawResource.construct_from({ color: { model: "hsv", h: 180, s: 50, v: 75 } })

        assert_instance_of HsvVariant, obj.color
        assert_equal 180, obj.color.h
      end

      should "resolve a symbol discriminator to its variant class" do
        obj = DrawResource.construct_from({ color: { model: :rgb, r: 1 } })

        assert_instance_of RgbVariant, obj.color
      end

      should "fall back to the base class for an unrecognized variant" do
        # A variant the API ships after this release must still deserialize.
        obj = DrawResource.construct_from({ color: { model: "cmyk", c: 1, m: 2 } })

        assert_instance_of ColorBase, obj.color
        assert_equal "cmyk", obj.color.model
        assert_equal 1, obj.color.c
      end

      should "fall back to the base class when the discriminator is missing" do
        obj = DrawResource.construct_from({ color: { r: 1, g: 2, b: 3 } })

        assert_instance_of ColorBase, obj.color
        assert_equal 1, obj.color.r
      end

      should "fall back to the base class when the discriminator is not a string" do
        obj = DrawResource.construct_from({ color: { model: 123, r: 1 } })

        assert_instance_of ColorBase, obj.color
        assert_equal 123, obj.color.model
      end

      should "not raise for any unresolvable discriminator" do
        [{ model: "cmyk" }, { r: 1 }, { model: 123 }, { model: nil }, { model: {} }].each do |color|
          DrawResource.construct_from({ color: color })
        end
      end

      should "leave a nil union field alone" do
        assert_nil DrawResource.construct_from({ color: nil }).color
      end

      should "not affect objects without a union variant map" do
        obj = Stripe::StripeObject.construct_from({ model: "rgb", r: 255 })

        assert_instance_of Stripe::StripeObject, obj
        assert_equal "rgb", obj.model
        assert_equal 255, obj.r
      end
    end
  end
end
