# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A (partner) margin represents a specific discount distributed in partner reseller programs to business partners who
  # resell products and services and earn a discount (margin) for doing so.
  class Margin < APIResource
    # Whether the margin can be applied to invoices, invoice items, or invoice line items. Defaults to `true`.
    sig { returns(T::Boolean) }
    attr_reader :active
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata
    # Name of the margin that's displayed on, for example, invoices.
    sig { returns(T.nilable(String)) }
    attr_reader :name
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Percent that will be taken off the subtotal before tax (after all other discounts and promotions) of any invoice to which the margin is applied.
    sig { returns(Float) }
    attr_reader :percent_off
    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :updated
    class ListParams < Stripe::RequestParams
      # Only return margins that are active or inactive. For example, pass `true` to only list active margins.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
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
        params(active: T.nilable(T::Boolean), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        active: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      # Whether the margin can be applied to invoices, invoice items, or invoice line items or not. Defaults to `true`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # Name of the margin, which is displayed to customers, such as on invoices.
      sig { returns(T.nilable(String)) }
      attr_accessor :name
      # Percent that will be taken off the subtotal before tax (after all other discounts and promotions) of any invoice to which the margin is applied.
      sig { returns(Float) }
      attr_accessor :percent_off
      sig {
        params(active: T.nilable(T::Boolean), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), name: T.nilable(String), percent_off: Float).void
       }
      def initialize(active: nil, expand: nil, metadata: nil, name: nil, percent_off: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      # Whether the margin can be applied to invoices, invoice items, or invoice line items or not.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # Name of the margin, which is displayed to customers, such as on invoices.
      sig { returns(T.nilable(String)) }
      attr_accessor :name
      sig {
        params(active: T.nilable(T::Boolean), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), name: T.nilable(String)).void
       }
      def initialize(active: nil, expand: nil, metadata: nil, name: nil); end
    end
    # Create a margin object to be used with invoices, invoice items, and invoice line items for a customer to represent a partner discount. A margin has a percent_off which is the percent that will be taken off the subtotal after all items and other discounts and promotions) of any invoices for a customer. Calculation of prorations do not include any partner margins applied on the original invoice item.
    sig {
      params(params: T.any(::Stripe::Margin::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Margin)
     }
    def self.create(params = {}, opts = {}); end

    # Retrieve a list of your margins.
    sig {
      params(params: T.any(::Stripe::Margin::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Update the specified margin object. Certain fields of the margin object are not editable.
    sig {
      params(margin: String, params: T.any(::Stripe::Margin::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Margin)
     }
    def self.update(margin, params = {}, opts = {}); end
  end
end