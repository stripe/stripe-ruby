# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Reporting
    # The Report Type resource corresponds to a particular type of report, such as
    # the "Activity summary" or "Itemized payouts" reports. These objects are
    # identified by an ID belonging to a set of enumerated values. See
    # [API Access to Reports documentation](https://stripe.com/docs/reporting/statements/api)
    # for those Report Type IDs, along with required and optional parameters.
    #
    # Note that certain report types can only be run based on your live-mode data (not test-mode
    # data), and will error when queried without a [live-mode API key](https://stripe.com/docs/keys#test-live-modes).
    class ReportType < APIResource
      sig { returns(Integer) }
      # Most recent time for which this Report Type is available. Measured in seconds since the Unix epoch.
      attr_reader :data_available_end
      sig { returns(Integer) }
      # Earliest time for which this Report Type is available. Measured in seconds since the Unix epoch.
      attr_reader :data_available_start
      sig { returns(T.nilable(T::Array[String])) }
      # List of column names that are included by default when this Report Type gets run. (If the Report Type doesn't support the `columns` parameter, this will be null.)
      attr_reader :default_columns
      sig { returns(String) }
      # The [ID of the Report Type](https://stripe.com/docs/reporting/statements/api#available-report-types), such as `balance.summary.1`.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # Human-readable name of the Report Type
      attr_reader :name
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(Integer) }
      # When this Report Type was latest updated. Measured in seconds since the Unix epoch.
      attr_reader :updated
      sig { returns(Integer) }
      # Version of the Report Type. Different versions report with the same ID will have the same purpose, but may take different run parameters or have different result schemas.
      attr_reader :version
    end
  end
end