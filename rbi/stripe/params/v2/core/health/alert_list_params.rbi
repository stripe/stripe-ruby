# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Health
        class AlertListParams < ::Stripe::RequestParams
          # Filter for alerts created at the specified timestamp.
          sig { returns(T.nilable(String)) }
          def created; end
          sig { params(_created: T.nilable(String)).returns(T.nilable(String)) }
          def created=(_created); end
          # Filter for alerts created after the specified timestamp.
          sig { returns(T.nilable(String)) }
          def created_gt; end
          sig { params(_created_gt: T.nilable(String)).returns(T.nilable(String)) }
          def created_gt=(_created_gt); end
          # Filter for alerts created on or after the specified timestamp.
          sig { returns(T.nilable(String)) }
          def created_gte; end
          sig { params(_created_gte: T.nilable(String)).returns(T.nilable(String)) }
          def created_gte=(_created_gte); end
          # Filter for alerts created before the specified timestamp.
          sig { returns(T.nilable(String)) }
          def created_lt; end
          sig { params(_created_lt: T.nilable(String)).returns(T.nilable(String)) }
          def created_lt=(_created_lt); end
          # Filter for alerts created on or before the specified timestamp.
          sig { returns(T.nilable(String)) }
          def created_lte; end
          sig { params(_created_lte: T.nilable(String)).returns(T.nilable(String)) }
          def created_lte=(_created_lte); end
          # The page limit.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # Filter by alert severity.
          sig { returns(T.nilable(String)) }
          def severity; end
          sig { params(_severity: T.nilable(String)).returns(T.nilable(String)) }
          def severity=(_severity); end
          # Filter by alert status.
          sig { returns(T.nilable(String)) }
          def status; end
          sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
          def status=(_status); end
          # Filter by alert types.
          sig { returns(T.nilable(T::Array[String])) }
          def types; end
          sig { params(_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def types=(_types); end
          sig {
            params(created: T.nilable(String), created_gt: T.nilable(String), created_gte: T.nilable(String), created_lt: T.nilable(String), created_lte: T.nilable(String), limit: T.nilable(Integer), severity: T.nilable(String), status: T.nilable(String), types: T.nilable(T::Array[String])).void
           }
          def initialize(
            created: nil,
            created_gt: nil,
            created_gte: nil,
            created_lt: nil,
            created_lte: nil,
            limit: nil,
            severity: nil,
            status: nil,
            types: nil
          ); end
        end
      end
    end
  end
end