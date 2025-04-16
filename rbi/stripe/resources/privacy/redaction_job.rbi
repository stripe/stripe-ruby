# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Privacy
    # Redaction Jobs store the status of a redaction request. They are created
    # when a redaction request is made and track the redaction validation and execution.
    class RedactionJob < APIResource
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The objects at the root level that are subject to redaction.
      sig { returns(T.nilable(Stripe::Privacy::RedactionJobRootObjects)) }
      attr_reader :objects
      # The status field represents the current state of the redaction job. It can take on any of the following values: VALIDATING, READY, REDACTING, SUCCEEDED, CANCELED, FAILED.
      sig { returns(String) }
      attr_reader :status
      # Default is "error". If "error", we will make sure all objects in the graph are redactable in the 1st traversal, otherwise error. If "fix", where possible, we will auto-fix any validation errors (e.g. by auto-transitioning objects to a terminal state, etc.) in the 2nd traversal before redacting
      sig { returns(T.nilable(String)) }
      attr_reader :validation_behavior
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Attribute for param field status
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class Objects < Stripe::RequestParams
          # Attribute for param field charges
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :charges
          # Attribute for param field checkout_sessions
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :checkout_sessions
          # Attribute for param field customers
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :customers
          # Attribute for param field identity_verification_sessions
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :identity_verification_sessions
          # Attribute for param field invoices
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :invoices
          # Attribute for param field issuing_cardholders
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :issuing_cardholders
          # Attribute for param field issuing_cards
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :issuing_cards
          # Attribute for param field payment_intents
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :payment_intents
          # Attribute for param field radar_value_list_items
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :radar_value_list_items
          # Attribute for param field setup_intents
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :setup_intents
          sig {
            params(charges: T.nilable(T::Array[String]), checkout_sessions: T.nilable(T::Array[String]), customers: T.nilable(T::Array[String]), identity_verification_sessions: T.nilable(T::Array[String]), invoices: T.nilable(T::Array[String]), issuing_cardholders: T.nilable(T::Array[String]), issuing_cards: T.nilable(T::Array[String]), payment_intents: T.nilable(T::Array[String]), radar_value_list_items: T.nilable(T::Array[String]), setup_intents: T.nilable(T::Array[String])).void
           }
          def initialize(
            charges: nil,
            checkout_sessions: nil,
            customers: nil,
            identity_verification_sessions: nil,
            invoices: nil,
            issuing_cardholders: nil,
            issuing_cards: nil,
            payment_intents: nil,
            radar_value_list_items: nil,
            setup_intents: nil
          ); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The objects at the root level that are subject to redaction.
        sig { returns(::Stripe::Privacy::RedactionJob::CreateParams::Objects) }
        attr_accessor :objects
        # Default is "error". If "error", we will make sure all objects in the graph are
        # redactable in the 1st traversal, otherwise error. If "fix", where possible, we will
        # auto-fix any validation errors (e.g. by auto-transitioning objects to a terminal
        # state, etc.) in the 2nd traversal before redacting
        sig { returns(T.nilable(String)) }
        attr_accessor :validation_behavior
        sig {
          params(expand: T.nilable(T::Array[String]), objects: ::Stripe::Privacy::RedactionJob::CreateParams::Objects, validation_behavior: T.nilable(String)).void
         }
        def initialize(expand: nil, objects: nil, validation_behavior: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Attribute for param field validation_behavior
        sig { returns(T.nilable(String)) }
        attr_accessor :validation_behavior
        sig {
          params(expand: T.nilable(T::Array[String]), validation_behavior: T.nilable(String)).void
         }
        def initialize(expand: nil, validation_behavior: nil); end
      end
      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class RunParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class ValidateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Cancel redaction job method
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJob::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def cancel(params = {}, opts = {}); end

      # Cancel redaction job method
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJob::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.cancel(job, params = {}, opts = {}); end

      # Create redaction job method
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJob::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.create(params = {}, opts = {}); end

      # List redaction jobs method...
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJob::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Run redaction job method
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJob::RunParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def run(params = {}, opts = {}); end

      # Run redaction job method
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJob::RunParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.run(job, params = {}, opts = {}); end

      # Update redaction job method
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJob::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.update(job, params = {}, opts = {}); end

      # Validate redaction job method
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJob::ValidateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def validate(params = {}, opts = {}); end

      # Validate redaction job method
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJob::ValidateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.validate(job, params = {}, opts = {}); end
    end
  end
end