# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # This object represents files hosted on Stripe's servers. You can upload
  # files with the [create file](https://stripe.com/docs/api#create_file) request
  # (for example, when uploading dispute evidence). Stripe also
  # creates files independently (for example, the results of a [Sigma scheduled
  # query](https://stripe.com/docs/api#scheduled_queries)).
  #
  # Related guide: [File upload guide](https://stripe.com/docs/file-upload)
  class File < APIResource
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(Integer)) }
    # The file expires and isn't available at this time in epoch seconds.
    attr_reader :expires_at
    sig { returns(T.nilable(String)) }
    # The suitable name for saving the file to a filesystem.
    attr_reader :filename
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(Stripe::ListObject)) }
    # A list of [file links](https://stripe.com/docs/api#file_links) that point at this file.
    attr_reader :links
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(String) }
    # The [purpose](https://stripe.com/docs/file-upload#uploading-a-file) of the uploaded file.
    attr_reader :purpose
    sig { returns(Integer) }
    # The size of the file object in bytes.
    attr_reader :size
    sig { returns(T.nilable(String)) }
    # A suitable title for the document.
    attr_reader :title
    sig { returns(T.nilable(String)) }
    # The returned file type (for example, `csv`, `pdf`, `jpg`, or `png`).
    attr_reader :type
    sig { returns(T.nilable(String)) }
    # Use your live secret API key to download the file from this URL.
    attr_reader :url
  end
end