# frozen_string_literal: true

module Stripe
  module Reporting
    class ReportType < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "reporting.report_type".freeze
    end
  end
end
