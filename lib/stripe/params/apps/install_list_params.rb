# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Apps
    class InstallListParams < ::Stripe::RequestParams
      class Created < ::Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # Only return installs made by this account. Only useful to app developers and embedding platforms, whose lists span the accounts that installed their app.
      attr_accessor :account
      # Only return installs for the app specified by this app ID.
      attr_accessor :app
      # Only return installs whose installer must authorize pending permissions, content security policy entries, or endpoints.
      attr_accessor :approval_required
      # Only return installs in the distribution channel specified by this channel name.
      attr_accessor :channel
      # Only return app installs that were created during the given date interval.
      attr_accessor :created
      # Only return installs created by the embedding platform specified by this account ID.
      attr_accessor :created_by
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # Only return installs with the given status.
      attr_accessor :status

      def initialize(
        account: nil,
        app: nil,
        approval_required: nil,
        channel: nil,
        created: nil,
        created_by: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        status: nil
      )
        @account = account
        @app = app
        @approval_required = approval_required
        @channel = channel
        @created = created
        @created_by = created_by
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
        @status = status
      end
    end
  end
end
