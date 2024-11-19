# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Reporting
    # The Report Run object represents an instance of a report type generated with
    # specific run parameters. Once the object is created, Stripe begins processing the report.
    # When the report has finished running, it will give you a reference to a file
    # where you can retrieve your results. For an overview, see
    # [API Access to Reports](https://stripe.com/docs/reporting/statements/api).
    #
    # Note that certain report types can only be run based on your live-mode data (not test-mode
    # data), and will error when queried without a [live-mode API key](https://stripe.com/docs/keys#test-live-modes).
    class ReportRun < APIResource
      class Parameters < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :columns
        sig { returns(String) }
        attr_reader :connected_account
        sig { returns(String) }
        attr_reader :currency
        sig { returns(Integer) }
        attr_reader :interval_end
        sig { returns(Integer) }
        attr_reader :interval_start
        sig { returns(String) }
        attr_reader :payout
        sig { returns(String) }
        attr_reader :reporting_category
        sig { returns(String) }
        attr_reader :timezone
      end
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(T.nilable(String)) }
      # If something should go wrong during the run, a message about the failure (populated when
      #  `status=failed`).
      attr_reader :error
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # `true` if the report is run on live mode data and `false` if it is run on test mode data.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(Parameters) }
      # Attribute for field parameters
      attr_reader :parameters
      sig { returns(String) }
      # The ID of the [report type](https://stripe.com/docs/reports/report-types) to run, such as `"balance.summary.1"`.
      attr_reader :report_type
      sig { returns(T.nilable(Stripe::File)) }
      # The file object representing the result of the report run (populated when
      #  `status=succeeded`).
      attr_reader :result
      sig { returns(String) }
      # Status of this report run. This will be `pending` when the run is initially created.
      #  When the run finishes, this will be set to `succeeded` and the `result` field will be populated.
      #  Rarely, we may encounter an error, at which point this will be set to `failed` and the `error` field will be populated.
      attr_reader :status
      sig { returns(T.nilable(Integer)) }
      # Timestamp at which this run successfully finished (populated when
      #  `status=succeeded`). Measured in seconds since the Unix epoch.
      attr_reader :succeeded_at
    end
  end
end