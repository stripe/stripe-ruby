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


    def self.check_ssl_cert(uri, ca_file)
      uri = URI.parse(uri)

      sock = TCPSocket.new(uri.host, uri.port)
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
