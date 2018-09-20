# frozen_string_literal: true

module Stripe
  class File < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List

    # This resource can have two different object names. In latter API
    # versions, only `file` is used, but since stripe-ruby may be used with
    # any API version, we need to support deserializing the older
    # `file_upload` object into the same class.
    OBJECT_NAME = "file".freeze
    OBJECT_NAME_ALT = "file_upload".freeze

    def self.resource_url
      "/v1/files"
    end

    def self.create(params = {}, opts = {})
      # rest-client would accept a vanilla `File` for upload, but Faraday does
      # not. Support the old API by wrapping a `File`-like object with an
      # `UploadIO` object if we're given one.
      if params[:file] && params[:file].respond_to?(:path) && params[:file].respond_to?(:read)
        params[:file] = Faraday::UploadIO.new(params[:file], nil)
      end

      opts = {
        api_base: Stripe.uploads_base,
        content_type: "multipart/form-data",
      }.merge(Util.normalize_opts(opts))
      super
    end
  end

  # For backwards compatibility, the `File` class is aliased to `FileUpload`.
  FileUpload = File
end
