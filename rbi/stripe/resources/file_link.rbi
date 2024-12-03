# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # To share the contents of a `File` object with non-Stripe users, you can
  # create a `FileLink`. `FileLink`s contain a URL that you can use to
  # retrieve the contents of the file without authentication.
  class FileLink < APIResource
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Returns if the link is already expired.
    sig { returns(T::Boolean) }
    attr_reader :expired

    # Time that the link expires.
    sig { returns(T.nilable(Integer)) }
    attr_reader :expires_at

    # The file object this link points to.
    sig { returns(T.any(String, Stripe::File)) }
    attr_reader :file

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The publicly accessible URL to download the file.
    sig { returns(T.nilable(String)) }
    attr_reader :url
  end
end