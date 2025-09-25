# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class EventListParams < Stripe::RequestParams
        # The page size.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Primary object ID used to retrieve related events.
        #
        # To avoid conflict with Ruby's ':object_id', this attribute has been renamed. If using a hash parameter map instead, please use the original name ':object_id' with NO trailing underscore as the provided param key.
        sig { returns(String) }
        def object_id_; end
        sig { params(_object_id_: String).returns(String) }
        def object_id_=(_object_id_); end
        sig { params(limit: T.nilable(Integer), object_id_: String).void }
        def initialize(limit: nil, object_id_: nil); end
      end
    end
  end
end