# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # A Physical Bundle represents the bundle of physical items - card stock, carrier letter, and envelope - that is shipped to a cardholder when you create a physical card.
    class PhysicalBundle < APIResource
      class Features < Stripe::StripeObject
        # The policy for how to use card logo images in a card design with this physical bundle.
        sig { returns(String) }
        attr_reader :card_logo
        # The policy for how to use carrier letter text in a card design with this physical bundle.
        sig { returns(String) }
        attr_reader :carrier_text
        # The policy for how to use a second line on a card with this physical bundle.
        sig { returns(String) }
        attr_reader :second_line
      end
      # Attribute for field features
      sig { returns(Features) }
      attr_reader :features
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # Friendly display name.
      sig { returns(String) }
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # Whether this physical bundle can be used to create cards.
      sig { returns(String) }
      attr_reader :status
      # Whether this physical bundle is a standard Stripe offering or custom-made for you.
      sig { returns(String) }
      attr_reader :type
      class ListParams < Stripe::RequestParams
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
        # Only return physical bundles with the given status.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        # Only return physical bundles with the given type.
        sig { returns(T.nilable(String)) }
        attr_accessor :type
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String), type: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil,
          type: nil
        ); end
      end
      # Returns a list of physical bundle objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::PhysicalBundle::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end