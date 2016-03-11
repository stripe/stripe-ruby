module Stripe
  class FileUpload < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List

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
      opts = {
        :content_type => 'multipart/form-data',
      }.merge(Util.normalize_opts(opts))
      super
    end
  end
end
