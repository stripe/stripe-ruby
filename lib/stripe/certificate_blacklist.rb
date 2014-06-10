require 'uri'
require 'digest/sha1'
require 'set'

module Stripe
  module CertificateBlacklist

    BLACKLIST = Set.new([
      '05c0b3643694470a888c6e7feb5c9e24e823dc53', # api.stripe.com
      '5b7dc7fbc98d78bf76d4d4fa6f597a0c901fad5c', # revoked.stripe.com
    ])

    FailureMessage = \
      "Invalid server certificate. You tried to connect to a server that " \
      "has a revoked SSL certificate, which means we cannot securely send " \
      "data to that server. Please email support@stripe.com if you need " \
      "help connecting to the correct API server."

    def self.ssl_certificate_blacklisted?(certificate)
      fingerprint = Digest::SHA1.hexdigest(certificate.to_der)

      return BLACKLIST.include?(fingerprint)
    end

    # Preflight the SSL certificate presented by the backend. This isn't 100%
    # bulletproof, in that we're not actually validating the transport used to
    # communicate with Stripe, merely that the first attempt to does not use a
    # revoked certificate.
    #
    # Unfortunately the interface to OpenSSL doesn't make it easy to check the
    # certificate before sending potentially sensitive data on the wire. This
    # approach raises the bar for an attacker significantly.
    #
    def self.check_ssl_cert_preflight(uri, ca_file)
      uri = URI.parse(uri)

      sock = TCPSocket.new(uri.host, uri.port)
      ctx = OpenSSL::SSL::SSLContext.new
      ctx.set_params(:verify_mode => OpenSSL::SSL::VERIFY_PEER,
                     :ca_file => ca_file)

      socket = OpenSSL::SSL::SSLSocket.new(sock, ctx)
      socket.connect

      if ssl_certificate_blacklisted?(socket.peer_cert)
        raise APIConnectionError.new(FailureMessage)
      end

      socket.close

      return true
    end
  end
end
