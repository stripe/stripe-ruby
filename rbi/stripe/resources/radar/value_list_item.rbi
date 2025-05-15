# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    # Value list items allow you to add specific values to a given Radar value list, which can then be used in rules.
    #
    # Related guide: [Managing list items](https://stripe.com/docs/radar/lists#managing-list-items)
    class ValueListItem < APIResource
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # The name or email address of the user who added this item to the value list.
      sig { returns(String) }
      attr_reader :created_by
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The value of the item.
      sig { returns(String) }
      attr_reader :value
      # The identifier of the value list this item belongs to.
      sig { returns(String) }
      attr_reader :value_list
      # Always true for a deleted object
      sig { returns(T::Boolean) }
      attr_reader :deleted
      class DeleteParams < Stripe::RequestParams; end
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lte
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return items that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Radar::ValueListItem::ListParams::Created, Integer)))
         }
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Return items belonging to the parent list whose value matches the specified value (using an "is like" match).
        sig { returns(T.nilable(String)) }
        attr_accessor :value
        # Identifier for the parent value list this item belongs to.
        sig { returns(String) }
        attr_accessor :value_list
        sig {
          params(created: T.nilable(T.any(::Stripe::Radar::ValueListItem::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), value: T.nilable(String), value_list: String).void
         }
        def initialize(
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          value: nil,
          value_list: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The value of the item (whose type must match the type of the parent value list).
        sig { returns(String) }
        attr_accessor :value
        # The identifier of the value list which the created item will be added to.
        sig { returns(String) }
        attr_accessor :value_list
        sig { params(expand: T.nilable(T::Array[String]), value: String, value_list: String).void }
        def initialize(expand: nil, value: nil, value_list: nil); end
      end
      # Creates a new ValueListItem object, which is added to the specified parent value list.
      sig {
        params(params: T.any(::Stripe::Radar::ValueListItem::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Radar::ValueListItem)
       }
      def self.create(params = {}, opts = {}); end

      # Deletes a ValueListItem object, removing it from its parent value list.
      sig {
        params(item: String, params: T.any(::Stripe::Radar::ValueListItem::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Radar::ValueListItem)
       }
      def self.delete(item, params = {}, opts = {}); end

      # Deletes a ValueListItem object, removing it from its parent value list.
      sig {
        params(params: T.any(::Stripe::Radar::ValueListItem::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Radar::ValueListItem)
       }
      def delete(params = {}, opts = {}); end

      # Returns a list of ValueListItem objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Radar::ValueListItem::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end