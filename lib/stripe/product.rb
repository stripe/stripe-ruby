module Stripe
  class Product < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Update

    # Keep APIResource#url as `api_url` to avoid letting the external URL
    # replace the Stripe URL.
    alias_method :api_url, :url

    # Override Stripe::APIOperations::Update#save to explicitly pass URL.
    def save
      super(:req_url => api_url)
    end
  end
end
