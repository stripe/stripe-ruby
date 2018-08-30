# frozen_string_literal: true

module Stripe
  module Reporting
    class ReportRun < Stripe::APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "reporting.report_run".freeze
    end
  end
end
