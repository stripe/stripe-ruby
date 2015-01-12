module Stripe
  class FileUpload < APIResource
    UPLOADS_API_BASE = "https://uploads.stripe.com"

    def self.url
      "/v1/files"
    end

    def self.request_headers
      {
        :content_type => 'multipart/form-data',
      }
    end

    def self.create(params={}, api_key=nil)
      response, api_key = Stripe.request(
        :post, self.url, api_key, params, self.request_headers, UPLOADS_API_BASE)
      Util.convert_to_stripe_object(response, api_key)
    end

    def self.all(filters={}, opts={})
      api_key, headers = Util.parse_opts(opts)
      response, api_key = Stripe.request(
        :get, self.url, api_key, filters, headers, UPLOADS_API_BASE)
      Util.convert_to_stripe_object(response, api_key)
    end

    def refresh
      response, api_key = Stripe.request(
        :get, url, @api_key, @retrieve_options, self.class.request_headers, UPLOADS_API_BASE)
      refresh_from(response, api_key)
    end
  end
end
