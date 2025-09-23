# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # An institution represents a financial institution to which an end user can connect using the Financial Connections authentication flow.
    class Institution < APIResource
      class Features < Stripe::StripeObject
        class Balances < Stripe::StripeObject
          # Whether the given feature is supported by this institution.
          sig { returns(T::Boolean) }
          def supported; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Ownership < Stripe::StripeObject
          # Whether the given feature is supported by this institution.
          sig { returns(T::Boolean) }
          def supported; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class PaymentMethod < Stripe::StripeObject
          # Whether the given feature is supported by this institution.
          sig { returns(T::Boolean) }
          def supported; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Transactions < Stripe::StripeObject
          # Whether the given feature is supported by this institution.
          sig { returns(T::Boolean) }
          def supported; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field balances
        sig { returns(Balances) }
        def balances; end
        # Attribute for field ownership
        sig { returns(Ownership) }
        def ownership; end
        # Attribute for field payment_method
        sig { returns(PaymentMethod) }
        def payment_method; end
        # Attribute for field transactions
        sig { returns(Transactions) }
        def transactions; end
        def self.inner_class_types
          @inner_class_types = {
            balances: Balances,
            ownership: Ownership,
            payment_method: PaymentMethod,
            transactions: Transactions,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The list of countries supported by this institution, formatted as ISO country codes.
      sig { returns(T::Array[String]) }
      def countries; end
      # Attribute for field features
      sig { returns(Features) }
      def features; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # The name of this institution.
      sig { returns(String) }
      def name; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # A list of routing numbers which are known to correspond to this institution. Due to the many to many relationship between institutions and routing numbers, this list may not be comprehensive and routing numbers may also be shared between institutions.
      sig { returns(T::Array[String]) }
      def routing_numbers; end
      # The status of this institution in the Financial Connections authentication flow.
      sig { returns(String) }
      def status; end
      # A URL corresponding to this institution. This URL is also displayed in the authentication flow to help end users confirm that they are authenticating with the right institution.
      sig { returns(T.nilable(String)) }
      def url; end
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
         }
        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
      end
      # Returns a list of Financial Connections Institution objects.
      sig {
        params(params: T.any(::Stripe::FinancialConnections::Institution::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end