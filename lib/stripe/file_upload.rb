module Stripe
  class FileUpload < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List

    OBJECT_NAME = 'file_upload'

    def self.resource_url
      "/v1/files"
    end

    def self.request(method, url, params={}, opts={})
      opts = {
        :api_base => Stripe::uploads_base
      }.merge(Util.normalize_opts(opts))
      super
    end

    def self.create(params={}, opts={})
      # rest-client would accept a vanilla `File` for upload, but Faraday does
      # not. Support the old API by wrapping a `File` with an `UploadIO` object
      # if we're given one.
      if params[:file] && params[:file].is_a?(File)
        params[:file] = Faraday::UploadIO.new(params[:file], nil)
      end

      opts = {
        :content_type => 'multipart/form-data',
      }.merge(Util.normalize_opts(opts))
      super
    end
  end
end
