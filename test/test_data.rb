# frozen_string_literal: true

module Stripe
  module TestData
    def make_error(type, message)
      {
        error: {
          type: type,
          message: message,
        },
      }
    end

    def make_invalid_api_key_error
      {
        error: {
          type: "invalid_request_error",
          message: "Invalid API Key provided: invalid",
        },
      }
    end

    def make_invalid_exp_year_error
      {
        error: {
          code: "invalid_expiry_year",
          param: "exp_year",
          type: "card_error",
          message: "Your card's expiration year is invalid",
        },
      }
    end

    def make_missing_id_error
      {
        error: {
          param: "id",
          type: "invalid_request_error",
          message: "Missing id",
        },
      }
    end

    def make_rate_limit_error
      {
        error: {
          type: "invalid_request_error",
          message: "Too many requests in a period of time.",
        },
      }
    end

    def make_api_error
      {
        error: {
          type: "api_error",
        },
      }
    end
  end
end
