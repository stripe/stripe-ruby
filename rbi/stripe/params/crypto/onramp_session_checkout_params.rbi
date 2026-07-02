# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    class OnrampSessionCheckoutParams < ::Stripe::RequestParams
      class MandateData < ::Stripe::RequestParams
        class CustomerAcceptance < ::Stripe::RequestParams
          class Offline < ::Stripe::RequestParams; end
          class Online < ::Stripe::RequestParams
            # The IP address from which the Mandate was accepted by the customer.
            sig { returns(String) }
            def ip_address; end
            sig { params(_ip_address: String).returns(String) }
            def ip_address=(_ip_address); end
            # The user agent of the browser from which the Mandate was accepted by the customer.
            sig { returns(String) }
            def user_agent; end
            sig { params(_user_agent: String).returns(String) }
            def user_agent=(_user_agent); end
            sig { params(ip_address: String, user_agent: String).void }
            def initialize(ip_address: nil, user_agent: nil); end
          end
          # The time at which the customer accepted the Mandate.
          sig { returns(T.nilable(Integer)) }
          def accepted_at; end
          sig { params(_accepted_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def accepted_at=(_accepted_at); end
          # If this is a Mandate accepted offline, this hash contains details about the offline acceptance.
          sig {
            returns(T.nilable(::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData::CustomerAcceptance::Offline))
           }
          def offline; end
          sig {
            params(_offline: T.nilable(::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData::CustomerAcceptance::Offline)).returns(T.nilable(::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData::CustomerAcceptance::Offline))
           }
          def offline=(_offline); end
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          sig {
            returns(T.nilable(::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData::CustomerAcceptance::Online))
           }
          def online; end
          sig {
            params(_online: T.nilable(::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData::CustomerAcceptance::Online)).returns(T.nilable(::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData::CustomerAcceptance::Online))
           }
          def online=(_online); end
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(accepted_at: T.nilable(Integer), offline: T.nilable(::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData::CustomerAcceptance::Offline), online: T.nilable(::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData::CustomerAcceptance::Online), type: String).void
           }
          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil); end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        sig {
          returns(::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData::CustomerAcceptance)
         }
        def customer_acceptance; end
        sig {
          params(_customer_acceptance: ::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData::CustomerAcceptance).returns(::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData::CustomerAcceptance)
         }
        def customer_acceptance=(_customer_acceptance); end
        sig {
          params(customer_acceptance: ::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData::CustomerAcceptance).void
         }
        def initialize(customer_acceptance: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # This hash contains details about the mandate to create
      sig { returns(T.nilable(::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData)) }
      def mandate_data; end
      sig {
        params(_mandate_data: T.nilable(::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData)).returns(T.nilable(::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData))
       }
      def mandate_data=(_mandate_data); end
      sig {
        params(expand: T.nilable(T::Array[String]), mandate_data: T.nilable(::Stripe::Crypto::OnrampSessionCheckoutParams::MandateData)).void
       }
      def initialize(expand: nil, mandate_data: nil); end
    end
  end
end