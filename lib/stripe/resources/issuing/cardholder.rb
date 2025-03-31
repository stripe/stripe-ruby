# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://stripe.com/docs/issuing) cards.
    #
    # Related guide: [How to create a cardholder](https://stripe.com/docs/issuing/cards/virtual/issue-cards#create-cardholder)
    class Cardholder < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.cardholder"
      def self.object_name
        "issuing.cardholder"
      end

      class Billing < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_reader :line2
          # ZIP or postal code.
          attr_reader :postal_code
          # State, county, province, or region.
          attr_reader :state
        end
        # Attribute for field address
        attr_reader :address
      end

      class Company < Stripe::StripeObject
        # Whether the company's business ID number was provided.
        attr_reader :tax_id_provided
      end

      class Individual < Stripe::StripeObject
        class CardIssuing < Stripe::StripeObject
          class UserTermsAcceptance < Stripe::StripeObject
            # The Unix timestamp marking when the cardholder accepted the Authorized User Terms.
            attr_reader :date
            # The IP address from which the cardholder accepted the Authorized User Terms.
            attr_reader :ip
            # The user agent of the browser from which the cardholder accepted the Authorized User Terms.
            attr_reader :user_agent
          end
          # Information about cardholder acceptance of Celtic [Authorized User Terms](https://stripe.com/docs/issuing/cards#accept-authorized-user-terms). Required for cards backed by a Celtic program.
          attr_reader :user_terms_acceptance
        end

        class Dob < Stripe::StripeObject
          # The day of birth, between 1 and 31.
          attr_reader :day
          # The month of birth, between 1 and 12.
          attr_reader :month
          # The four-digit year of birth.
          attr_reader :year
        end

        class Verification < Stripe::StripeObject
          class Document < Stripe::StripeObject
            # The back of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
            attr_reader :back
            # The front of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
            attr_reader :front
          end
          # An identifying document, either a passport or local ID card.
          attr_reader :document
        end
        # Information related to the card_issuing program for this cardholder.
        attr_reader :card_issuing
        # The date of birth of this cardholder.
        attr_reader :dob
        # The first name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
        attr_reader :first_name
        # The last name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
        attr_reader :last_name
        # Government-issued ID document for this cardholder.
        attr_reader :verification
      end

      class Requirements < Stripe::StripeObject
        # If `disabled_reason` is present, all cards will decline authorizations with `cardholder_verification_required` reason.
        attr_reader :disabled_reason
        # Array of fields that need to be collected in order to verify and re-enable the cardholder.
        attr_reader :past_due
      end

      class SpendingControls < Stripe::StripeObject
        class SpendingLimit < Stripe::StripeObject
          # Maximum amount allowed to spend per interval. This amount is in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          attr_reader :amount
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
          attr_reader :categories
          # Interval (or event) to which the amount applies.
          attr_reader :interval
        end
        # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
        attr_reader :allowed_categories
        # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
        attr_reader :allowed_merchant_countries
        # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
        attr_reader :blocked_categories
        # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
        attr_reader :blocked_merchant_countries
        # Limit spending with amount-based rules that apply across this cardholder's cards.
        attr_reader :spending_limits
        # Currency of the amounts within `spending_limits`.
        attr_reader :spending_limits_currency
      end

      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # Only return cardholders that were created during the given date interval.
        attr_accessor :created
        # Only return cardholders that have the given email address.
        attr_accessor :email
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # Only return cardholders that have the given phone number.
        attr_accessor :phone_number
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Only return cardholders that have the given status. One of `active`, `inactive`, or `blocked`.
        attr_accessor :status
        # Only return cardholders that have the given type. One of `individual` or `company`.
        attr_accessor :type

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
        )
          @created = created
          @email = email
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @phone_number = phone_number
          @starting_after = starting_after
          @status = status
          @type = type
        end
      end

      class CreateParams < Stripe::RequestParams
        class Billing < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end
          # The cardholder’s billing address.
          attr_accessor :address

          def initialize(address: nil)
            @address = address
          end
        end

        class Company < Stripe::RequestParams
          # The entity's business ID number.
          attr_accessor :tax_id

          def initialize(tax_id: nil)
            @tax_id = tax_id
          end
        end

        class Individual < Stripe::RequestParams
          class CardIssuing < Stripe::RequestParams
            class UserTermsAcceptance < Stripe::RequestParams
              # The Unix timestamp marking when the cardholder accepted the Authorized User Terms. Required for Celtic Spend Card users.
              attr_accessor :date
              # The IP address from which the cardholder accepted the Authorized User Terms. Required for Celtic Spend Card users.
              attr_accessor :ip
              # The user agent of the browser from which the cardholder accepted the Authorized User Terms.
              attr_accessor :user_agent

              def initialize(date: nil, ip: nil, user_agent: nil)
                @date = date
                @ip = ip
                @user_agent = user_agent
              end
            end
            # Information about cardholder acceptance of Celtic [Authorized User Terms](https://stripe.com/docs/issuing/cards#accept-authorized-user-terms). Required for cards backed by a Celtic program.
            attr_accessor :user_terms_acceptance

            def initialize(user_terms_acceptance: nil)
              @user_terms_acceptance = user_terms_acceptance
            end
          end

          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            attr_accessor :day
            # The month of birth, between 1 and 12.
            attr_accessor :month
            # The four-digit year of birth.
            attr_accessor :year

            def initialize(day: nil, month: nil, year: nil)
              @day = day
              @month = month
              @year = year
            end
          end

          class Verification < Stripe::RequestParams
            class Document < Stripe::RequestParams
              # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
              attr_accessor :back
              # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
              attr_accessor :front

              def initialize(back: nil, front: nil)
                @back = back
                @front = front
              end
            end
            # An identifying document, either a passport or local ID card.
            attr_accessor :document

            def initialize(document: nil)
              @document = document
            end
          end
          # Information related to the card_issuing program for this cardholder.
          attr_accessor :card_issuing
          # The date of birth of this cardholder. Cardholders must be older than 13 years old.
          attr_accessor :dob
          # The first name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
          attr_accessor :first_name
          # The last name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
          attr_accessor :last_name
          # Government-issued ID document for this cardholder.
          attr_accessor :verification

          def initialize(
            card_issuing: nil,
            dob: nil,
            first_name: nil,
            last_name: nil,
            verification: nil
          )
            @card_issuing = card_issuing
            @dob = dob
            @first_name = first_name
            @last_name = last_name
            @verification = verification
          end
        end

        class SpendingControls < Stripe::RequestParams
          class SpendingLimit < Stripe::RequestParams
            # Maximum amount allowed to spend per interval.
            attr_accessor :amount
            # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
            attr_accessor :categories
            # Interval (or event) to which the amount applies.
            attr_accessor :interval

            def initialize(amount: nil, categories: nil, interval: nil)
              @amount = amount
              @categories = categories
              @interval = interval
            end
          end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
          attr_accessor :allowed_categories
          # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
          attr_accessor :allowed_merchant_countries
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
          attr_accessor :blocked_categories
          # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
          attr_accessor :blocked_merchant_countries
          # Limit spending with amount-based rules that apply across this cardholder's cards.
          attr_accessor :spending_limits
          # Currency of amounts within `spending_limits`. Defaults to your merchant country's currency.
          attr_accessor :spending_limits_currency

          def initialize(
            allowed_categories: nil,
            allowed_merchant_countries: nil,
            blocked_categories: nil,
            blocked_merchant_countries: nil,
            spending_limits: nil,
            spending_limits_currency: nil
          )
            @allowed_categories = allowed_categories
            @allowed_merchant_countries = allowed_merchant_countries
            @blocked_categories = blocked_categories
            @blocked_merchant_countries = blocked_merchant_countries
            @spending_limits = spending_limits
            @spending_limits_currency = spending_limits_currency
          end
        end
        # The cardholder's billing address.
        attr_accessor :billing
        # Additional information about a `company` cardholder.
        attr_accessor :company
        # The cardholder's email address.
        attr_accessor :email
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Additional information about an `individual` cardholder.
        attr_accessor :individual
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The cardholder's name. This will be printed on cards issued to them. The maximum length of this field is 24 characters. This field cannot contain any special characters or numbers.
        attr_accessor :name
        # The cardholder's phone number. This will be transformed to [E.164](https://en.wikipedia.org/wiki/E.164) if it is not provided in that format already. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://stripe.com/docs/issuing/3d-secure#when-is-3d-secure-applied) for more details.
        attr_accessor :phone_number
        # The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
        #  This changes the language of the [3D Secure flow](https://stripe.com/docs/issuing/3d-secure) and one-time password messages sent to the cardholder.
        attr_accessor :preferred_locales
        # Rules that control spending across this cardholder's cards. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
        attr_accessor :spending_controls
        # Specifies whether to permit authorizations on this cardholder's cards. Defaults to `active`.
        attr_accessor :status
        # One of `individual` or `company`. See [Choose a cardholder type](https://stripe.com/docs/issuing/other/choose-cardholder) for more details.
        attr_accessor :type

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
        )
          @billing = billing
          @company = company
          @email = email
          @expand = expand
          @individual = individual
          @metadata = metadata
          @name = name
          @phone_number = phone_number
          @preferred_locales = preferred_locales
          @spending_controls = spending_controls
          @status = status
          @type = type
        end
      end

      class UpdateParams < Stripe::RequestParams
        class Billing < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end
          # The cardholder’s billing address.
          attr_accessor :address

          def initialize(address: nil)
            @address = address
          end
        end

        class Company < Stripe::RequestParams
          # The entity's business ID number.
          attr_accessor :tax_id

          def initialize(tax_id: nil)
            @tax_id = tax_id
          end
        end

        class Individual < Stripe::RequestParams
          class CardIssuing < Stripe::RequestParams
            class UserTermsAcceptance < Stripe::RequestParams
              # The Unix timestamp marking when the cardholder accepted the Authorized User Terms. Required for Celtic Spend Card users.
              attr_accessor :date
              # The IP address from which the cardholder accepted the Authorized User Terms. Required for Celtic Spend Card users.
              attr_accessor :ip
              # The user agent of the browser from which the cardholder accepted the Authorized User Terms.
              attr_accessor :user_agent

              def initialize(date: nil, ip: nil, user_agent: nil)
                @date = date
                @ip = ip
                @user_agent = user_agent
              end
            end
            # Information about cardholder acceptance of Celtic [Authorized User Terms](https://stripe.com/docs/issuing/cards#accept-authorized-user-terms). Required for cards backed by a Celtic program.
            attr_accessor :user_terms_acceptance

            def initialize(user_terms_acceptance: nil)
              @user_terms_acceptance = user_terms_acceptance
            end
          end

          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            attr_accessor :day
            # The month of birth, between 1 and 12.
            attr_accessor :month
            # The four-digit year of birth.
            attr_accessor :year

            def initialize(day: nil, month: nil, year: nil)
              @day = day
              @month = month
              @year = year
            end
          end

          class Verification < Stripe::RequestParams
            class Document < Stripe::RequestParams
              # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
              attr_accessor :back
              # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
              attr_accessor :front

              def initialize(back: nil, front: nil)
                @back = back
                @front = front
              end
            end
            # An identifying document, either a passport or local ID card.
            attr_accessor :document

            def initialize(document: nil)
              @document = document
            end
          end
          # Information related to the card_issuing program for this cardholder.
          attr_accessor :card_issuing
          # The date of birth of this cardholder. Cardholders must be older than 13 years old.
          attr_accessor :dob
          # The first name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
          attr_accessor :first_name
          # The last name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
          attr_accessor :last_name
          # Government-issued ID document for this cardholder.
          attr_accessor :verification

          def initialize(
            card_issuing: nil,
            dob: nil,
            first_name: nil,
            last_name: nil,
            verification: nil
          )
            @card_issuing = card_issuing
            @dob = dob
            @first_name = first_name
            @last_name = last_name
            @verification = verification
          end
        end

        class SpendingControls < Stripe::RequestParams
          class SpendingLimit < Stripe::RequestParams
            # Maximum amount allowed to spend per interval.
            attr_accessor :amount
            # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
            attr_accessor :categories
            # Interval (or event) to which the amount applies.
            attr_accessor :interval

            def initialize(amount: nil, categories: nil, interval: nil)
              @amount = amount
              @categories = categories
              @interval = interval
            end
          end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
          attr_accessor :allowed_categories
          # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
          attr_accessor :allowed_merchant_countries
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
          attr_accessor :blocked_categories
          # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
          attr_accessor :blocked_merchant_countries
          # Limit spending with amount-based rules that apply across this cardholder's cards.
          attr_accessor :spending_limits
          # Currency of amounts within `spending_limits`. Defaults to your merchant country's currency.
          attr_accessor :spending_limits_currency

          def initialize(
            allowed_categories: nil,
            allowed_merchant_countries: nil,
            blocked_categories: nil,
            blocked_merchant_countries: nil,
            spending_limits: nil,
            spending_limits_currency: nil
          )
            @allowed_categories = allowed_categories
            @allowed_merchant_countries = allowed_merchant_countries
            @blocked_categories = blocked_categories
            @blocked_merchant_countries = blocked_merchant_countries
            @spending_limits = spending_limits
            @spending_limits_currency = spending_limits_currency
          end
        end
        # The cardholder's billing address.
        attr_accessor :billing
        # Additional information about a `company` cardholder.
        attr_accessor :company
        # The cardholder's email address.
        attr_accessor :email
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Additional information about an `individual` cardholder.
        attr_accessor :individual
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://stripe.com/docs/issuing/3d-secure) for more details.
        attr_accessor :phone_number
        # The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
        #  This changes the language of the [3D Secure flow](https://stripe.com/docs/issuing/3d-secure) and one-time password messages sent to the cardholder.
        attr_accessor :preferred_locales
        # Rules that control spending across this cardholder's cards. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
        attr_accessor :spending_controls
        # Specifies whether to permit authorizations on this cardholder's cards.
        attr_accessor :status

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
        )
          @billing = billing
          @company = company
          @email = email
          @expand = expand
          @individual = individual
          @metadata = metadata
          @phone_number = phone_number
          @preferred_locales = preferred_locales
          @spending_controls = spending_controls
          @status = status
        end
      end
      # Attribute for field billing
      attr_reader :billing
      # Additional information about a `company` cardholder.
      attr_reader :company
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The cardholder's email address.
      attr_reader :email
      # Unique identifier for the object.
      attr_reader :id
      # Additional information about an `individual` cardholder.
      attr_reader :individual
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # The cardholder's name. This will be printed on cards issued to them.
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://stripe.com/docs/issuing/3d-secure#when-is-3d-secure-applied) for more details.
      attr_reader :phone_number
      # The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
      #  This changes the language of the [3D Secure flow](https://stripe.com/docs/issuing/3d-secure) and one-time password messages sent to the cardholder.
      attr_reader :preferred_locales
      # Attribute for field requirements
      attr_reader :requirements
      # Rules that control spending across this cardholder's cards. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
      attr_reader :spending_controls
      # Specifies whether to permit authorizations on this cardholder's cards.
      attr_reader :status
      # One of `individual` or `company`. See [Choose a cardholder type](https://stripe.com/docs/issuing/other/choose-cardholder) for more details.
      attr_reader :type

      # Creates a new Issuing Cardholder object that can be issued cards.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/issuing/cardholders",
          params: params,
          opts: opts
        )
      end

      # Returns a list of Issuing Cardholder objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/cardholders",
          params: params,
          opts: opts
        )
      end

      # Updates the specified Issuing Cardholder object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def self.update(cardholder, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/cardholders/%<cardholder>s", { cardholder: CGI.escape(cardholder) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
