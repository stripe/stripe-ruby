# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This object represents files hosted on Stripe's servers. You can upload
  # files with the [create file](https://stripe.com/docs/api#create_file) request
  # (for example, when uploading dispute evidence). Stripe also
  # creates files independently (for example, the results of a [Sigma scheduled
  # query](https://stripe.com/docs/api#scheduled_queries)).
  #
  # Related guide: [File upload guide](https://stripe.com/docs/file-upload)
  class File < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List

    OBJECT_NAME = "file"

    # This resource can have two different object names. In latter API
    # versions, only `file` is used, but since stripe-ruby may be used with
    # any API version, we need to support deserializing the older
    # `file_upload` object into the same class.
    OBJECT_NAME_ALT = "file_upload"

    def self.resource_url
      "/v1/files"
    end

    def self.create(params = {}, opts = {})
      if params[:file] && !params[:file].is_a?(String) && !params[:file].respond_to?(:read)
        raise ArgumentError, "file must respond to `#read`"
      end

      config = opts[:client]&.config || Stripe.config
      opts = {
        api_base: config.uploads_base,
        content_type: MultipartEncoder::MULTIPART_FORM_DATA,
      }.merge(Util.normalize_opts(opts))
      super
    end

    # Returns a list of the files that your account has access to. Stripe sorts and returns the files by their creation dates, placing the most recently created files at the top.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/files", params: filters, opts: opts)
    end
  end
end
