require 'uri'
require 'digest/sha1'

module Stripe
  module CertificateBlacklist

    BLACKLIST = {
      "api.stripe.com" => [
        '05c0b3643694470a888c6e7feb5c9e24e823dc53',
      ],
      "revoked.stripe.com" => [
        '5b7dc7fbc98d78bf76d4d4fa6f597a0c901fad5c',
      ]
    }

    # Preflight the SSL certificate presented by the backend. This isn't 100%
    # bulletproof, in that we're not actually validating the transport used to
    # communicate with Stripe, merely that the first attempt to does not use a
    # revoked certificate.

    # Unfortunately the interface to OpenSSL doesn't make it easy to check the
    # certificate before sending potentially sensitive data on the wire. This
    # approach raises the bar for an attacker significantly.

    def self.check_ssl_cert(uri, ca_file)
      uri = URI.parse(uri)

      begin
        sock = TCPSocket.new(uri.host, uri.port)
      rescue SocketError => e
          raise APIConnectionError.new(
            "Connection failed pre-flighting SSL connection to #{uri.host}. " +
            "Error was: #{e.to_str}"
          )
      end
      ctx = OpenSSL::SSL::SSLContext.new
      ctx.set_params(:verify_mode => OpenSSL::SSL::VERIFY_PEER,
                     :ca_file => ca_file)

      socket = OpenSSL::SSL::SSLSocket.new(sock, ctx)
      socket.connect

      certificate = socket.peer_cert.to_der
      fingerprint = Digest::SHA1.hexdigest(certificate)

      if blacklisted_certs = BLACKLIST[uri.host]
        if blacklisted_certs.include?(fingerprint)
          raise APIConnectionError.new(
            "Invalid server certificate. You tried to connect to a server that" +
            "has a revoked SSL certificate, which means we cannot securely send" +
            "data to that server. Please email support@stripe.com if you need" +
            "help connecting to the correct API server."
          )
        end
      end

      socket.close

      return true
    end
  end
end
