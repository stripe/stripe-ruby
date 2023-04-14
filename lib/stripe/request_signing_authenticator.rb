# frozen_string_literal: true

module Stripe
  class RequestSigningAuthenticator
    AUTHORIZATION_HEADER_NAME = "Authorization"
    CONTENT_TYPE_HEADER_NAME = "Content-Type"
    STRIPE_CONTEXT_HEADER_NAME = "Stripe-Context"
    STRIPE_ACCOUNT_HEADER_NAME = "Stripe-Account"
    CONTENT_DIGEST_HEADER_NAME = "Content-Digest"
    SIGNATURE_INPUT_HEADER_NAME = "Signature-Input"
    SIGNATURE_HEADER_NAME = "Signature"

    attr_reader :auth_token

    def initialize(auth_token, sign_method)
      @auth_token = case auth_token
                    when String
                      auth_token
                    else
                      raise ArgumentError, "auth_token must be a string"
                    end
      @sign_method = sign_method
    end

    def authenticate(method, headers, body)
      covered_headers = [STRIPE_CONTEXT_HEADER_NAME,
                         STRIPE_ACCOUNT_HEADER_NAME,
                         AUTHORIZATION_HEADER_NAME,]

      headers[AUTHORIZATION_HEADER_NAME] = "STRIPE-V2-SIG #{auth_token}"

      if method != :get
        covered_headers += [CONTENT_TYPE_HEADER_NAME,
                            CONTENT_DIGEST_HEADER_NAME,]
        content = body || ""
        headers[CONTENT_DIGEST_HEADER_NAME] =
          %(sha-256=:#{content_digest(content)}:)
      end

      covered_headers_formatted = covered_headers
                                  .map { |string| %("#{string.downcase}") }
                                  .join(" ")

      signature_input = "(#{covered_headers_formatted});created=#{created_time}"

      inputs = covered_headers
               .map { |header| %("#{header.downcase}": #{headers[header]}) }
               .join("\n")

      signature_base = %(#{inputs}\n"@signature-params": #{signature_input})
                       .encode(Encoding::UTF_8)

      headers[SIGNATURE_INPUT_HEADER_NAME] = "sig1=#{signature_input}"

      headers[SIGNATURE_HEADER_NAME] =
        "sig1=:#{encoded_signature(signature_base)}:"
    end

    private def sign(signature_base)
      @sign_method.call(signature_base)
    end

    private def encoded_signature(signature_base)
      Base64.strict_encode64(sign(signature_base))
    rescue StandardError
      raise AuthenticationError, "Encountered '#{e.message} (#{e.class})' "\
       "when calculating request signature."
    end

    private def content_digest(content)
      Base64.strict_encode64(OpenSSL::Digest.new("SHA256").digest(content))
    end

    private def created_time
      Time.now.to_i
    end
  end
end
