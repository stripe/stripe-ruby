# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # To share the contents of a `File` object with non-Stripe users, you can
  # create a `FileLink`. `FileLink`s contain a URL that you can use to
  # retrieve the contents of the file without authentication.
  class FileLink < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "file_link"
    def self.object_name
      "file_link"
    end

    # Creates a new file link object.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/file_links", params: params, opts: opts)
    end

    # Returns a list of file links.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/file_links", params: params, opts: opts)
    end

    # Updates an existing file link object. Expired links can no longer be updated.
    def self.update(link, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/file_links/%<link>s", { link: CGI.escape(link) }),
        params: params,
        opts: opts
      )
    end
  end
end
