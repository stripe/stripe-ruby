# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      class OffSessionPaymentService < StripeService
        # Cancel an OffSessionPayment that has previously been created.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::OffSessionPaymentCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::OffSessionPayment)
         }
        def cancel(id, params = {}, opts = {}); end

        # Captures an OffSessionPayment that has previously been created.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::OffSessionPaymentCaptureParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::OffSessionPayment)
         }
        def capture(id, params = {}, opts = {}); end

        # Creates an OffSessionPayment object.
        sig {
          params(params: T.any(::Stripe::V2::Payments::OffSessionPaymentCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::OffSessionPayment)
         }
        def create(params = {}, opts = {}); end

        # Returns a list of OffSessionPayments matching a filter.
        sig {
          params(params: T.any(::Stripe::V2::Payments::OffSessionPaymentListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an OffSessionPayment that has previously been created.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::OffSessionPaymentRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::OffSessionPayment)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end