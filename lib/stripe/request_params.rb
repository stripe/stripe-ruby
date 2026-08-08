# frozen_string_literal: true
# typed: true

module Stripe
  # For internal use only. Does not provide a stable API and may be broken
  # with future non-major changes.
  class RequestParams
    class << self
      # Override the object instantiation flow in Ruby in order to track explicitly set keys.
      # We do not want to set a key to nil if the user has not explicitly set it to nil.
      def new(**kwargs)
        instance = allocate
        instance.instance_variable_set(:@_explicitly_set_keys, kwargs.keys.to_set)
        instance.send(:initialize, **kwargs)
        instance
      end

      # Override attr_accessor to create setters that track explicitly set keys
      def attr_accessor(*names)
        names.each do |name|
          # Define getter
          define_method(name) { instance_variable_get("@#{name}") }

          # Define setter that tracks the key as explicitly set
          define_method("#{name}=") do |value|
            @_explicitly_set_keys&.add(name)
            instance_variable_set("@#{name}", value)
          end
        end
      end
    end

    def to_h
      encodings = self.class.field_encodings
      instance_variables.each_with_object({}) do |var, hash|
        # _explicitly_set_keys is set as an instance variable.
        # Ignore the var if it is _explicitly_set_keys itself.
        next if var == :@_explicitly_set_keys

        key = var.to_s.delete("@").to_sym
        value = instance_variable_get(var)

        # Only include keys that were explicitly set
        next if @_explicitly_set_keys && !@_explicitly_set_keys.include?(key)

        hash[key] = if value.is_a?(RequestParams)
                      value.to_h
                    # Check if value is an array and contains RequestParams objects
                    elsif value.is_a?(Array)
                      value.map { |item| item.is_a?(RequestParams) ? item.to_h : item }
                    else
                      value
                    end

        # Coerce fields based on encoding schema (int64_string, nested objects, arrays)
        encoding = encodings[key]
        hash[key] = self.class.coerce_value(hash[key], encoding) if encoding
      end
    end

    def self.field_encodings
      @field_encodings ||= {}
    end

    def self.coerce_value(value, encoding)
      V2TypeCoercion.coerce_value(value, encoding, direction: :encode)
    end

    # Coerce a plain Hash using this class's field_encodings.
    # Called from generated service methods when params is a Hash
    # (not a RequestParams instance) to ensure int64_string fields
    # are serialized as strings on the wire.
    def self.coerce_params(params)
      return params unless params.is_a?(Hash)

      encodings = field_encodings
      return params if encodings.empty?

      params.each_with_object({}) do |(k, v), result|
        encoding = encodings[k.to_sym]
        result[k] = encoding ? coerce_value(v, encoding) : v
      end
    end
  end
end
