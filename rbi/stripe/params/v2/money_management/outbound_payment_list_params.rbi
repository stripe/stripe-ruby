# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentListParams < Stripe::RequestParams
        # Filter for objects created at the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
        sig { returns(T.nilable(String)) }
        def created; end
        sig { params(_created: T.nilable(String)).returns(T.nilable(String)) }
        def created=(_created); end
        # Filter for objects created after the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
        sig { returns(T.nilable(String)) }
        def created_gt; end
        sig { params(_created_gt: T.nilable(String)).returns(T.nilable(String)) }
        def created_gt=(_created_gt); end
        # Filter for objects created on or after the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
        sig { returns(T.nilable(String)) }
        def created_gte; end
        sig { params(_created_gte: T.nilable(String)).returns(T.nilable(String)) }
        def created_gte=(_created_gte); end
        # Filter for objects created before the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
        sig { returns(T.nilable(String)) }
        def created_lt; end
        sig { params(_created_lt: T.nilable(String)).returns(T.nilable(String)) }
        def created_lt=(_created_lt); end
        # Filter for objects created on or before the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
        sig { returns(T.nilable(String)) }
        def created_lte; end
        sig { params(_created_lte: T.nilable(String)).returns(T.nilable(String)) }
        def created_lte=(_created_lte); end
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
          params(created: T.nilable(String), created_gt: T.nilable(String), created_gte: T.nilable(String), created_lt: T.nilable(String), created_lte: T.nilable(String), limit: T.nilable(Integer), recipient: T.nilable(String), status: T.nilable(T::Array[String])).void
         }
        def initialize(
          created: nil,
          created_gt: nil,
          created_gte: nil,
          created_lt: nil,
          created_lte: nil,
          limit: nil,
          recipient: nil,
          status: nil
        ); end
      end
    end
  end
end