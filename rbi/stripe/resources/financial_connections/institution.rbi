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
          attr_reader :supported
        end
        class Ownership < Stripe::StripeObject
          # Whether the given feature is supported by this institution.
          sig { returns(T::Boolean) }
          attr_reader :supported
        end
        class PaymentMethod < Stripe::StripeObject
          # Whether the given feature is supported by this institution.
          sig { returns(T::Boolean) }
          attr_reader :supported
        end
        class Transactions < Stripe::StripeObject
          # Whether the given feature is supported by this institution.
          sig { returns(T::Boolean) }
          attr_reader :supported
        end
        # Attribute for field balances
        sig { returns(Balances) }
        attr_reader :balances
        # Attribute for field ownership
        sig { returns(Ownership) }
        attr_reader :ownership
        # Attribute for field payment_method
        sig { returns(PaymentMethod) }
        attr_reader :payment_method
        # Attribute for field transactions
        sig { returns(Transactions) }
        attr_reader :transactions
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
      # The name of this institution.
      sig { returns(String) }
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # A list of routing numbers which are known to correspond to this institution. Due to the many to many relationship between institutions and routing numbers, this list may not be comprehensive and routing numbers may also be shared between institutions.
      sig { returns(T::Array[String]) }
      attr_reader :routing_numbers
      # The status of this institution in the Financial Connections authentication flow.
      sig { returns(String) }
      attr_reader :status
      # A URL corresponding to this institution. This URL is also displayed in the authentication flow to help end users confirm that they are authenticating with the right institution.
      sig { returns(T.nilable(String)) }
      attr_reader :url
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