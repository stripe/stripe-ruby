# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Commerce
      module ProductCatalog
        class ImportListParams < ::Stripe::RequestParams
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
          # Filter by the type of feed data being imported.
          sig { returns(T.nilable(String)) }
          def feed_type; end
          sig { params(_feed_type: T.nilable(String)).returns(T.nilable(String)) }
          def feed_type=(_feed_type); end
          # The maximum number of results per page.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # Filter by import status.
          sig { returns(T.nilable(String)) }
          def status; end
          sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
          def status=(_status); end
          sig {
            params(created: T.nilable(String), created_gt: T.nilable(String), created_gte: T.nilable(String), created_lt: T.nilable(String), created_lte: T.nilable(String), feed_type: T.nilable(String), limit: T.nilable(Integer), status: T.nilable(String)).void
           }
          def initialize(
            created: nil,
            created_gt: nil,
            created_gte: nil,
            created_lt: nil,
            created_lte: nil,
            feed_type: nil,
            limit: nil,
            status: nil
          ); end
        end
      end
    end
  end
end