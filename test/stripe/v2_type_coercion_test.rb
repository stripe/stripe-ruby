# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)
require "bigdecimal"

module Stripe
  class V2TypeCoercionTest < Test::Unit::TestCase
    context "encode direction (request: native → wire)" do
      context "int64_string" do
        should "convert Integer to String" do
          assert_equal "42", V2TypeCoercion.coerce_value(42, :int64_string, direction: :encode)
          assert_equal "0", V2TypeCoercion.coerce_value(0, :int64_string, direction: :encode)
          assert_equal "-7", V2TypeCoercion.coerce_value(-7, :int64_string, direction: :encode)
        end

        should "pass through String" do
          assert_equal "42", V2TypeCoercion.coerce_value("42", :int64_string, direction: :encode)
        end

        should "convert Array of Integers" do
          assert_equal %w[1 2 3], V2TypeCoercion.coerce_value([1, 2, 3], :int64_string, direction: :encode)
        end

        should "handle mixed Array" do
          assert_equal %w[1 already 3], V2TypeCoercion.coerce_value([1, "already", 3], :int64_string, direction: :encode)
        end
      end

      context "decimal_string" do
        should "convert BigDecimal to String" do
          assert_equal "99.999", V2TypeCoercion.coerce_value(BigDecimal("99.999"), :decimal_string, direction: :encode)
          assert_equal "0.0", V2TypeCoercion.coerce_value(BigDecimal("0"), :decimal_string, direction: :encode)
        end

        should "convert Integer to String" do
          assert_equal "42", V2TypeCoercion.coerce_value(42, :decimal_string, direction: :encode)
        end

        should "convert Float to String" do
          assert_equal "3.14", V2TypeCoercion.coerce_value(3.14, :decimal_string, direction: :encode)
        end

        should "pass through String" do
          assert_equal "99.5", V2TypeCoercion.coerce_value("99.5", :decimal_string, direction: :encode)
        end

        should "convert Array of BigDecimal" do
          result = V2TypeCoercion.coerce_value(
            [BigDecimal("1.1"), BigDecimal("2.2")],
            :decimal_string,
            direction: :encode
          )
          assert_equal %w[1.1 2.2], result
        end
      end
    end

    context "decode direction (response: wire → native)" do
      context "int64_string" do
        should "convert String to Integer" do
          assert_equal 42, V2TypeCoercion.coerce_value("42", :int64_string, direction: :decode)
          assert_equal 0, V2TypeCoercion.coerce_value("0", :int64_string, direction: :decode)
          assert_equal(-7, V2TypeCoercion.coerce_value("-7", :int64_string, direction: :decode))
        end

        should "pass through Integer" do
          assert_equal 42, V2TypeCoercion.coerce_value(42, :int64_string, direction: :decode)
        end

        should "convert Array of Strings" do
          assert_equal [1, 2, 3], V2TypeCoercion.coerce_value(%w[1 2 3], :int64_string, direction: :decode)
        end

        should "handle mixed Array" do
          assert_equal [1, 2, 3], V2TypeCoercion.coerce_value(["1", 2, "3"], :int64_string, direction: :decode)
        end
      end

      context "decimal_string" do
        should "convert String to BigDecimal" do
          assert_equal BigDecimal("99.999"), V2TypeCoercion.coerce_value("99.999", :decimal_string, direction: :decode)
          assert_equal BigDecimal("0"), V2TypeCoercion.coerce_value("0", :decimal_string, direction: :decode)
          assert_equal BigDecimal("-1.5"), V2TypeCoercion.coerce_value("-1.5", :decimal_string, direction: :decode)
        end

        should "pass through BigDecimal" do
          val = BigDecimal("3.14")
          assert_equal val, V2TypeCoercion.coerce_value(val, :decimal_string, direction: :decode)
        end

        should "convert Array of Strings" do
          result = V2TypeCoercion.coerce_value(%w[1.1 2.2], :decimal_string, direction: :decode)
          assert_equal [BigDecimal("1.1"), BigDecimal("2.2")], result
        end
      end
    end

    context "nil handling" do
      should "return nil as-is regardless of encoding" do
        assert_nil V2TypeCoercion.coerce_value(nil, :int64_string, direction: :encode)
        assert_nil V2TypeCoercion.coerce_value(nil, :int64_string, direction: :decode)
        assert_nil V2TypeCoercion.coerce_value(nil, :decimal_string, direction: :encode)
        assert_nil V2TypeCoercion.coerce_value(nil, { kind: :object, fields: {} }, direction: :encode)
      end
    end

    context "unknown encoding" do
      should "return value as-is" do
        assert_equal 42, V2TypeCoercion.coerce_value(42, :unknown_thing, direction: :encode)
        assert_equal "hi", V2TypeCoercion.coerce_value("hi", :unknown_thing, direction: :decode)
      end
    end

    context "composite: object" do
      should "coerce fields recursively (encode)" do
        encoding = { kind: :object, fields: { amount: :int64_string } }
        input = { amount: 100, name: "test" }
        expected = { amount: "100", name: "test" }
        assert_equal expected, V2TypeCoercion.coerce_value(input, encoding, direction: :encode)
      end

      should "coerce fields recursively (decode)" do
        encoding = { kind: :object, fields: { amount: :int64_string } }
        input = { amount: "100", name: "test" }
        expected = { amount: 100, name: "test" }
        assert_equal expected, V2TypeCoercion.coerce_value(input, encoding, direction: :decode)
      end

      should "return non-Hash as-is" do
        encoding = { kind: :object, fields: { amount: :int64_string } }
        assert_equal "not a hash", V2TypeCoercion.coerce_value("not a hash", encoding, direction: :encode)
      end

      should "handle string keys" do
        encoding = { kind: :object, fields: { amount: :int64_string } }
        input = { "amount" => 100, "name" => "test" }
        expected = { "amount" => "100", "name" => "test" }
        assert_equal expected, V2TypeCoercion.coerce_value(input, encoding, direction: :encode)
      end
    end

    context "composite: array" do
      should "coerce each element (encode)" do
        encoding = { kind: :array, element: :int64_string }
        assert_equal %w[1 2 3], V2TypeCoercion.coerce_value([1, 2, 3], encoding, direction: :encode)
      end

      should "coerce each element (decode)" do
        encoding = { kind: :array, element: :int64_string }
        assert_equal [1, 2, 3], V2TypeCoercion.coerce_value(%w[1 2 3], encoding, direction: :decode)
      end

      should "coerce array of objects" do
        encoding = { kind: :array, element: { kind: :object, fields: { id: :int64_string } } }
        input = [{ id: 1, name: "a" }, { id: 2, name: "b" }]
        expected = [{ id: "1", name: "a" }, { id: "2", name: "b" }]
        assert_equal expected, V2TypeCoercion.coerce_value(input, encoding, direction: :encode)
      end

      should "return non-Array as-is" do
        encoding = { kind: :array, element: :int64_string }
        assert_equal "not an array", V2TypeCoercion.coerce_value("not an array", encoding, direction: :encode)
      end
    end

    context "coerce_fields" do
      should "coerce matching fields and pass through others" do
        schema = { amount: :int64_string, price: :decimal_string }
        input = { amount: 100, price: BigDecimal("9.99"), name: "test" }
        expected = { amount: "100", price: "9.99", name: "test" }
        assert_equal expected, V2TypeCoercion.coerce_fields(input, schema, direction: :encode)
      end

      should "return input when schema is nil or empty" do
        input = { amount: 100 }
        assert_equal input, V2TypeCoercion.coerce_fields(input, nil, direction: :encode)
        assert_equal input, V2TypeCoercion.coerce_fields(input, {}, direction: :encode)
      end

      should "return non-Hash as-is" do
        assert_equal "not a hash", V2TypeCoercion.coerce_fields("not a hash", { x: :int64_string }, direction: :encode)
      end
    end
  end
end
