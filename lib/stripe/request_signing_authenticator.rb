# frozen_string_literal: true

module Stripe
  class RequestSigningAuthenticator
    attr_reader :auth_token

    def initialize(auth_token)
      @auth_token = case auth_token
                    when String
                      auth_token
                    else
                      raise ArgumentError, "auth_token must be a string"
                    end
    end

    def authenticate(method, headers, body)
      authorization_header_name = "Authorization"
      content_type_header_name = "Content-Type"
      stripe_context_header_name = "Stripe-Context"
      stripe_account_header_name = "Stripe-Account"
      content_digest_header_name = "Content-Digest"
      signature_input_header_name = "Signature-Input"
      signature_header_name = "Signature"

      covered_headers = [stripe_context_header_name,
                         stripe_account_header_name,
                         authorization_header_name,]

      headers[authorization_header_name] = "STRIPE-V2-SIG #{auth_token}"

      if method != :get
        covered_headers += [content_type_header_name,
                            content_digest_header_name,]
        content = body || ""
        headers[content_digest_header_name] =
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

      headers[signature_input_header_name] = "sig1=#{signature_input}"

      headers[signature_header_name] =
        "sig1=:#{encoded_signature(signature_base)}:"
    end

    # To be overriden by the user with their own signing implementation
    private def sign(_signature_base); end

    private def encoded_signature(signature_base)
      Base64.strict_encode64(
        sign(signature_base)
      )
    end

    private def content_digest(content)
      Base64.strict_encode64(OpenSSL::Digest.new("SHA256").digest(content))
    end

    private def created_time
      Time.now.to_i
    end
  end
end
