# frozen_string_literal: true

module Stripe
  class SingletonAPIResource < APIResource
    def self.resource_url
      if name.include?("Stripe::V2")
        raise NotImplementedError,
              "V2 singleton resources do not have a defined URL. Please use the StripeClient " \
              "to make V2 requests"
      end

      if self == SingletonAPIResource
        raise NotImplementedError,
              "SingletonAPIResource is an abstract class. You should " \
              "perform actions on its subclasses (Balance, etc.)"
      end
      # Namespaces are separated in object names with periods (.) and in URLs
      # with forward slashes (/), so replace the former with the latter.
      "/v1/#{object_name.downcase.tr('.', '/')}"
    end

    def resource_url
      self.class.resource_url
    end

    def self.retrieve(params = {}, opts = {})
      instance = new(params, Util.normalize_opts(opts))
      instance.refresh
      instance
    end
  end
end
