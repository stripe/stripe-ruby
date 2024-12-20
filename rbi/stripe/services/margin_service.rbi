# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class MarginService < StripeService
    class ListParams < Stripe::RequestParams
      # Only return margins that are active or inactive. For example, pass `true` to only list active margins.
      sig { returns(T::Boolean) }
      attr_accessor :active

      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(String) }
      attr_accessor :ending_before

      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand

      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit

      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after

      sig {
        params(active: T::Boolean, ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String).void
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
      sig { returns(T::Boolean) }
      attr_accessor :active

      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata

      # Name of the margin, which is displayed to customers, such as on invoices.
      sig { returns(String) }
      attr_accessor :name

      # Percent that will be taken off the subtotal before tax (after all other discounts and promotions) of any invoice to which the margin is applied.
      sig { returns(Float) }
      attr_accessor :percent_off

      sig {
        params(active: T::Boolean, expand: T::Array[String], metadata: T::Hash[String, String], name: String, percent_off: Float).void
       }
      def initialize(active: nil, expand: nil, metadata: nil, name: nil, percent_off: nil); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand

      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      # Whether the margin can be applied to invoices, invoice items, or invoice line items or not.
      sig { returns(T::Boolean) }
      attr_accessor :active

      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata

      # Name of the margin, which is displayed to customers, such as on invoices.
      sig { returns(String) }
      attr_accessor :name

      sig {
        params(active: T::Boolean, expand: T::Array[String], metadata: T::Hash[String, String], name: String).void
       }
      def initialize(active: nil, expand: nil, metadata: nil, name: nil); end
    end
    # Create a margin object to be used with invoices, invoice items, and invoice line items for a customer to represent a partner discount. A margin has a percent_off which is the percent that will be taken off the subtotal after all items and other discounts and promotions) of any invoices for a customer. Calculation of prorations do not include any partner margins applied on the original invoice item.
    sig {
      params(params: T.any(::Stripe::MarginService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Margin)
     }
    def create(params = {}, opts = {}); end

    # Retrieve a list of your margins.
    sig {
      params(params: T.any(::Stripe::MarginService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieve a margin object with the given ID.
    sig {
      params(margin: String, params: T.any(::Stripe::MarginService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Margin)
     }
    def retrieve(margin, params = {}, opts = {}); end

    # Update the specified margin object. Certain fields of the margin object are not editable.
    sig {
      params(margin: String, params: T.any(::Stripe::MarginService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Margin)
     }
    def update(margin, params = {}, opts = {}); end
  end
end