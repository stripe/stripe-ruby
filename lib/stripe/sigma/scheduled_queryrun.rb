# frozen_string_literal: true

module Stripe
  module Sigma
    class ScheduledQueryRun < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = 'scheduled_query_run'.freeze
    end
  end
end
