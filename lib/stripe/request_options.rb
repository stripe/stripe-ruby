# frozen_string_literal: true
# typed: true

module Stripe
  # RequestOptions is a class that encapsulates configurable options
  # for requests made to the Stripe API. It is used by the APIRequestor
  # to set per-request options.
  #
  # For internal use only. Does not provide a stable API and may be broken
  # with future non-major changes.
  module RequestOptions
    # Options that a user is allowed to specify.
    OPTS_USER_SPECIFIED = Set[
      :api_key,
      :idempotency_key,
      :stripe_account,
      :stripe_context,
      :stripe_version
    ].freeze

    # Options that should be copyable from one StripeObject to another
    # including options that may be internal.
    OPTS_COPYABLE = (
      OPTS_USER_SPECIFIED + Set[:api_base]
    ).freeze

    # Account and context identify the resource's authorization scope and
    # must persist for subsequent operations, unlike an idempotency key.
    OPTS_PERSISTABLE = (
      OPTS_USER_SPECIFIED - Set[:idempotency_key]
    ).freeze

    # Written in place of API keys when a StripeObject is serialized with
    # Marshal or YAML, so that credentials never end up in caches or queues.
    API_KEY_SERIALIZATION_CONSTANT = "API_KEY_SERIALIZATION_CONSTANT"

    # Raises if the given API key is the serialization placeholder, meaning the
    # object was deserialized and credentials haven't been reattached.
    def self.assert_api_key_attached!(api_key)
      return unless api_key == API_KEY_SERIALIZATION_CONSTANT

      raise AuthenticationError,
            "This object was deserialized without API credentials. Call " \
            "reattach_api_key(api_key) on the object before making requests. " \
            "Global and per-call API keys do not reattach credentials to a " \
            "deserialized object."
    end

    # helper method to figure out what the true value of the stripe_context header should be
    # given a pair of StripeContext|string
    # req should take precedence if non-nil
    private_class_method def self.merge_context(config_ctx, req_ctx)
      str_with_precedence = (req_ctx || config_ctx)&.to_s
      return nil if str_with_precedence.nil? || str_with_precedence.empty?

      str_with_precedence
    end

    # Merges requestor options on a StripeConfiguration object
    # with a per-request options hash, giving precedence
    # to the per-request options. Expects StripeConfiguration and hash.
    def self.merge_config_and_opts(config, req_opts)
      # Raise an error if config is not a StripeConfiguration object
      unless config.is_a?(StripeConfiguration)
        raise ArgumentError, "config must be a Stripe::StripeConfiguration object"
      end

      merged_opts = {
        api_key: req_opts[:api_key] || config.api_key,
        idempotency_key: req_opts[:idempotency_key],
        stripe_account: req_opts[:stripe_account] || config.stripe_account,
        stripe_context: merge_context(config.stripe_context, req_opts[:stripe_context]),
        stripe_version: req_opts[:stripe_version] || config.api_version,
        headers: req_opts[:headers] || {},
      }

      # Remove nil values from headers
      merged_opts.delete_if { |_, v| v.nil? }

      merged_opts
    end

    # Retain absent selectors so restoring a scope can clear ambient defaults.
    def self.authorization_scope(config, opts)
      merged_opts = merge_config_and_opts(config, opts)
      { stripe_account: merged_opts[:stripe_account], stripe_context: merged_opts[:stripe_context] }
    end

    # Caller-owned selector strings must not change the authorization scope of a live resource.
    def self.snapshot_authorization_selectors(opts)
      opts.dup.tap do |snapshot|
        %i[stripe_account stripe_context].each do |selector|
          value = snapshot[selector]
          snapshot[selector] = value.dup.freeze if value.is_a?(String)
        end
      end
    end

    # Merges requestor options hash on a StripeObject
    # with a per-request options hash, giving precedence
    # to the per-request options. Returns the merged request options.
    # Expects two hashes, expects extract_opts_from_hash to be called first!!!
    def self.combine_opts(object_opts, req_opts)
      assert_api_key_attached!(object_opts[:api_key])

      merged_opts = {
        api_key: req_opts[:api_key] || object_opts[:api_key],
        idempotency_key: req_opts[:idempotency_key],
        stripe_account: req_opts[:stripe_account] || object_opts[:stripe_account],
        stripe_context: merge_context(object_opts[:stripe_context], req_opts[:stripe_context]),
        stripe_version: req_opts[:stripe_version] || object_opts[:stripe_version],
        headers: req_opts[:headers] || {},
      }

      # Remove nil values from headers
      merged_opts.delete_if { |_, v| v.nil? }

      merged_opts
    end

    # Extracts options from a user-provided hash, returning a new request options hash
    # containing the recognized request options and a `headers` entry for the remaining options.
    def self.extract_opts_from_hash(opts)
      req_opts = {}
      normalized_opts = Util.normalize_opts(opts.clone)

      RequestOptions.error_on_non_string_user_opts(normalized_opts)

      OPTS_USER_SPECIFIED.each do |opt|
        req_opts[opt] = normalized_opts[opt] if normalized_opts.key?(opt)
        normalized_opts.delete(opt)
      end

      # Remaining user-provided opts should be treated as headers
      req_opts[:headers] = Util.normalize_headers(normalized_opts) if normalized_opts.any?

      req_opts
    end

    # Validates a normalized opts hash.
    def self.error_on_non_string_user_opts(normalized_opts)
      OPTS_USER_SPECIFIED.each do |opt|
        next unless normalized_opts.key?(opt)

        val = normalized_opts[opt]
        next if val.nil?
        next if val.is_a?(String)
        next if opt == :stripe_context && val.is_a?(StripeContext)

        raise ArgumentError,
              "request option '#{opt}' should be a string value " \
              "(was a #{val.class})"
      end
    end

    # Get options that persist between requests
    def self.persistable(req_opts)
      opts_to_persist = {}

      # Hash#select returns an array before 1.9
      req_opts.each do |k, v|
        opts_to_persist[k] = v if RequestOptions::OPTS_PERSISTABLE.include?(k)
      end

      opts_to_persist
    end

    # Get options that are copyable from StripeObject to StripeObject
    def self.copyable(req_opts)
      req_opts.slice(*RequestOptions::OPTS_COPYABLE)
    end
  end
end
