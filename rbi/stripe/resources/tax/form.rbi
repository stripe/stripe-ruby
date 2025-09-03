# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    # Tax forms are legal documents which are delivered to one or more tax authorities for information reporting purposes.
    #
    # Related guide: [US tax reporting for Connect platforms](https://stripe.com/docs/connect/tax-reporting)
    class Form < APIResource
      class AuSerr < Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_end_date; end
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_start_date; end
      end
      class CaMrdp < Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_end_date; end
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_start_date; end
      end
      class EuDac7 < Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_end_date; end
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_start_date; end
      end
      class FilingStatus < Stripe::StripeObject
        class Jurisdiction < Stripe::StripeObject
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          def country; end
          # Indicates the level of the jurisdiction where the form was filed.
          sig { returns(String) }
          def level; end
          # [ISO 3166-2 U.S. state code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix, if any. For example, "NY" for New York, United States. Null for non-U.S. forms.
          sig { returns(T.nilable(String)) }
          def state; end
        end
        # Time when the filing status was updated.
        sig { returns(Integer) }
        def effective_at; end
        # Attribute for field jurisdiction
        sig { returns(Jurisdiction) }
        def jurisdiction; end
        # The current status of the filed form.
        sig { returns(String) }
        def value; end
      end
      class GbMrdp < Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_end_date; end
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_start_date; end
      end
      class NzMrdp < Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_end_date; end
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_start_date; end
      end
      class Payee < Stripe::StripeObject
        # The ID of the payee's Stripe account.
        sig { returns(T.nilable(T.any(String, Stripe::Account))) }
        def account; end
        # The external reference to this payee.
        sig { returns(T.nilable(String)) }
        def external_reference; end
        # Either `account` or `external_reference`.
        sig { returns(String) }
        def type; end
      end
      class Us1099K < Stripe::StripeObject
        # Year represented by the information reported on the tax form.
        sig { returns(Integer) }
        def reporting_year; end
      end
      class Us1099Misc < Stripe::StripeObject
        # Year represented by the information reported on the tax form.
        sig { returns(Integer) }
        def reporting_year; end
      end
      class Us1099Nec < Stripe::StripeObject
        # Year represented by the information reported on the tax form.
        sig { returns(Integer) }
        def reporting_year; end
      end
      # Attribute for field au_serr
      sig { returns(T.nilable(AuSerr)) }
      def au_serr; end
      # Attribute for field ca_mrdp
      sig { returns(T.nilable(CaMrdp)) }
      def ca_mrdp; end
      # The form that corrects this form, if any.
      sig { returns(T.nilable(T.any(String, Stripe::Tax::Form))) }
      def corrected_by; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Attribute for field eu_dac7
      sig { returns(T.nilable(EuDac7)) }
      def eu_dac7; end
      # A list of tax filing statuses. Note that a filing status will only be included if the form has been filed directly with the jurisdiction’s tax authority.
      sig { returns(T::Array[FilingStatus]) }
      def filing_statuses; end
      # Attribute for field gb_mrdp
      sig { returns(T.nilable(GbMrdp)) }
      def gb_mrdp; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Attribute for field nz_mrdp
      sig { returns(T.nilable(NzMrdp)) }
      def nz_mrdp; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Attribute for field payee
      sig { returns(Payee) }
      def payee; end
      # The type of the tax form. An additional hash is included on the tax form with a name matching this value. It contains additional information specific to the tax form type.
      sig { returns(String) }
      def type; end
      # Attribute for field us_1099_k
      sig { returns(T.nilable(Us1099K)) }
      def us_1099_k; end
      # Attribute for field us_1099_misc
      sig { returns(T.nilable(Us1099Misc)) }
      def us_1099_misc; end
      # Attribute for field us_1099_nec
      sig { returns(T.nilable(Us1099Nec)) }
      def us_1099_nec; end
      class ListParams < Stripe::RequestParams
        class Payee < Stripe::RequestParams
          # The ID of the Stripe account whose forms will be retrieved.
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          # The external reference to the payee whose forms will be retrieved.
          sig { returns(T.nilable(String)) }
          def external_reference; end
          sig { params(_external_reference: T.nilable(String)).returns(T.nilable(String)) }
          def external_reference=(_external_reference); end
          # Specifies the payee type. Either `account` or `external_reference`.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          sig {
            params(account: T.nilable(String), external_reference: T.nilable(String), type: T.nilable(String)).void
           }
          def initialize(account: nil, external_reference: nil, type: nil); end
        end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # The payee whose volume is represented on the tax form.
        sig { returns(::Stripe::Tax::Form::ListParams::Payee) }
        def payee; end
        sig {
          params(_payee: ::Stripe::Tax::Form::ListParams::Payee).returns(::Stripe::Tax::Form::ListParams::Payee)
         }
        def payee=(_payee); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # An optional filter on the list, based on the object `type` field. Without the filter, the list includes all current and future tax form types. If your integration expects only one type of tax form in the response, make sure to provide a type value in the request.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), payee: ::Stripe::Tax::Form::ListParams::Payee, starting_after: T.nilable(String), type: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          payee: nil,
          starting_after: nil,
          type: nil
        ); end
      end
      class PdfParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Returns a list of tax forms which were previously created. The tax forms are returned in sorted order, with the oldest tax forms appearing first.
      sig {
        params(params: T.any(::Stripe::Tax::Form::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Download the PDF for a tax form.
      sig {
        params(params: T.any(::Stripe::Tax::Form::PdfParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, read_body_chunk_block: T.untyped).returns(T.untyped)
       }
      def pdf(params = {}, opts = {}, &read_body_chunk_block); end

      # Download the PDF for a tax form.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::Form::PdfParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, read_body_chunk_block: T.untyped).returns(T.untyped)
       }
      def self.pdf(id, params = {}, opts = {}, &read_body_chunk_block); end
    end
  end
end