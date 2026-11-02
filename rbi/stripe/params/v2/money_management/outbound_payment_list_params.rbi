# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentListParams < ::Stripe::RequestParams
        class Created < ::Stripe::RequestParams
          # Filter for objects created after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def gt; end
          sig { params(_gt: T.nilable(String)).returns(T.nilable(String)) }
          def gt=(_gt); end
          # Filter for objects created on or after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def gte; end
          sig { params(_gte: T.nilable(String)).returns(T.nilable(String)) }
          def gte=(_gte); end
          # Filter for objects created before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def lt; end
          sig { params(_lt: T.nilable(String)).returns(T.nilable(String)) }
          def lt=(_lt); end
          # Filter for objects created on or before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def lte; end
          sig { params(_lte: T.nilable(String)).returns(T.nilable(String)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(String), gte: T.nilable(String), lt: T.nilable(String), lte: T.nilable(String)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Filter OutboundPayments by their creation time.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentListParams::Created))
         }
        def created; end
        sig {
          params(_created: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentListParams::Created)).returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentListParams::Created))
         }
        def created=(_created); end
        # The maximum number of results to return.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Only return OutboundPayments sent to this recipient.
        sig { returns(T.nilable(String)) }
        def recipient; end
        sig { params(_recipient: T.nilable(String)).returns(T.nilable(String)) }
        def recipient=(_recipient); end
        # Closed Enum. Only return OutboundPayments with this status.
        sig { returns(T.nilable(T::Array[String])) }
        def status; end
        sig { params(_status: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def status=(_status); end
        sig {
          params(created: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentListParams::Created), limit: T.nilable(Integer), recipient: T.nilable(String), status: T.nilable(T::Array[String])).void
         }
        def initialize(created: nil, limit: nil, recipient: nil, status: nil); end
      end
    end
  end
end