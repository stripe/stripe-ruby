# frozen_string_literal: true

module Stripe
  module Sigma
    class ScheduledQueryRun < Stripe::APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "scheduled_query_run".freeze

      def self.resource_url
        "/v1/sigma/scheduled_query_runs"
      end
    end
  end
end
