# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # To share the contents of a `File` object with non-Stripe users, you can
  # create a `FileLink`. `FileLink`s contain a URL that can be used to
  # retrieve the contents of the file without authentication.
  class FileLink < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "file_link"
  end
end
