# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    # Returns redirect links used for onboarding onto Tap to Pay on iPhone.
    class OnboardingLink < APIResource
      class LinkOptions < Stripe::StripeObject
        class AppleTermsAndConditions < Stripe::StripeObject
          # Whether the link should also support users relinking their Apple account.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :allow_relinking
          # The business name of the merchant accepting Apple's Terms and Conditions.
          sig { returns(String) }
          attr_reader :merchant_display_name
        end
        # The options associated with the Apple Terms and Conditions link type.
        sig { returns(T.nilable(AppleTermsAndConditions)) }
        attr_reader :apple_terms_and_conditions
      end
      # Link type options associated with the current onboarding link object.
      sig { returns(LinkOptions) }
      attr_reader :link_options
      # The type of link being generated.
      sig { returns(String) }
      attr_reader :link_type
      # Attribute for field object
      sig { returns(String) }
      attr_reader :object
      # Stripe account ID to generate the link for.
      sig { returns(T.nilable(String)) }
      attr_reader :on_behalf_of
      # The link passed back to the user for their onboarding.
      sig { returns(String) }
      attr_reader :redirect_url
      class CreateParams < Stripe::RequestParams
        class LinkOptions < Stripe::RequestParams
          class AppleTermsAndConditions < Stripe::RequestParams
            # Whether the link should also support users relinking their Apple account.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :allow_relinking
            # The business name of the merchant accepting Apple's Terms and Conditions.
            sig { returns(String) }
            attr_accessor :merchant_display_name
            sig {
              params(allow_relinking: T.nilable(T::Boolean), merchant_display_name: String).void
             }
            def initialize(allow_relinking: nil, merchant_display_name: nil); end
          end
          # The options associated with the Apple Terms and Conditions link type.
          sig {
            returns(T.nilable(::Stripe::Terminal::OnboardingLink::CreateParams::LinkOptions::AppleTermsAndConditions))
           }
          attr_accessor :apple_terms_and_conditions
          sig {
            params(apple_terms_and_conditions: T.nilable(::Stripe::Terminal::OnboardingLink::CreateParams::LinkOptions::AppleTermsAndConditions)).void
           }
          def initialize(apple_terms_and_conditions: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Specific fields needed to generate the desired link type.
        sig { returns(::Stripe::Terminal::OnboardingLink::CreateParams::LinkOptions) }
        attr_accessor :link_options
        # The type of link being generated.
        sig { returns(String) }
        attr_accessor :link_type
        # Stripe account ID to generate the link for.
        sig { returns(T.nilable(String)) }
        attr_accessor :on_behalf_of
        sig {
          params(expand: T.nilable(T::Array[String]), link_options: ::Stripe::Terminal::OnboardingLink::CreateParams::LinkOptions, link_type: String, on_behalf_of: T.nilable(String)).void
         }
        def initialize(expand: nil, link_options: nil, link_type: nil, on_behalf_of: nil); end
      end
      # Creates a new OnboardingLink object that contains a redirect_url used for onboarding onto Tap to Pay on iPhone.
      sig {
        params(params: T.any(::Stripe::Terminal::OnboardingLink::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::OnboardingLink)
       }
      def self.create(params = {}, opts = {}); end
    end
  end
end