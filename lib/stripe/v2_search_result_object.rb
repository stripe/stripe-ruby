# frozen_string_literal: true

module Stripe
  module V2
    class SearchResultObject < StripeObject
      include Enumerable
      include Stripe::APIOperations::Request

      OBJECT_NAME = "v2.search_result"
      attr_accessor :filters

      def self.object_name
        OBJECT_NAME
      end

      def initialize(*args)
        super
        self.filters = {}
      end

      def each(&blk)
        data.each(&blk)
      end

      def empty?
        data.empty?
      end

      def auto_paging_each(&blk)
        return enum_for(:auto_paging_each) unless block_given?

        page = self
        loop do
          page.each(&blk)
          break if page.next_page_url.nil?

          page = page.fetch_next_page
        rescue LocalJumpError => e
          raise unless e.reason == :break

          break
        end
      end

      def fetch_next_page(opts = {})
        return self.class.construct_from({ data: [] }, opts, nil, :v2) if next_page_url.nil?

        params = filters.dup
        params.delete(:limit)
        params.delete("limit")

        request_stripe_object(
          method: :post,
          path: next_page_url,
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
