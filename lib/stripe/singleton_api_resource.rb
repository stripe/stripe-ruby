# frozen_string_literal: true

module Stripe
  class SingletonAPIResource < APIResource
    def self.resource_url
      if self == SingletonAPIResource
        raise NotImplementedError,
              "SingletonAPIResource is an abstract class. You should " \
              "perform actions on its subclasses (Balance, etc.)"
      end
      # Namespaces are separated in object names with periods (.) and in URLs
      # with forward slashes (/), so replace the former with the latter.
      "/v1/#{self::OBJECT_NAME.downcase.tr('.', '/')}"
    end

    def resource_url
      self.class.resource_url
    end

    def self.retrieve(params_or_opts = {}, definitely_opts = nil)
      opts = nil
      params = nil
      if definitely_opts.nil?
        unrecognized_key = params_or_opts.keys.find { |k| !Util::OPTS_USER_SPECIFIED.include?(k) }
        if unrecognized_key
          raise ArgumentError,
                "Unrecognized request option: #{unrecognized_key}. Did you mean to specify this as retrieve params? " \
                "If so, you must explicitly pass an opts hash as a second argument. " \
                "For example: .retrieve({#{unrecognized_key}: 'foo'}, {})"
        end

        opts = params_or_opts
      else
        opts = definitely_opts
        params = params_or_opts
      end

      instance = new(params, Util.normalize_opts(opts))
      instance.refresh
      instance
    end
  end
end
