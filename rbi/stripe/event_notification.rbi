# frozen_string_literal: true
# typed: true

module Stripe
  class EventReasonRequest
    sig { returns(String) }
    def id; end
    sig { returns(String) }
    def idempotency_key; end

    sig { params(event_reason_request_payload: T::Hash[T.untyped, T.untyped]).void }
    def initialize(event_reason_request_payload = {}); end
  end

  class EventReason
    sig { returns(String) }
    def type; end
    sig { returns(EventReasonRequest) }
    def request; end

    sig { params(event_reason_payload: T::Hash[T.untyped, T.untyped]).void }
    def initialize(event_reason_payload = {}); end
  end

  class EventNotification
    sig { returns(String) }
    def id; end
    sig { returns(String) }
    def type; end
    sig { returns(String) }
    def created; end
    sig { returns(T.nilable(String)) }
    def context; end
    sig { returns(T::Boolean) }
    def livemode; end
    sig { returns(T.nilable(EventReason)) }
    def reason; end
  end
end
