# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class BatchJobCreateParams < ::Stripe::RequestParams
        class Endpoint < ::Stripe::RequestParams
          # The HTTP method to use when calling the endpoint.
          attr_accessor :http_method
          # The path of the endpoint to run this batch job against.
          # In the form used in the documentation. For instance, for
          # subscription migration this would be `/v1/subscriptions/:id/migrate`.
          attr_accessor :path

          def initialize(http_method: nil, path: nil)
            @http_method = http_method
            @path = path
          end
        end

        class NotificationSuppression < ::Stripe::RequestParams
          # The scope of notification suppression.
          attr_accessor :scope

          def initialize(scope: nil)
            @scope = scope
          end
        end
        # The endpoint configuration for the batch job.
        attr_accessor :endpoint
        # Optional field that allows the user to control how fast they want this batch job to run.
        # Gives them a control over the number of webhooks they receive.
        attr_accessor :maximum_rps
        # The metadata of the `batch_job`.
        attr_accessor :metadata
        # Notification suppression settings for the batch job.
        attr_accessor :notification_suppression
        # Allows the user to skip validation.
        attr_accessor :skip_validation

        def initialize(
          endpoint: nil,
          maximum_rps: nil,
          metadata: nil,
          notification_suppression: nil,
          skip_validation: nil
        )
          @endpoint = endpoint
          @maximum_rps = maximum_rps
          @metadata = metadata
          @notification_suppression = notification_suppression
          @skip_validation = skip_validation
        end
      end
    end
  end
end
