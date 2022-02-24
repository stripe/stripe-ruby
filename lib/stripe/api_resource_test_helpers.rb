# frozen_string_literal: true

module Stripe
  class APIResourceTestHelpers
    def initialize(resource)
      @resource = resource
    end

    # Adds a custom method to a test helper. This is used to add support for
    # non-CRUDL API requests, e.g. capturing charges. custom_method takes the
    # following parameters:
    # - name: the name of the custom method to create (as a symbol)
    # - http_verb: the HTTP verb for the API request (:get, :post, or :delete)
    # - http_path: the path to append to the resource's URL. If not provided,
    #              the name is used as the path
    #
    # For example, this call:
    #     custom_method :capture, http_verb: post
    # adds a `capture` class method to the resource class that, when called,
    # will send a POST request to `/v1/<object_name>/capture`.
    def self.custom_method(name, http_verb:, http_path: nil)
      Util.custom_method self::RESOURCE_CLASS, self, name, http_verb, http_path
    end
  end
end
