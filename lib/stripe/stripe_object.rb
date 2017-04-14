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
      other.is_a?(StripeObject) && @values == other.instance_variable_get(:@values)
    end

    # Indicates whether or not the resource has been deleted on the server.
    # Note that some, but not all, resources can indicate whether they have
    # been deleted.
    def deleted?
      @values.fetch(:deleted, false)
    end

    def to_s(*args)
      JSON.pretty_generate(to_hash)
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
    # * +opts+ - Options for +StripeObject+ like an API key that will be reused
    #   on subsequent API calls.
    #
    # ==== Options
    #
    # * +:dirty+ - Whether values should be initiated as "dirty" (unsaved) and
    #   which applies only to new StripeObjects being initiated under this
    #   StripeObject. Defaults to true.
    def update_attributes(values, opts = {}, method_options = {})
      # Default to true. TODO: Convert to optional arguments after we're off
      # 1.9 which will make this quite a bit more clear.
      dirty = method_options.fetch(:dirty, true)
      values.each do |k, v|
        add_accessors([k], values) unless metaclass.method_defined?(k.to_sym)
        @values[k] = Util.convert_to_stripe_object(v, opts)
        dirty_value!(@values[k]) if dirty
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
      # The StripeClient instance in @opts is not serializable and is not
      # really a property of the StripeObject, so we exclude it when
      # dumping
      opts = @opts.clone
      opts.delete(:client)
      Marshal.dump([@values, opts])
    end

    def self._load(args)
      values, opts = Marshal.load(args)
      construct_from(values, opts)
    end

    # Sets all keys within the StripeObject as unsaved so that they will be
    # included with an update when #serialize_params is called. This method is
    # also recursive, so any StripeObjects contained as values or which are
    # values in a tenant array are also marked as dirty.
    def dirty!
      @unsaved_values = Set.new(@values.keys)
      @values.each do |k, v|
        dirty_value!(v)
      end
    end

    def serialize_params(options = {})
      update_hash = {}

      @values.each do |k, v|
        # There are a few reasons that we may want to add in a parameter for
        # update:
        #
        #   1. The `force` option has been set.
        #   2. We know that it was modified.
        #   3. Its value is a StripeObject. A StripeObject may contain modified
        #      values within in that its parent StripeObject doesn't know about.
        #
        unsaved = @unsaved_values.include?(k)
        if options[:force] || unsaved || v.is_a?(StripeObject)
          update_hash[k.to_sym] =
            serialize_params_value(@values[k], @original_values[k], unsaved, options[:force])
        end
      end

      # a `nil` that makes it out of `#serialize_params_value` signals an empty
      # value that we shouldn't appear in the serialized form of the object
      update_hash.reject! { |_, v| v == nil }

      update_hash
    end

    class << self
      # This class method has been deprecated in favor of the instance method
      # of the same name.
      def serialize_params(obj, options = {})
        obj.serialize_params(options)
      end
      extend Gem::Deprecate
      deprecate :serialize_params, "#serialize_params", 2016, 9
    end

    protected

    # A protected field is one that doesn't get an accessor assigned to it
    # (i.e. `obj.public = ...`) and one which is not allowed to be updated via
    # the class level `Model.update(id, { ... })`.
    def self.protected_fields
      []
    end

    def metaclass
      class << self; self; end
    end

    def remove_accessors(keys)
      # not available in the #instance_eval below
      protected_fields = self.class.protected_fields

      metaclass.instance_eval do
        keys.each do |k|
          next if protected_fields.include?(k)
          next if @@permanent_attributes.include?(k)

          # Remove methods for the accessor's reader and writer.
          [k, :"#{k}=", :"#{k}?"].each do |method_name|
            if method_defined?(method_name)
              remove_method(method_name)
            end
          end
        end
      end
    end

    def add_accessors(keys, values)
      # not available in the #instance_eval below
      protected_fields = self.class.protected_fields

      metaclass.instance_eval do
        keys.each do |k|
          next if protected_fields.include?(k)
          next if @@permanent_attributes.include?(k)

          define_method(k) { @values[k] }
          define_method(:"#{k}=") do |v|
            if v == ""
              raise ArgumentError.new(
                "You cannot set #{k} to an empty string. " \
                "We interpret empty strings as nil in requests. " \
                "You may set (object).#{k} = nil to delete the property.")
            end
            @values[k] = Util.convert_to_stripe_object(v, @opts)
            dirty_value!(@values[k])
            @unsaved_values.add(k)
          end

          if [FalseClass, TrueClass].include?(values[k].class)
            define_method(:"#{k}?") { @values[k] }
          end
        end
      end
    end

    def method_missing(name, *args)
      # TODO: only allow setting in updateable classes.
      if name.to_s.end_with?('=')
        attr = name.to_s[0...-1].to_sym

        # Pull out the assigned value. This is only used in the case of a
        # boolean value to add a question mark accessor (i.e. `foo?`) for
        # convenience.
        val = args.first

        # the second argument is only required when adding boolean accessors
        add_accessors([attr], { attr => val })

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

      remove_accessors(removed)
      add_accessors(added, values)

      removed.each do |k|
        @values.delete(k)
        @transient_values.add(k)
        @unsaved_values.delete(k)
      end

      update_attributes(values, opts, :dirty => false)
      values.each do |k, _|
        @transient_values.delete(k)
        @unsaved_values.delete(k)
      end

      self
    end

    def serialize_params_value(value, original, unsaved, force)
      case true
      when value == nil
        ''

      # The logic here is that essentially any object embedded in another
      # object that had a `type` is actually an API resource of a different
      # type that's been included in the response. These other resources must
      # be updated from their proper endpoints, and therefore they are not
      # included when serializing even if they've been modified.
      #
      # There are _some_ known exceptions though. For example, to save on API
      # calls it's sometimes desirable to update a customer's default source by
      # setting a new card (or other) object with `#source=` and then saving
      # the customer. The `#save_with_parent` flag to override the default
      # behavior allows us to handle these exceptions.
      when value.is_a?(APIResource) && !value.save_with_parent
        nil

      when value.is_a?(Array)
        update = value.map { |v| serialize_params_value(v, nil, true, force) }

        # This prevents an array that's unchanged from being resent.
        if update != serialize_params_value(original, nil, true, force)
          update
        else
          nil
        end

      # Handle a Hash for now, but in the long run we should be able to
      # eliminate all places where hashes are stored as values internally by
      # making sure any time one is set, we convert it to a StripeObject. This
      # will simplify our model by making data within an object more
      # consistent.
      #
      # For now, you can still run into a hash if someone appends one to an
      # existing array being held by a StripeObject. This could happen for
      # example by appending a new hash onto `additional_owners` for an
      # account.
      when value.is_a?(Hash)
        Util.convert_to_stripe_object(value, @opts).serialize_params

      when value.is_a?(StripeObject)
        update = value.serialize_params(:force => force)

        # If the entire object was replaced, then we need blank each field of
        # the old object that held a value. The new serialized values will
        # override any of these empty values.
        update = empty_values(original).merge(update) if original && unsaved

        update

      else
        value
      end
    end

    private

    def dirty_value!(value)
      case value
      when Array
        value.map { |v| dirty_value!(v) }
      when StripeObject
        value.dirty!
      end
    end

    # Returns a hash of empty values for all the values that are in the given
    # StripeObject.
    def empty_values(obj)
      values = case obj
      when Hash         then obj
      when StripeObject then obj.instance_variable_get(:@values)
      else
        raise ArgumentError, "#empty_values got unexpected object type: #{obj.class.name}"
      end

      values.inject({}) do |update, (k, _)|
        update[k] = ''
        update
      end
    end
  end
end
