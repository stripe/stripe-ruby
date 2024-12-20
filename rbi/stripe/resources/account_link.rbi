# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Account Links are the means by which a Connect platform grants a connected account permission to access
  # Stripe-hosted applications, such as Connect Onboarding.
  #
  # Related guide: [Connect Onboarding](https://stripe.com/docs/connect/custom/hosted-onboarding)
  class AccountLink < APIResource
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # The timestamp at which this account link will expire.
    sig { returns(Integer) }
    attr_reader :expires_at
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # The URL for the account link.
    sig { returns(String) }
    attr_reader :url
    class CreateParams < Stripe::RequestParams
      class CollectionOptions < Stripe::RequestParams
        # Specifies whether the platform collects only currently_due requirements (`currently_due`) or both currently_due and eventually_due requirements (`eventually_due`). If you don't specify `collection_options`, the default value is `currently_due`.
        sig { returns(String) }
        attr_accessor :fields
        # Specifies whether the platform collects future_requirements in addition to requirements in Connect Onboarding. The default value is `omit`.
        sig { returns(String) }
        attr_accessor :future_requirements
        sig { params(fields: String, future_requirements: String).void }
        def initialize(fields: nil, future_requirements: nil); end
      end
      # The identifier of the account to create an account link for.
      sig { returns(String) }
      attr_accessor :account
      # The collect parameter is deprecated. Use `collection_options` instead.
      sig { returns(String) }
      attr_accessor :collect
      # Specifies the requirements that Stripe collects from connected accounts in the Connect Onboarding flow.
      sig { returns(::Stripe::AccountLink::CreateParams::CollectionOptions) }
      attr_accessor :collection_options
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # The URL the user will be redirected to if the account link is expired, has been previously-visited, or is otherwise invalid. The URL you specify should attempt to generate a new account link with the same parameters used to create the original account link, then redirect the user to the new account link's URL so they can continue with Connect Onboarding. If a new account link cannot be generated or the redirect fails you should display a useful error to the user.
      sig { returns(String) }
      attr_accessor :refresh_url
      # The URL that the user will be redirected to upon leaving or completing the linked flow.
      sig { returns(String) }
      attr_accessor :return_url
      # The type of account link the user is requesting. Possible values are `account_onboarding` or `account_update`.
      sig { returns(String) }
      attr_accessor :type
      sig {
        params(account: String, collect: String, collection_options: ::Stripe::AccountLink::CreateParams::CollectionOptions, expand: T::Array[String], refresh_url: String, return_url: String, type: String).void
       }
      def initialize(
        account: nil,
        collect: nil,
        collection_options: nil,
        expand: nil,
        refresh_url: nil,
        return_url: nil,
        type: nil
      ); end
    end
    # Creates an AccountLink object that includes a single-use Stripe URL that the platform can redirect their user to in order to take them through the Connect Onboarding flow.
    sig {
      params(params: T.any(::Stripe::AccountLink::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::AccountLink)
     }
    def self.create(params = {}, opts = {}); end
  end
end