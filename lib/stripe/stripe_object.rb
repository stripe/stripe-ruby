module Stripe
  class StripeObject
    include Enumerable

    @@permanent_attributes = Set.new([:id])

    # The default :id method is deprecated and isn't useful to us
    if method_defined?(:id)
      undef :id
    end

    def initialize(id=nil, opts={})
      id, @retrieve_params = Util.normalize_id(id)
      @opts = Util.normalize_opts(opts)
      @original_values = {}
      @values = {}
      # This really belongs in APIResource, but not putting it there allows us
      # to have a unified inspect method
      @unsaved_values = Set.new
      @transient_values = Set.new
      @values[:id] = id if id
    end

    def self.construct_from(values, opts={})
      values = Stripe::Util.symbolize_names(values)

      # work around protected #initialize_from for now
      self.new(values[:id]).send(:initialize_from, values, opts)
    end

    # Determines the equality of two Stripe objects. Stripe objects are
    # considered to be equal if they have the same set of values and each one
    # of those values is the same.
    def ==(other)
      @values == other.instance_variable_get(:@values)
    end

    # Indicates whether or not the resource has been deleted on the server.
    # Note that some, but not all, resources can indicate whether they have
    # been deleted.
    def deleted?
      @values.fetch(:deleted, false)
    end

    def to_s(*args)
      JSON.pretty_generate(@values)
    end

    def inspect
      id_string = (self.respond_to?(:id) && !self.id.nil?) ? " id=#{self.id}" : ""
      "#<#{self.class}:0x#{self.object_id.to_s(16)}#{id_string}> JSON: " + JSON.pretty_generate(@values)
    end

    # Re-initializes the object based on a hash of values (usually one that's
    # come back from an API call). Adds or removes value accessors as necessary
    # and updates the state of internal data.
    #
    # Please don't use this method. If you're trying to do mass assignment, try
    # #initialize_from instead.
    def refresh_from(values, opts, partial=false)
      initialize_from(values, opts, partial)
    end
    extend Gem::Deprecate
    deprecate :refresh_from, "#update_attributes", 2016, 01

    # Mass assigns attributes on the model.
    #
    # This is a version of +update_attributes+ that takes some extra options
    # for internal use.
    #
    # ==== Attributes
    #
    # * +values+ - Hash of values to use to update the current attributes of
    #   the object.
    #
    # ==== Options
    #
    # * +:opts+ Options for StripeObject like an API key.
    def update_attributes(values, opts = {})
      values.each do |k, v|
        @values[k] = Util.convert_to_stripe_object(v, opts)
        @unsaved_values.add(k)
      end
    end

    def [](k)
      @values[k.to_sym]
    end

    def []=(k, v)
      send(:"#{k}=", v)
    end

    def keys
      @values.keys
    end

    def values
      @values.values
    end

    def to_json(*a)
      JSON.generate(@values)
    end

    def as_json(*a)
      @values.as_json(*a)
    end

    def to_hash
      maybe_to_hash = lambda do |value|
        value.respond_to?(:to_hash) ? value.to_hash : value
      end

      @values.inject({}) do |acc, (key, value)|
        acc[key] = case value
                   when Array
                     value.map(&maybe_to_hash)
                   else
                     maybe_to_hash.call(value)
                   end
        acc
      end
    end

    def each(&blk)
      @values.each(&blk)
    end

    def _dump(level)
      Marshal.dump([@values, @opts])
    end

    def self._load(args)
      values, opts = Marshal.load(args)
      construct_from(values, opts)
    end

    if RUBY_VERSION < '1.9.2'
      def respond_to?(symbol)
        @values.has_key?(symbol) || super
      end
    end

    def serialize_nested_object(key)
      new_value = @values[key]
      if new_value.is_a?(APIResource)
        return {}
      end

      if @unsaved_values.include?(key)
        # the object has been reassigned
        # e.g. as object.key = {foo => bar}
        update = new_value
        update = update.to_hash if update.is_a?(StripeObject)
        new_keys = update.keys.map(&:to_sym)

        # remove keys at the server, but not known locally
        if @original_values[key]
          keys_to_unset = @original_values[key].keys - new_keys
          keys_to_unset.each {|key| update[key] = ''}
        end

        update
      else
        # can be serialized normally
        self.class.serialize_params(new_value)
      end
    end

    def self.serialize_params(obj, original_value=nil)
      case obj
      when nil
        ''
      when Array
        update = obj.map { |v| serialize_params(v) }
        if original_value != update
          update
        else
          nil
        end
      when StripeObject
        unsaved_keys = obj.instance_variable_get(:@unsaved_values)
        obj_values = obj.instance_variable_get(:@values)
        update_hash = {}

        unsaved_keys.each do |k|
          update_hash[k] = serialize_params(obj_values[k])
        end

        obj_values.each do |k, v|
          if v.is_a?(Array)
            original_value = obj.instance_variable_get(:@original_values)[k]

            # the conditional here tests whether the old and new values are
            # different (and therefore needs an update), or the same (meaning
            # we can leave it out of the request)
            if updated = serialize_params(v, original_value)
              update_hash[k] = updated
            else
              update_hash.delete(k)
            end
          elsif v.is_a?(StripeObject) || v.is_a?(Hash)
            update_hash[k] = obj.serialize_nested_object(k)
          end
        end

        update_hash
      else
        obj
      end
    end

    protected

    def metaclass
      class << self; self; end
    end

    def protected_fields
      []
    end

    def remove_accessors(keys)
      f = protected_fields
      metaclass.instance_eval do
        keys.each do |k|
          next if f.include?(k)
          next if @@permanent_attributes.include?(k)
          k_eq = :"#{k}="
          remove_method(k) if method_defined?(k)
          remove_method(k_eq) if method_defined?(k_eq)
        end
      end
    end

    def add_accessors(keys, values)
      f = protected_fields
      metaclass.instance_eval do
        keys.each do |k|
          next if f.include?(k)
          next if @@permanent_attributes.include?(k)
          k_eq = :"#{k}="
          define_method(k) { @values[k] }
          define_method(k_eq) do |v|
            if v == ""
              raise ArgumentError.new(
                "You cannot set #{k} to an empty string. " \
                "We interpret empty strings as nil in requests. " \
                "You may set #{self}.#{k} = nil to delete the property.")
            end
            @values[k] = v
            @unsaved_values.add(k)
          end

          if [FalseClass, TrueClass].include?(values[k].class)
            k_bool = :"#{k}?"
            define_method(k_bool) { @values[k] }
          end
        end
      end
    end

    def method_missing(name, *args)
      # TODO: only allow setting in updateable classes.
      if name.to_s.end_with?('=')
        attr = name.to_s[0...-1].to_sym

        # the second argument is only required when adding boolean accessors
        add_accessors([attr], {})

        begin
          mth = method(name)
        rescue NameError
          raise NoMethodError.new("Cannot set #{attr} on this object. HINT: you can't set: #{@@permanent_attributes.to_a.join(', ')}")
        end
        return mth.call(args[0])
      else
        return @values[name] if @values.has_key?(name)
      end

      begin
        super
      rescue NoMethodError => e
        if @transient_values.include?(name)
          raise NoMethodError.new(e.message + ".  HINT: The '#{name}' attribute was set in the past, however.  It was then wiped when refreshing the object with the result returned by Stripe's API, probably as a result of a save().  The attributes currently available on this object are: #{@values.keys.join(', ')}")
        else
          raise
        end
      end
    end

    def respond_to_missing?(symbol, include_private = false)
      @values && @values.has_key?(symbol) || super
    end

    # Re-initializes the object based on a hash of values (usually one that's
    # come back from an API call). Adds or removes value accessors as necessary
    # and updates the state of internal data.
    #
    # Protected on purpose! Please do not expose.
    #
    # ==== Options
    #
    # * +:values:+ Hash used to update accessors and values.
    # * +:opts:+ Options for StripeObject like an API key.
    # * +:partial:+ Indicates that the re-initialization should not attempt to
    #   remove accessors.
    def initialize_from(values, opts, partial=false)
      @opts = Util.normalize_opts(opts)
      @original_values = Marshal.load(Marshal.dump(values)) # deep copy

      removed = partial ? Set.new : Set.new(@values.keys - values.keys)
      added = Set.new(values.keys - @values.keys)

      # Wipe old state before setting new.  This is useful for e.g. updating a
      # customer, where there is no persistent card parameter.  Mark those values
      # which don't persist as transient

      instance_eval do
        remove_accessors(removed)
        add_accessors(added, values)
      end

      removed.each do |k|
        @values.delete(k)
        @transient_values.add(k)
        @unsaved_values.delete(k)
      end

      update_attributes(values, opts)
      values.each do |k, _|
        @transient_values.delete(k)
        @unsaved_values.delete(k)
      end

      self
    end
  end
end
