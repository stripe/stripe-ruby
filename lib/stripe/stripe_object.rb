module Stripe
  class StripeObject
    include Enumerable

    attr_accessor :api_key
    @@permanent_attributes = Set.new([:api_key, :id])

    # The default :id method is deprecated and isn't useful to us
    if method_defined?(:id)
      undef :id
    end

    def initialize(id=nil, api_key=nil)
      # parameter overloading!
      if id.kind_of?(Hash)
        @retrieve_options = id.dup
        @retrieve_options.delete(:id)
        id = id[:id]
      else
        @retrieve_options = {}
      end

      @api_key = api_key
      @values = {}
      # This really belongs in APIResource, but not putting it there allows us
      # to have a unified inspect method
      @unsaved_values = Set.new
      @transient_values = Set.new
      @values[:id] = id if id
    end

    def self.construct_from(values, api_key=nil)
      obj = self.new(values[:id], api_key)
      obj.refresh_from(values, api_key)
      obj
    end

    def to_s(*args)
      JSON.pretty_generate(@values)
    end

    def inspect()
      id_string = (self.respond_to?(:id) && !self.id.nil?) ? " id=#{self.id}" : ""
      "#<#{self.class}:0x#{self.object_id.to_s(16)}#{id_string}> JSON: " + JSON.pretty_generate(@values)
    end

    def refresh_from(values, api_key, partial=false)
      @api_key = api_key

      @previous_metadata = values[:metadata]
      removed = partial ? Set.new : Set.new(@values.keys - values.keys)
      added = Set.new(values.keys - @values.keys)
      # Wipe old state before setting new.  This is useful for e.g. updating a
      # customer, where there is no persistent card parameter.  Mark those values
      # which don't persist as transient

      instance_eval do
        remove_accessors(removed)
        add_accessors(added)
      end
      removed.each do |k|
        @values.delete(k)
        @transient_values.add(k)
        @unsaved_values.delete(k)
      end
      values.each do |k, v|
        @values[k] = Util.convert_to_stripe_object(v, api_key)
        @transient_values.delete(k)
        @unsaved_values.delete(k)
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
      @values
    end

    def each(&blk)
      @values.each(&blk)
    end

    def _dump(level)
      Marshal.dump([@values, @api_key])
    end

    def self._load(args)
      values, api_key = Marshal.load(args)
      construct_from(values, api_key)
    end

    if RUBY_VERSION < '1.9.2'
      def respond_to?(symbol)
        @values.has_key?(symbol) || super
      end
    end

    protected

    def metaclass
      class << self; self; end
    end

    def remove_accessors(keys)
      metaclass.instance_eval do
        keys.each do |k|
          next if @@permanent_attributes.include?(k)
          k_eq = :"#{k}="
          remove_method(k) if method_defined?(k)
          remove_method(k_eq) if method_defined?(k_eq)
        end
      end
    end

    def add_accessors(keys)
      metaclass.instance_eval do
        keys.each do |k|
          next if @@permanent_attributes.include?(k)
          k_eq = :"#{k}="
          define_method(k) { @values[k] }
          define_method(k_eq) do |v|
            if v == ""
              raise ArgumentError.new(
                "You cannot set #{k} to an empty string." +
                "We interpret empty strings as nil in requests." +
                "You may set #{self}.#{k} = nil to delete the property.")
            end
            @values[k] = v
            @unsaved_values.add(k)
          end
        end
      end
    end

    def method_missing(name, *args)
      # TODO: only allow setting in updateable classes.
      if name.to_s.end_with?('=')
        attr = name.to_s[0...-1].to_sym
        add_accessors([attr])
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
      @values.has_key?(symbol) || super
    end
  end
end
