# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class ExtendService < StripeService
      attr_reader :workflows, :workflow_runs

      def initialize(requestor)
        super
        @workflows = Stripe::V2::Extend::WorkflowService.new(@requestor)
        @workflow_runs = Stripe::V2::Extend::WorkflowRunService.new(@requestor)
      end
    end
  end
end
