# frozen_string_literal: true
# typed: true

module Stripe
  class ErrorObject < StripeObject
    # errorFields: The beginning of the section generated from our OpenAPI spec
    # errorFields: The end of the section generated from our OpenAPI spec
  end

  class OAuthErrorObject < StripeObject
    sig { returns(T.nilable(String)) }
    def error; end

    sig { returns(T.nilable(String)) }
    def error_description; end
  end

end
