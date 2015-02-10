module Stripe
  class FileUpload < APIResource
    def self.url
      "/v1/files"
    end

    def self.create(params={}, opts={})
      opts = {
        :content_type => 'multipart/form-data',
        :api_base => Stripe::uploads_base
      }.merge(opts)
      response, opts = request(:post, url, params, opts)
      Util.convert_to_stripe_object(response, opts)
    end

    def self.all(filters={}, opts={})
      opts = {:api_base => Stripe::uploads_base}.merge(opts)
      response, opts = request(:get, url, filters, opts)
      Util.convert_to_stripe_object(response, opts)
    end
  end
end
