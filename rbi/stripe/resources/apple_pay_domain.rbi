# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Domains registered for Apple Pay on the Web
  class ApplePayDomain < APIResource
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Attribute for field domain_name
    sig { returns(String) }
    attr_reader :domain_name
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
    class DeleteParams < Stripe::RequestParams

    end
    class ListParams < Stripe::RequestParams
      # Attribute for param field domain_name
      sig { returns(T.nilable(String)) }
      attr_accessor :domain_name
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
        params(domain_name: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        domain_name: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      # Attribute for param field domain_name
      sig { returns(String) }
      attr_accessor :domain_name
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(domain_name: String, expand: T.nilable(T::Array[String])).void }
      def initialize(domain_name: nil, expand: nil); end
    end
    # Create an apple pay domain.
    sig {
      params(params: T.any(::Stripe::ApplePayDomain::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ApplePayDomain)
     }
    def self.create(params = {}, opts = {}); end

    # Delete an apple pay domain.
    sig {
      params(domain: String, params: T.any(::Stripe::ApplePayDomain::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ApplePayDomain)
     }
    def self.delete(domain, params = {}, opts = {}); end

    # Delete an apple pay domain.
    sig {
      params(params: T.any(::Stripe::ApplePayDomain::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ApplePayDomain)
     }
    def delete(params = {}, opts = {}); end

    # List apple pay domains.
    sig {
      params(params: T.any(::Stripe::ApplePayDomain::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end