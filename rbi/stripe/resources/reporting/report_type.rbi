# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
      # Most recent time for which this Report Type is available. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :data_available_end
      # Earliest time for which this Report Type is available. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :data_available_start
      # List of column names that are included by default when this Report Type gets run. (If the Report Type doesn't support the `columns` parameter, this will be null.)
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :default_columns
      # The [ID of the Report Type](https://stripe.com/docs/reporting/statements/api#available-report-types), such as `balance.summary.1`.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # Human-readable name of the Report Type
      sig { returns(String) }
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # When this Report Type was latest updated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :updated
      # Version of the Report Type. Different versions report with the same ID will have the same purpose, but may take different run parameters or have different result schemas.
      sig { returns(Integer) }
      attr_reader :version
      class ListParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Returns a full list of Report Types.
      sig {
        params(params: T.any(::Stripe::Reporting::ReportType::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end