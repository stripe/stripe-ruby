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
          def allow_relinking; end
          # The business name of the merchant accepting Apple's Terms and Conditions.
          sig { returns(String) }
          def merchant_display_name; end
        end
        # The options associated with the Apple Terms and Conditions link type.
        sig { returns(T.nilable(AppleTermsAndConditions)) }
        def apple_terms_and_conditions; end
      end
      # Link type options associated with the current onboarding link object.
      sig { returns(LinkOptions) }
      def link_options; end
      # The type of link being generated.
      sig { returns(String) }
      def link_type; end
      # Attribute for field object
      sig { returns(String) }
      def object; end
      # Stripe account ID to generate the link for.
      sig { returns(T.nilable(String)) }
      def on_behalf_of; end
      # The link passed back to the user for their onboarding.
      sig { returns(String) }
      def redirect_url; end
      class CreateParams < Stripe::RequestParams
        class LinkOptions < Stripe::RequestParams
          class AppleTermsAndConditions < Stripe::RequestParams
            # Whether the link should also support users relinking their Apple account.
            sig { returns(T.nilable(T::Boolean)) }
            def allow_relinking; end
            sig { params(_allow_relinking: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def allow_relinking=(_allow_relinking); end
            # The business name of the merchant accepting Apple's Terms and Conditions.
            sig { returns(String) }
            def merchant_display_name; end
            sig { params(_merchant_display_name: String).returns(String) }
            def merchant_display_name=(_merchant_display_name); end
            sig {
              params(allow_relinking: T.nilable(T::Boolean), merchant_display_name: String).void
             }
            def initialize(allow_relinking: nil, merchant_display_name: nil); end
          end
          # The options associated with the Apple Terms and Conditions link type.
          sig {
            returns(T.nilable(::Stripe::Terminal::OnboardingLink::CreateParams::LinkOptions::AppleTermsAndConditions))
           }
          def apple_terms_and_conditions; end
          sig {
            params(_apple_terms_and_conditions: T.nilable(::Stripe::Terminal::OnboardingLink::CreateParams::LinkOptions::AppleTermsAndConditions)).returns(T.nilable(::Stripe::Terminal::OnboardingLink::CreateParams::LinkOptions::AppleTermsAndConditions))
           }
          def apple_terms_and_conditions=(_apple_terms_and_conditions); end
          sig {
            params(apple_terms_and_conditions: T.nilable(::Stripe::Terminal::OnboardingLink::CreateParams::LinkOptions::AppleTermsAndConditions)).void
           }
          def initialize(apple_terms_and_conditions: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Specific fields needed to generate the desired link type.
        sig { returns(::Stripe::Terminal::OnboardingLink::CreateParams::LinkOptions) }
        def link_options; end
        sig {
          params(_link_options: ::Stripe::Terminal::OnboardingLink::CreateParams::LinkOptions).returns(::Stripe::Terminal::OnboardingLink::CreateParams::LinkOptions)
         }
        def link_options=(_link_options); end
        # The type of link being generated.
        sig { returns(String) }
        def link_type; end
        sig { params(_link_type: String).returns(String) }
        def link_type=(_link_type); end
        # Stripe account ID to generate the link for.
        sig { returns(T.nilable(String)) }
        def on_behalf_of; end
        sig { params(_on_behalf_of: T.nilable(String)).returns(T.nilable(String)) }
        def on_behalf_of=(_on_behalf_of); end
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