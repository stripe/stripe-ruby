# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class CreditUnderwritingRecordCreateFromApplicationParams < ::Stripe::RequestParams
      class Application < ::Stripe::RequestParams
        # The channel through which the applicant has submitted their application. Defaults to `online`.
        attr_accessor :application_method
        # Scope of demand made by the applicant.
        attr_accessor :purpose
        # Date when the applicant submitted their application.
        attr_accessor :submitted_at

        def initialize(application_method: nil, purpose: nil, submitted_at: nil)
          @application_method = application_method
          @purpose = purpose
          @submitted_at = submitted_at
        end
      end

      class CreditUser < ::Stripe::RequestParams
        # Email of the applicant or accountholder.
        attr_accessor :email
        # Full name of the company or person.
        attr_accessor :name

        def initialize(email: nil, name: nil)
          @email = email
          @name = name
        end
      end
      # Details about the application submission.
      attr_accessor :application
      # Information about the company or person applying or holding the account.
      attr_accessor :credit_user
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(application: nil, credit_user: nil, expand: nil, metadata: nil)
        @application = application
        @credit_user = credit_user
        @expand = expand
        @metadata = metadata
      end
    end
  end
end
