# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This is an object representing a file hosted on Stripe's servers. The
  # file may have been uploaded by yourself using the [create file](https://stripe.com/docs/api#create_file)
  # request (for example, when uploading dispute evidence) or it may have
  # been created by Stripe (for example, the results of a [Sigma scheduled
  # query](https://stripe.com/docs/api#scheduled_queries)).
  #
  # Related guide: [File Upload Guide](https://stripe.com/docs/file-upload).
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
      if params[:file] && !params[:file].is_a?(String)
        unless params[:file].respond_to?(:read)
          raise ArgumentError, "file must respond to `#read`"
        end
      end

      config = opts[:client]&.config || Stripe.config
      opts = {
        api_base: config.uploads_base,
        content_type: MultipartEncoder::MULTIPART_FORM_DATA,
      }.merge(Util.normalize_opts(opts))
      super
    end
  end
end
