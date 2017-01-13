module Stripe
  # StripeError is the base error from which all other more specific Stripe
  # errors derive.
  class StripeError < StandardError
    attr_reader :message
    attr_reader :http_status
    attr_reader :http_body
    attr_reader :http_headers
    attr_reader :request_id
    attr_reader :json_body

    def initialize(message=nil, http_status=nil, http_body=nil, json_body=nil,
                   http_headers=nil)
      @message = message
      @http_status = http_status
      @http_body = http_body
      @http_headers = http_headers || {}
      @json_body = json_body
      @request_id = @http_headers[:request_id]
    end

    def to_s
      status_string = @http_status.nil? ? "" : "(Status #{@http_status}) "
      id_string = @request_id.nil? ? "" : "(Request #{@request_id}) "
      "#{status_string}#{id_string}#{@message}"
    end
  end

  # AuthenticationError is raised when invalid credentials are used to connect
  # to Stripe's servers.
  class AuthenticationError < StripeError
  end

  # APIConnectionError is raised in the event that the SDK can't connect to
  # Stripe's servers. That can be for a variety of different reasons from a
  # downed network to a bad TLS certificate.
  class APIConnectionError < StripeError
  end

  # APIError is a generic error that may be raised in cases where none of the
  # other named errors cover the problem. It could also be raised in the case
  # that a new error has been introduced in the API, but this version of the
  # Ruby SDK doesn't know how to handle it.
  class APIError < StripeError
  end

  # CardError is raised when a user enters a card that can't be charged for
  # some reason.
  class CardError < StripeError
    attr_reader :param, :code

    def initialize(message, param, code, http_status=nil, http_body=nil, json_body=nil,
                   http_headers=nil)
      super(message, http_status, http_body, json_body, http_headers)
      @param = param
      @code = code
    end
  end

  # InvalidRequestError is raised when a request is initiated with invalid
  # parameters.
  class InvalidRequestError < StripeError
    attr_accessor :param

    def initialize(message, param, http_status=nil, http_body=nil, json_body=nil,
                   http_headers=nil)
      super(message, http_status, http_body, json_body, http_headers)
      @param = param
    end
  end

  # PermissionError is raised in cases where access was attempted on a resource
  # that wasn't allowed.
  class PermissionError < StripeError
  end

  # RateLimitError is raised in cases where an account is putting too much load
  # on Stripe's API servers (usually by performing too many requests). Please
  # back off on request rate.
  class RateLimitError < StripeError
  end
end
