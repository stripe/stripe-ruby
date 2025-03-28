# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class ValueListItemService < StripeService
      class DeleteParams < Stripe::RequestParams

      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
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
          returns(T.nilable(T.any(::Stripe::Radar::ValueListItemService::ListParams::Created, Integer)))
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
          params(created: T.nilable(T.any(::Stripe::Radar::ValueListItemService::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), value: T.nilable(String), value_list: String).void
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
        params(params: T.any(::Stripe::Radar::ValueListItemService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Radar::ValueListItem)
       }
      def create(params = {}, opts = {}); end

      # Deletes a ValueListItem object, removing it from its parent value list.
      sig {
        params(item: String, params: T.any(::Stripe::Radar::ValueListItemService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Radar::ValueListItem)
       }
      def delete(item, params = {}, opts = {}); end

      # Returns a list of ValueListItem objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Radar::ValueListItemService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a ValueListItem object.
      sig {
        params(item: String, params: T.any(::Stripe::Radar::ValueListItemService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Radar::ValueListItem)
       }
      def retrieve(item, params = {}, opts = {}); end
    end
  end
end