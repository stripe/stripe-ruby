module Stripe
  class EphemeralKey < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete

    OBJECT_NAME = 'ephemeral_key'

    def self.resource_url
      '/v1/ephemeral_keys'
    end

    def self.create(params={}, opts={})
      opts = Util.normalize_opts(opts)
      raise ArgumentError.new('stripe_version must be specified to create an ephemeral key') if !opts[:stripe_version]
      super
    end
  end
end
