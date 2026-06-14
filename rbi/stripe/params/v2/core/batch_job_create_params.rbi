# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class BatchJobCreateParams < ::Stripe::RequestParams
        class Endpoint < ::Stripe::RequestParams
          # The HTTP method to use when calling the endpoint.
          sig { returns(String) }
          def http_method; end
          sig { params(_http_method: String).returns(String) }
          def http_method=(_http_method); end
          # The path of the endpoint to run this batch job against.
          # In the form used in the documentation. For instance, for
          # subscription migration this would be `/v1/subscriptions/:id/migrate`.
          sig { returns(String) }
          def path; end
          sig { params(_path: String).returns(String) }
          def path=(_path); end
          sig { params(http_method: String, path: String).void }
          def initialize(http_method: nil, path: nil); end
        end
        class NotificationSuppression < ::Stripe::RequestParams
          # The scope of notification suppression.
          sig { returns(String) }
          def scope; end
          sig { params(_scope: String).returns(String) }
          def scope=(_scope); end
          sig { params(scope: String).void }
          def initialize(scope: nil); end
        end
        # The endpoint configuration for the batch job.
        sig { returns(::Stripe::V2::Core::BatchJobCreateParams::Endpoint) }
        def endpoint; end
        sig {
          params(_endpoint: ::Stripe::V2::Core::BatchJobCreateParams::Endpoint).returns(::Stripe::V2::Core::BatchJobCreateParams::Endpoint)
         }
        def endpoint=(_endpoint); end
        # Optional field that allows the user to control how fast they want this batch job to run.
        # Gives them a control over the number of webhooks they receive.
        sig { returns(T.nilable(Integer)) }
        def maximum_rps; end
        sig { params(_maximum_rps: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def maximum_rps=(_maximum_rps); end
        # The metadata of the `batch_job`.
        sig { returns(T::Hash[String, String]) }
        def metadata; end
        sig { params(_metadata: T::Hash[String, String]).returns(T::Hash[String, String]) }
        def metadata=(_metadata); end
        # Notification suppression settings for the batch job.
        sig {
          returns(T.nilable(::Stripe::V2::Core::BatchJobCreateParams::NotificationSuppression))
         }
        def notification_suppression; end
        sig {
          params(_notification_suppression: T.nilable(::Stripe::V2::Core::BatchJobCreateParams::NotificationSuppression)).returns(T.nilable(::Stripe::V2::Core::BatchJobCreateParams::NotificationSuppression))
         }
        def notification_suppression=(_notification_suppression); end
        # Allows the user to skip validation.
        sig { returns(T::Boolean) }
        def skip_validation; end
        sig { params(_skip_validation: T::Boolean).returns(T::Boolean) }
        def skip_validation=(_skip_validation); end
        sig {
          params(endpoint: ::Stripe::V2::Core::BatchJobCreateParams::Endpoint, maximum_rps: T.nilable(Integer), metadata: T::Hash[String, String], notification_suppression: T.nilable(::Stripe::V2::Core::BatchJobCreateParams::NotificationSuppression), skip_validation: T::Boolean).void
         }
        def initialize(
          endpoint: nil,
          maximum_rps: nil,
          metadata: nil,
          notification_suppression: nil,
          skip_validation: nil
        ); end
      end
    end
  end
end