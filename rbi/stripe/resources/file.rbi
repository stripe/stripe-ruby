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
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # The file expires and isn't available at this time in epoch seconds.
    sig { returns(T.nilable(Integer)) }
    attr_reader :expires_at

    # The suitable name for saving the file to a filesystem.
    sig { returns(T.nilable(String)) }
    attr_reader :filename

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # A list of [file links](https://stripe.com/docs/api#file_links) that point at this file.
    sig { returns(T.nilable(Stripe::ListObject)) }
    attr_reader :links

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The [purpose](https://stripe.com/docs/file-upload#uploading-a-file) of the uploaded file.
    sig { returns(String) }
    attr_reader :purpose

    # The size of the file object in bytes.
    sig { returns(Integer) }
    attr_reader :size

    # A suitable title for the document.
    sig { returns(T.nilable(String)) }
    attr_reader :title

    # The returned file type (for example, `csv`, `pdf`, `jpg`, or `png`).
    sig { returns(T.nilable(String)) }
    attr_reader :type

    # Use your live secret API key to download the file from this URL.
    sig { returns(T.nilable(String)) }
    attr_reader :url
  end
end