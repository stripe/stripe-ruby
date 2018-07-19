# frozen_string_literal: true

module Stripe
  class EphemeralKey < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete

    OBJECT_NAME = "ephemeral_key".freeze

    def self.create(params = {}, opts = {})
      opts = Util.normalize_opts(opts)
      raise ArgumentError, "stripe_version must be specified to create an ephemeral key" unless opts[:stripe_version]
      super
    end
  end
end
