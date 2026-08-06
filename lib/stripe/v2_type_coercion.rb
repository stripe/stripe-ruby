# frozen_string_literal: true
# typed: true

require "bigdecimal"

module Stripe
  # Shared V2 type coercion logic for encoding/decoding values between
  # native Ruby types and their wire representations.
  #
  # Used by RequestParams (encode: native → wire) and StripeObject (decode: wire → native).
  module V2TypeCoercion
    module_function

    # Coerce a single value based on its field encoding schema.
    # direction: :encode (request: native → wire) or :decode (response: wire → native)
    def coerce_value(value, encoding, direction:)
      return value if value.nil?

      case encoding
      when :int64_string
        coerce_int64_string(value, direction)
      when :decimal_string
        coerce_decimal_string(value, direction)
      when Hash
        coerce_composite(value, encoding, direction)
      else
        value
      end
    end

    # Coerce all fields in a hash according to a schema map.
    def coerce_fields(hash, schema, direction:)
      return hash unless hash.is_a?(Hash)
      return hash if schema.nil? || schema.empty?

      hash.each_with_object({}) do |(k, v), result|
        field_encoding = schema[k.to_sym]
        result[k] = field_encoding ? coerce_value(v, field_encoding, direction: direction) : v
      end
    end

    # --- leaf coercions ---

    def coerce_int64_string(value, direction)
      case direction
      when :encode
        case value
        when Integer then value.to_s
        when Array then value.map { |v| v.is_a?(Integer) ? v.to_s : v }
        else value
        end
      when :decode
        case value
        when String then Integer(value)
        when Array then value.map { |v| v.is_a?(String) ? Integer(v) : v }
        else value
        end
      end
    end

    def coerce_decimal_string(value, direction)
      case direction
      when :encode
        case value
        when BigDecimal then value.to_s("F")
        when Integer, Float then value.to_s
        when Array then value.map { |v| coerce_decimal_string(v, direction) }
        else value
        end
      when :decode
        case value
        when String then BigDecimal(value)
        when Array then value.map { |v| coerce_decimal_string(v, direction) }
        else value
        end
      end
    end

    # --- composite coercions ---

    def coerce_composite(value, encoding, direction)
      case encoding[:kind]
      when :object
        coerce_object(value, encoding[:fields] || {}, direction)
      when :array
        return value unless value.is_a?(Array)

        value.map { |v| coerce_value(v, encoding[:element], direction: direction) }
      else
        value
      end
    end

    def coerce_object(value, fields_schema, direction)
      return value unless value.is_a?(Hash)

      coerce_fields(value, fields_schema, direction: direction)
    end
  end
end
