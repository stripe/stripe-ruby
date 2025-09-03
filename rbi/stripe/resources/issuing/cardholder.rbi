# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://stripe.com/docs/issuing) cards.
    #
    # Related guide: [How to create a cardholder](https://stripe.com/docs/issuing/cards/virtual/issue-cards#create-cardholder)
    class Cardholder < APIResource
      class Billing < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          def line2; end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          def state; end
        end
        # Attribute for field address
        sig { returns(Address) }
        def address; end
      end
      class Company < Stripe::StripeObject
        # Whether the company's business ID number was provided.
        sig { returns(T::Boolean) }
        def tax_id_provided; end
      end
      class Individual < Stripe::StripeObject
        class CardIssuing < Stripe::StripeObject
          class UserTermsAcceptance < Stripe::StripeObject
            # The Unix timestamp marking when the cardholder accepted the Authorized User Terms.
            sig { returns(T.nilable(Integer)) }
            def date; end
            # The IP address from which the cardholder accepted the Authorized User Terms.
            sig { returns(T.nilable(String)) }
            def ip; end
            # The user agent of the browser from which the cardholder accepted the Authorized User Terms.
            sig { returns(T.nilable(String)) }
            def user_agent; end
          end
          # Information about cardholder acceptance of Celtic [Authorized User Terms](https://stripe.com/docs/issuing/cards#accept-authorized-user-terms). Required for cards backed by a Celtic program.
          sig { returns(T.nilable(UserTermsAcceptance)) }
          def user_terms_acceptance; end
        end
        class Dob < Stripe::StripeObject
          # The day of birth, between 1 and 31.
          sig { returns(T.nilable(Integer)) }
          def day; end
          # The month of birth, between 1 and 12.
          sig { returns(T.nilable(Integer)) }
          def month; end
          # The four-digit year of birth.
          sig { returns(T.nilable(Integer)) }
          def year; end
        end
        class Verification < Stripe::StripeObject
          class Document < Stripe::StripeObject
            # The back of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
            sig { returns(T.nilable(T.any(String, Stripe::File))) }
            def back; end
            # The front of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
            sig { returns(T.nilable(T.any(String, Stripe::File))) }
            def front; end
          end
          # An identifying document, either a passport or local ID card.
          sig { returns(T.nilable(Document)) }
          def document; end
        end
        # Information related to the card_issuing program for this cardholder.
        sig { returns(T.nilable(CardIssuing)) }
        def card_issuing; end
        # The date of birth of this cardholder.
        sig { returns(T.nilable(Dob)) }
        def dob; end
        # The first name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
        sig { returns(T.nilable(String)) }
        def first_name; end
        # The last name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
        sig { returns(T.nilable(String)) }
        def last_name; end
        # Government-issued ID document for this cardholder.
        sig { returns(T.nilable(Verification)) }
        def verification; end
      end
      class Requirements < Stripe::StripeObject
        # If `disabled_reason` is present, all cards will decline authorizations with `cardholder_verification_required` reason.
        sig { returns(T.nilable(String)) }
        def disabled_reason; end
        # Array of fields that need to be collected in order to verify and re-enable the cardholder.
        sig { returns(T.nilable(T::Array[String])) }
        def past_due; end
      end
      class SpendingControls < Stripe::StripeObject
        class SpendingLimit < Stripe::StripeObject
          # Maximum amount allowed to spend per interval. This amount is in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(Integer) }
          def amount; end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
          sig { returns(T.nilable(T::Array[String])) }
          def categories; end
          # Interval (or event) to which the amount applies.
          sig { returns(String) }
          def interval; end
        end
        # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
        sig { returns(T.nilable(T::Array[String])) }
        def allowed_categories; end
        # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
        sig { returns(T.nilable(T::Array[String])) }
        def allowed_merchant_countries; end
        # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
        sig { returns(T.nilable(T::Array[String])) }
        def blocked_categories; end
        # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
        sig { returns(T.nilable(T::Array[String])) }
        def blocked_merchant_countries; end
        # Limit spending with amount-based rules that apply across this cardholder's cards.
        sig { returns(T.nilable(T::Array[SpendingLimit])) }
        def spending_limits; end
        # Currency of the amounts within `spending_limits`.
        sig { returns(T.nilable(String)) }
        def spending_limits_currency; end
      end
      # Attribute for field billing
      sig { returns(Billing) }
      def billing; end
      # Additional information about a `company` cardholder.
      sig { returns(T.nilable(Company)) }
      def company; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # The cardholder's email address.
      sig { returns(T.nilable(String)) }
      def email; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Additional information about an `individual` cardholder.
      sig { returns(T.nilable(Individual)) }
      def individual; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      def metadata; end
      # The cardholder's name. This will be printed on cards issued to them.
      sig { returns(String) }
      def name; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://stripe.com/docs/issuing/3d-secure#when-is-3d-secure-applied) for more details.
      sig { returns(T.nilable(String)) }
      def phone_number; end
      # The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
      #  This changes the language of the [3D Secure flow](https://stripe.com/docs/issuing/3d-secure) and one-time password messages sent to the cardholder.
      sig { returns(T.nilable(T::Array[String])) }
      def preferred_locales; end
      # Attribute for field requirements
      sig { returns(Requirements) }
      def requirements; end
      # Rules that control spending across this cardholder's cards. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
      sig { returns(T.nilable(SpendingControls)) }
      def spending_controls; end
      # Specifies whether to permit authorizations on this cardholder's cards.
      sig { returns(String) }
      def status; end
      # One of `individual` or `company`. See [Choose a cardholder type](https://stripe.com/docs/issuing/other/choose-cardholder) for more details.
      sig { returns(String) }
      def type; end
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def gt; end
          sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gt=(_gt); end
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def gte; end
          sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gte=(_gte); end
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def lt; end
          sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lt=(_lt); end
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def lte; end
          sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return cardholders that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Issuing::Cardholder::ListParams::Created, Integer)))
         }
        def created; end
        sig {
          params(_created: T.nilable(T.any(::Stripe::Issuing::Cardholder::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Issuing::Cardholder::ListParams::Created, Integer)))
         }
        def created=(_created); end
        # Only return cardholders that have the given email address.
        sig { returns(T.nilable(String)) }
        def email; end
        sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_email); end
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
        # Only return cardholders that have the given phone number.
        sig { returns(T.nilable(String)) }
        def phone_number; end
        sig { params(_phone_number: T.nilable(String)).returns(T.nilable(String)) }
        def phone_number=(_phone_number); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # Only return cardholders that have the given status. One of `active`, `inactive`, or `blocked`.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        # Only return cardholders that have the given type. One of `individual` or `company`.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
        sig {
          params(created: T.nilable(T.any(::Stripe::Issuing::Cardholder::ListParams::Created, Integer)), email: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), phone_number: T.nilable(String), starting_after: T.nilable(String), status: T.nilable(String), type: T.nilable(String)).void
         }
        def initialize(
          created: nil,
          email: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          phone_number: nil,
          starting_after: nil,
          status: nil,
          type: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class Billing < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            def city; end
            sig { params(_city: String).returns(String) }
            def city=(_city); end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            def country; end
            sig { params(_country: String).returns(String) }
            def country=(_country); end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            def line1; end
            sig { params(_line1: String).returns(String) }
            def line1=(_line1); end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_line2); end
            # ZIP or postal code.
            sig { returns(String) }
            def postal_code; end
            sig { params(_postal_code: String).returns(String) }
            def postal_code=(_postal_code); end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
            sig {
              params(city: String, country: String, line1: String, line2: T.nilable(String), postal_code: String, state: T.nilable(String)).void
             }
            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            ); end
          end
          # The cardholder’s billing address.
          sig { returns(::Stripe::Issuing::Cardholder::CreateParams::Billing::Address) }
          def address; end
          sig {
            params(_address: ::Stripe::Issuing::Cardholder::CreateParams::Billing::Address).returns(::Stripe::Issuing::Cardholder::CreateParams::Billing::Address)
           }
          def address=(_address); end
          sig {
            params(address: ::Stripe::Issuing::Cardholder::CreateParams::Billing::Address).void
           }
          def initialize(address: nil); end
        end
        class Company < Stripe::RequestParams
          # The entity's business ID number.
          sig { returns(T.nilable(String)) }
          def tax_id; end
          sig { params(_tax_id: T.nilable(String)).returns(T.nilable(String)) }
          def tax_id=(_tax_id); end
          sig { params(tax_id: T.nilable(String)).void }
          def initialize(tax_id: nil); end
        end
        class Individual < Stripe::RequestParams
          class CardIssuing < Stripe::RequestParams
            class UserTermsAcceptance < Stripe::RequestParams
              # The Unix timestamp marking when the cardholder accepted the Authorized User Terms. Required for Celtic Spend Card users.
              sig { returns(T.nilable(Integer)) }
              def date; end
              sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def date=(_date); end
              # The IP address from which the cardholder accepted the Authorized User Terms. Required for Celtic Spend Card users.
              sig { returns(T.nilable(String)) }
              def ip; end
              sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
              def ip=(_ip); end
              # The user agent of the browser from which the cardholder accepted the Authorized User Terms.
              sig { returns(T.nilable(String)) }
              def user_agent; end
              sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
              def user_agent=(_user_agent); end
              sig {
                params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
               }
              def initialize(date: nil, ip: nil, user_agent: nil); end
            end
            # Information about cardholder acceptance of Celtic [Authorized User Terms](https://stripe.com/docs/issuing/cards#accept-authorized-user-terms). Required for cards backed by a Celtic program.
            sig {
              returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::CardIssuing::UserTermsAcceptance))
             }
            def user_terms_acceptance; end
            sig {
              params(_user_terms_acceptance: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::CardIssuing::UserTermsAcceptance)).returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::CardIssuing::UserTermsAcceptance))
             }
            def user_terms_acceptance=(_user_terms_acceptance); end
            sig {
              params(user_terms_acceptance: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::CardIssuing::UserTermsAcceptance)).void
             }
            def initialize(user_terms_acceptance: nil); end
          end
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            sig { returns(Integer) }
            def day; end
            sig { params(_day: Integer).returns(Integer) }
            def day=(_day); end
            # The month of birth, between 1 and 12.
            sig { returns(Integer) }
            def month; end
            sig { params(_month: Integer).returns(Integer) }
            def month=(_month); end
            # The four-digit year of birth.
            sig { returns(Integer) }
            def year; end
            sig { params(_year: Integer).returns(Integer) }
            def year=(_year); end
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          class Verification < Stripe::RequestParams
            class Document < Stripe::RequestParams
              # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
              sig { returns(T.nilable(String)) }
              def back; end
              sig { params(_back: T.nilable(String)).returns(T.nilable(String)) }
              def back=(_back); end
              # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
              sig { returns(T.nilable(String)) }
              def front; end
              sig { params(_front: T.nilable(String)).returns(T.nilable(String)) }
              def front=(_front); end
              sig { params(back: T.nilable(String), front: T.nilable(String)).void }
              def initialize(back: nil, front: nil); end
            end
            # An identifying document, either a passport or local ID card.
            sig {
              returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Verification::Document))
             }
            def document; end
            sig {
              params(_document: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Verification::Document)).returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Verification::Document))
             }
            def document=(_document); end
            sig {
              params(document: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Verification::Document)).void
             }
            def initialize(document: nil); end
          end
          # Information related to the card_issuing program for this cardholder.
          sig {
            returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::CardIssuing))
           }
          def card_issuing; end
          sig {
            params(_card_issuing: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::CardIssuing)).returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::CardIssuing))
           }
          def card_issuing=(_card_issuing); end
          # The date of birth of this cardholder. Cardholders must be older than 13 years old.
          sig { returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Dob)) }
          def dob; end
          sig {
            params(_dob: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Dob)).returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Dob))
           }
          def dob=(_dob); end
          # The first name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
          sig { returns(T.nilable(String)) }
          def first_name; end
          sig { params(_first_name: T.nilable(String)).returns(T.nilable(String)) }
          def first_name=(_first_name); end
          # The last name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
          sig { returns(T.nilable(String)) }
          def last_name; end
          sig { params(_last_name: T.nilable(String)).returns(T.nilable(String)) }
          def last_name=(_last_name); end
          # Government-issued ID document for this cardholder.
          sig {
            returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Verification))
           }
          def verification; end
          sig {
            params(_verification: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Verification)).returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Verification))
           }
          def verification=(_verification); end
          sig {
            params(card_issuing: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::CardIssuing), dob: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Dob), first_name: T.nilable(String), last_name: T.nilable(String), verification: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Verification)).void
           }
          def initialize(
            card_issuing: nil,
            dob: nil,
            first_name: nil,
            last_name: nil,
            verification: nil
          ); end
        end
        class SpendingControls < Stripe::RequestParams
          class SpendingLimit < Stripe::RequestParams
            # Maximum amount allowed to spend per interval.
            sig { returns(Integer) }
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
            sig { returns(T.nilable(T::Array[String])) }
            def categories; end
            sig {
              params(_categories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def categories=(_categories); end
            # Interval (or event) to which the amount applies.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            sig {
              params(amount: Integer, categories: T.nilable(T::Array[String]), interval: String).void
             }
            def initialize(amount: nil, categories: nil, interval: nil); end
          end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
          sig { returns(T.nilable(T::Array[String])) }
          def allowed_categories; end
          sig {
            params(_allowed_categories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def allowed_categories=(_allowed_categories); end
          # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
          sig { returns(T.nilable(T::Array[String])) }
          def allowed_merchant_countries; end
          sig {
            params(_allowed_merchant_countries: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def allowed_merchant_countries=(_allowed_merchant_countries); end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
          sig { returns(T.nilable(T::Array[String])) }
          def blocked_categories; end
          sig {
            params(_blocked_categories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def blocked_categories=(_blocked_categories); end
          # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
          sig { returns(T.nilable(T::Array[String])) }
          def blocked_merchant_countries; end
          sig {
            params(_blocked_merchant_countries: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def blocked_merchant_countries=(_blocked_merchant_countries); end
          # Limit spending with amount-based rules that apply across this cardholder's cards.
          sig {
            returns(T.nilable(T::Array[::Stripe::Issuing::Cardholder::CreateParams::SpendingControls::SpendingLimit]))
           }
          def spending_limits; end
          sig {
            params(_spending_limits: T.nilable(T::Array[::Stripe::Issuing::Cardholder::CreateParams::SpendingControls::SpendingLimit])).returns(T.nilable(T::Array[::Stripe::Issuing::Cardholder::CreateParams::SpendingControls::SpendingLimit]))
           }
          def spending_limits=(_spending_limits); end
          # Currency of amounts within `spending_limits`. Defaults to your merchant country's currency.
          sig { returns(T.nilable(String)) }
          def spending_limits_currency; end
          sig { params(_spending_limits_currency: T.nilable(String)).returns(T.nilable(String)) }
          def spending_limits_currency=(_spending_limits_currency); end
          sig {
            params(allowed_categories: T.nilable(T::Array[String]), allowed_merchant_countries: T.nilable(T::Array[String]), blocked_categories: T.nilable(T::Array[String]), blocked_merchant_countries: T.nilable(T::Array[String]), spending_limits: T.nilable(T::Array[::Stripe::Issuing::Cardholder::CreateParams::SpendingControls::SpendingLimit]), spending_limits_currency: T.nilable(String)).void
           }
          def initialize(
            allowed_categories: nil,
            allowed_merchant_countries: nil,
            blocked_categories: nil,
            blocked_merchant_countries: nil,
            spending_limits: nil,
            spending_limits_currency: nil
          ); end
        end
        # The cardholder's billing address.
        sig { returns(::Stripe::Issuing::Cardholder::CreateParams::Billing) }
        def billing; end
        sig {
          params(_billing: ::Stripe::Issuing::Cardholder::CreateParams::Billing).returns(::Stripe::Issuing::Cardholder::CreateParams::Billing)
         }
        def billing=(_billing); end
        # Additional information about a `company` cardholder.
        sig { returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Company)) }
        def company; end
        sig {
          params(_company: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Company)).returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Company))
         }
        def company=(_company); end
        # The cardholder's email address.
        sig { returns(T.nilable(String)) }
        def email; end
        sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_email); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Additional information about an `individual` cardholder.
        sig { returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual)) }
        def individual; end
        sig {
          params(_individual: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual)).returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual))
         }
        def individual=(_individual); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The cardholder's name. This will be printed on cards issued to them. The maximum length of this field is 24 characters. This field cannot contain any special characters or numbers.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # The cardholder's phone number. This will be transformed to [E.164](https://en.wikipedia.org/wiki/E.164) if it is not provided in that format already. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://stripe.com/docs/issuing/3d-secure#when-is-3d-secure-applied) for more details.
        sig { returns(T.nilable(String)) }
        def phone_number; end
        sig { params(_phone_number: T.nilable(String)).returns(T.nilable(String)) }
        def phone_number=(_phone_number); end
        # The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
        #  This changes the language of the [3D Secure flow](https://stripe.com/docs/issuing/3d-secure) and one-time password messages sent to the cardholder.
        sig { returns(T.nilable(T::Array[String])) }
        def preferred_locales; end
        sig {
          params(_preferred_locales: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def preferred_locales=(_preferred_locales); end
        # Rules that control spending across this cardholder's cards. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
        sig { returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::SpendingControls)) }
        def spending_controls; end
        sig {
          params(_spending_controls: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::SpendingControls)).returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::SpendingControls))
         }
        def spending_controls=(_spending_controls); end
        # Specifies whether to permit authorizations on this cardholder's cards. Defaults to `active`.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        # One of `individual` or `company`. See [Choose a cardholder type](https://stripe.com/docs/issuing/other/choose-cardholder) for more details.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
        sig {
          params(billing: ::Stripe::Issuing::Cardholder::CreateParams::Billing, company: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Company), email: T.nilable(String), expand: T.nilable(T::Array[String]), individual: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual), metadata: T.nilable(T::Hash[String, String]), name: String, phone_number: T.nilable(String), preferred_locales: T.nilable(T::Array[String]), spending_controls: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::SpendingControls), status: T.nilable(String), type: T.nilable(String)).void
         }
        def initialize(
          billing: nil,
          company: nil,
          email: nil,
          expand: nil,
          individual: nil,
          metadata: nil,
          name: nil,
          phone_number: nil,
          preferred_locales: nil,
          spending_controls: nil,
          status: nil,
          type: nil
        ); end
      end
      class UpdateParams < Stripe::RequestParams
        class Billing < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            def city; end
            sig { params(_city: String).returns(String) }
            def city=(_city); end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            def country; end
            sig { params(_country: String).returns(String) }
            def country=(_country); end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            def line1; end
            sig { params(_line1: String).returns(String) }
            def line1=(_line1); end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_line2); end
            # ZIP or postal code.
            sig { returns(String) }
            def postal_code; end
            sig { params(_postal_code: String).returns(String) }
            def postal_code=(_postal_code); end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
            sig {
              params(city: String, country: String, line1: String, line2: T.nilable(String), postal_code: String, state: T.nilable(String)).void
             }
            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            ); end
          end
          # The cardholder’s billing address.
          sig { returns(::Stripe::Issuing::Cardholder::UpdateParams::Billing::Address) }
          def address; end
          sig {
            params(_address: ::Stripe::Issuing::Cardholder::UpdateParams::Billing::Address).returns(::Stripe::Issuing::Cardholder::UpdateParams::Billing::Address)
           }
          def address=(_address); end
          sig {
            params(address: ::Stripe::Issuing::Cardholder::UpdateParams::Billing::Address).void
           }
          def initialize(address: nil); end
        end
        class Company < Stripe::RequestParams
          # The entity's business ID number.
          sig { returns(T.nilable(String)) }
          def tax_id; end
          sig { params(_tax_id: T.nilable(String)).returns(T.nilable(String)) }
          def tax_id=(_tax_id); end
          sig { params(tax_id: T.nilable(String)).void }
          def initialize(tax_id: nil); end
        end
        class Individual < Stripe::RequestParams
          class CardIssuing < Stripe::RequestParams
            class UserTermsAcceptance < Stripe::RequestParams
              # The Unix timestamp marking when the cardholder accepted the Authorized User Terms. Required for Celtic Spend Card users.
              sig { returns(T.nilable(Integer)) }
              def date; end
              sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def date=(_date); end
              # The IP address from which the cardholder accepted the Authorized User Terms. Required for Celtic Spend Card users.
              sig { returns(T.nilable(String)) }
              def ip; end
              sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
              def ip=(_ip); end
              # The user agent of the browser from which the cardholder accepted the Authorized User Terms.
              sig { returns(T.nilable(String)) }
              def user_agent; end
              sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
              def user_agent=(_user_agent); end
              sig {
                params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
               }
              def initialize(date: nil, ip: nil, user_agent: nil); end
            end
            # Information about cardholder acceptance of Celtic [Authorized User Terms](https://stripe.com/docs/issuing/cards#accept-authorized-user-terms). Required for cards backed by a Celtic program.
            sig {
              returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::CardIssuing::UserTermsAcceptance))
             }
            def user_terms_acceptance; end
            sig {
              params(_user_terms_acceptance: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::CardIssuing::UserTermsAcceptance)).returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::CardIssuing::UserTermsAcceptance))
             }
            def user_terms_acceptance=(_user_terms_acceptance); end
            sig {
              params(user_terms_acceptance: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::CardIssuing::UserTermsAcceptance)).void
             }
            def initialize(user_terms_acceptance: nil); end
          end
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            sig { returns(Integer) }
            def day; end
            sig { params(_day: Integer).returns(Integer) }
            def day=(_day); end
            # The month of birth, between 1 and 12.
            sig { returns(Integer) }
            def month; end
            sig { params(_month: Integer).returns(Integer) }
            def month=(_month); end
            # The four-digit year of birth.
            sig { returns(Integer) }
            def year; end
            sig { params(_year: Integer).returns(Integer) }
            def year=(_year); end
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          class Verification < Stripe::RequestParams
            class Document < Stripe::RequestParams
              # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
              sig { returns(T.nilable(String)) }
              def back; end
              sig { params(_back: T.nilable(String)).returns(T.nilable(String)) }
              def back=(_back); end
              # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
              sig { returns(T.nilable(String)) }
              def front; end
              sig { params(_front: T.nilable(String)).returns(T.nilable(String)) }
              def front=(_front); end
              sig { params(back: T.nilable(String), front: T.nilable(String)).void }
              def initialize(back: nil, front: nil); end
            end
            # An identifying document, either a passport or local ID card.
            sig {
              returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Verification::Document))
             }
            def document; end
            sig {
              params(_document: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Verification::Document)).returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Verification::Document))
             }
            def document=(_document); end
            sig {
              params(document: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Verification::Document)).void
             }
            def initialize(document: nil); end
          end
          # Information related to the card_issuing program for this cardholder.
          sig {
            returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::CardIssuing))
           }
          def card_issuing; end
          sig {
            params(_card_issuing: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::CardIssuing)).returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::CardIssuing))
           }
          def card_issuing=(_card_issuing); end
          # The date of birth of this cardholder. Cardholders must be older than 13 years old.
          sig { returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Dob)) }
          def dob; end
          sig {
            params(_dob: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Dob)).returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Dob))
           }
          def dob=(_dob); end
          # The first name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
          sig { returns(T.nilable(String)) }
          def first_name; end
          sig { params(_first_name: T.nilable(String)).returns(T.nilable(String)) }
          def first_name=(_first_name); end
          # The last name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
          sig { returns(T.nilable(String)) }
          def last_name; end
          sig { params(_last_name: T.nilable(String)).returns(T.nilable(String)) }
          def last_name=(_last_name); end
          # Government-issued ID document for this cardholder.
          sig {
            returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Verification))
           }
          def verification; end
          sig {
            params(_verification: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Verification)).returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Verification))
           }
          def verification=(_verification); end
          sig {
            params(card_issuing: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::CardIssuing), dob: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Dob), first_name: T.nilable(String), last_name: T.nilable(String), verification: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Verification)).void
           }
          def initialize(
            card_issuing: nil,
            dob: nil,
            first_name: nil,
            last_name: nil,
            verification: nil
          ); end
        end
        class SpendingControls < Stripe::RequestParams
          class SpendingLimit < Stripe::RequestParams
            # Maximum amount allowed to spend per interval.
            sig { returns(Integer) }
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
            sig { returns(T.nilable(T::Array[String])) }
            def categories; end
            sig {
              params(_categories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def categories=(_categories); end
            # Interval (or event) to which the amount applies.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            sig {
              params(amount: Integer, categories: T.nilable(T::Array[String]), interval: String).void
             }
            def initialize(amount: nil, categories: nil, interval: nil); end
          end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
          sig { returns(T.nilable(T::Array[String])) }
          def allowed_categories; end
          sig {
            params(_allowed_categories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def allowed_categories=(_allowed_categories); end
          # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
          sig { returns(T.nilable(T::Array[String])) }
          def allowed_merchant_countries; end
          sig {
            params(_allowed_merchant_countries: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def allowed_merchant_countries=(_allowed_merchant_countries); end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
          sig { returns(T.nilable(T::Array[String])) }
          def blocked_categories; end
          sig {
            params(_blocked_categories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def blocked_categories=(_blocked_categories); end
          # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
          sig { returns(T.nilable(T::Array[String])) }
          def blocked_merchant_countries; end
          sig {
            params(_blocked_merchant_countries: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def blocked_merchant_countries=(_blocked_merchant_countries); end
          # Limit spending with amount-based rules that apply across this cardholder's cards.
          sig {
            returns(T.nilable(T::Array[::Stripe::Issuing::Cardholder::UpdateParams::SpendingControls::SpendingLimit]))
           }
          def spending_limits; end
          sig {
            params(_spending_limits: T.nilable(T::Array[::Stripe::Issuing::Cardholder::UpdateParams::SpendingControls::SpendingLimit])).returns(T.nilable(T::Array[::Stripe::Issuing::Cardholder::UpdateParams::SpendingControls::SpendingLimit]))
           }
          def spending_limits=(_spending_limits); end
          # Currency of amounts within `spending_limits`. Defaults to your merchant country's currency.
          sig { returns(T.nilable(String)) }
          def spending_limits_currency; end
          sig { params(_spending_limits_currency: T.nilable(String)).returns(T.nilable(String)) }
          def spending_limits_currency=(_spending_limits_currency); end
          sig {
            params(allowed_categories: T.nilable(T::Array[String]), allowed_merchant_countries: T.nilable(T::Array[String]), blocked_categories: T.nilable(T::Array[String]), blocked_merchant_countries: T.nilable(T::Array[String]), spending_limits: T.nilable(T::Array[::Stripe::Issuing::Cardholder::UpdateParams::SpendingControls::SpendingLimit]), spending_limits_currency: T.nilable(String)).void
           }
          def initialize(
            allowed_categories: nil,
            allowed_merchant_countries: nil,
            blocked_categories: nil,
            blocked_merchant_countries: nil,
            spending_limits: nil,
            spending_limits_currency: nil
          ); end
        end
        # The cardholder's billing address.
        sig { returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Billing)) }
        def billing; end
        sig {
          params(_billing: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Billing)).returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Billing))
         }
        def billing=(_billing); end
        # Additional information about a `company` cardholder.
        sig { returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Company)) }
        def company; end
        sig {
          params(_company: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Company)).returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Company))
         }
        def company=(_company); end
        # The cardholder's email address.
        sig { returns(T.nilable(String)) }
        def email; end
        sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_email); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Additional information about an `individual` cardholder.
        sig { returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual)) }
        def individual; end
        sig {
          params(_individual: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual)).returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual))
         }
        def individual=(_individual); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://stripe.com/docs/issuing/3d-secure) for more details.
        sig { returns(T.nilable(String)) }
        def phone_number; end
        sig { params(_phone_number: T.nilable(String)).returns(T.nilable(String)) }
        def phone_number=(_phone_number); end
        # The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
        #  This changes the language of the [3D Secure flow](https://stripe.com/docs/issuing/3d-secure) and one-time password messages sent to the cardholder.
        sig { returns(T.nilable(T::Array[String])) }
        def preferred_locales; end
        sig {
          params(_preferred_locales: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def preferred_locales=(_preferred_locales); end
        # Rules that control spending across this cardholder's cards. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
        sig { returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::SpendingControls)) }
        def spending_controls; end
        sig {
          params(_spending_controls: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::SpendingControls)).returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::SpendingControls))
         }
        def spending_controls=(_spending_controls); end
        # Specifies whether to permit authorizations on this cardholder's cards.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(billing: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Billing), company: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Company), email: T.nilable(String), expand: T.nilable(T::Array[String]), individual: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual), metadata: T.nilable(T::Hash[String, String]), phone_number: T.nilable(String), preferred_locales: T.nilable(T::Array[String]), spending_controls: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::SpendingControls), status: T.nilable(String)).void
         }
        def initialize(
          billing: nil,
          company: nil,
          email: nil,
          expand: nil,
          individual: nil,
          metadata: nil,
          phone_number: nil,
          preferred_locales: nil,
          spending_controls: nil,
          status: nil
        ); end
      end
      # Creates a new Issuing Cardholder object that can be issued cards.
      sig {
        params(params: T.any(::Stripe::Issuing::Cardholder::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Cardholder)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of Issuing Cardholder objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::Cardholder::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates the specified Issuing Cardholder object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      sig {
        params(cardholder: String, params: T.any(::Stripe::Issuing::Cardholder::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Cardholder)
       }
      def self.update(cardholder, params = {}, opts = {}); end
    end
  end
end