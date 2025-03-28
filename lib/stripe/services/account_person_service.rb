# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountPersonService < StripeService
    class DeleteParams < Stripe::RequestParams
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      class AdditionalTosAcceptances < Stripe::RequestParams
        class Account < Stripe::RequestParams
          # The Unix timestamp marking when the account representative accepted the service agreement.
          attr_accessor :date
          # The IP address from which the account representative accepted the service agreement.
          attr_accessor :ip
          # The user agent of the browser from which the account representative accepted the service agreement.
          attr_accessor :user_agent

          def initialize(date: nil, ip: nil, user_agent: nil)
            @date = date
            @ip = ip
            @user_agent = user_agent
          end
        end
        # Details on the legal guardian's acceptance of the main Stripe service agreement.
        attr_accessor :account

        def initialize(account: nil)
          @account = account
        end
      end

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

      class AddressKana < Stripe::RequestParams
        # City or ward.
        attr_accessor :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_accessor :country
        # Block or building number.
        attr_accessor :line1
        # Building details.
        attr_accessor :line2
        # Postal code.
        attr_accessor :postal_code
        # Prefecture.
        attr_accessor :state
        # Town or cho-me.
        attr_accessor :town

        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil,
          town: nil
        )
          @city = city
          @country = country
          @line1 = line1
          @line2 = line2
          @postal_code = postal_code
          @state = state
          @town = town
        end
      end

      class AddressKanji < Stripe::RequestParams
        # City or ward.
        attr_accessor :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_accessor :country
        # Block or building number.
        attr_accessor :line1
        # Building details.
        attr_accessor :line2
        # Postal code.
        attr_accessor :postal_code
        # Prefecture.
        attr_accessor :state
        # Town or cho-me.
        attr_accessor :town

        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil,
          town: nil
        )
          @city = city
          @country = country
          @line1 = line1
          @line2 = line2
          @postal_code = postal_code
          @state = state
          @town = town
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

      class Documents < Stripe::RequestParams
        class CompanyAuthorization < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class Passport < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class Visa < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end
        # One or more documents that demonstrate proof that this person is authorized to represent the company.
        attr_accessor :company_authorization
        # One or more documents showing the person's passport page with photo and personal data.
        attr_accessor :passport
        # One or more documents showing the person's visa required for living in the country where they are residing.
        attr_accessor :visa

        def initialize(company_authorization: nil, passport: nil, visa: nil)
          @company_authorization = company_authorization
          @passport = passport
          @visa = visa
        end
      end

      class RegisteredAddress < Stripe::RequestParams
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

      class Relationship < Stripe::RequestParams
        # Whether the person is the authorizer of the account's representative.
        attr_accessor :authorizer
        # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
        attr_accessor :director
        # Whether the person has significant responsibility to control, manage, or direct the organization.
        attr_accessor :executive
        # Whether the person is the legal guardian of the account's representative.
        attr_accessor :legal_guardian
        # Whether the person is an owner of the account’s legal entity.
        attr_accessor :owner
        # The percent owned by the person of the account's legal entity.
        attr_accessor :percent_ownership
        # Whether the person is authorized as the primary representative of the account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account.
        attr_accessor :representative
        # The person's title (e.g., CEO, Support Engineer).
        attr_accessor :title

        def initialize(
          authorizer: nil,
          director: nil,
          executive: nil,
          legal_guardian: nil,
          owner: nil,
          percent_ownership: nil,
          representative: nil,
          title: nil
        )
          @authorizer = authorizer
          @director = director
          @executive = executive
          @legal_guardian = legal_guardian
          @owner = owner
          @percent_ownership = percent_ownership
          @representative = representative
          @title = title
        end
      end

      class Verification < Stripe::RequestParams
        class AdditionalDocument < Stripe::RequestParams
          # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          attr_accessor :back
          # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          attr_accessor :front

          def initialize(back: nil, front: nil)
            @back = back
            @front = front
          end
        end

        class Document < Stripe::RequestParams
          # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          attr_accessor :back
          # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          attr_accessor :front

          def initialize(back: nil, front: nil)
            @back = back
            @front = front
          end
        end
        # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
        attr_accessor :additional_document
        # An identifying document, either a passport or local ID card.
        attr_accessor :document

        def initialize(additional_document: nil, document: nil)
          @additional_document = additional_document
          @document = document
        end
      end
      # Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
      attr_accessor :additional_tos_acceptances
      # The person's address.
      attr_accessor :address
      # The Kana variation of the person's address (Japan only).
      attr_accessor :address_kana
      # The Kanji variation of the person's address (Japan only).
      attr_accessor :address_kanji
      # The person's date of birth.
      attr_accessor :dob
      # Documents that may be submitted to satisfy various informational requests.
      attr_accessor :documents
      # The person's email address.
      attr_accessor :email
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The person's first name.
      attr_accessor :first_name
      # The Kana variation of the person's first name (Japan only).
      attr_accessor :first_name_kana
      # The Kanji variation of the person's first name (Japan only).
      attr_accessor :first_name_kanji
      # A list of alternate names or aliases that the person is known by.
      attr_accessor :full_name_aliases
      # The person's gender (International regulations require either "male" or "female").
      attr_accessor :gender
      # The person's ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
      attr_accessor :id_number
      # The person's secondary ID number, as appropriate for their country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
      attr_accessor :id_number_secondary
      # The person's last name.
      attr_accessor :last_name
      # The Kana variation of the person's last name (Japan only).
      attr_accessor :last_name_kana
      # The Kanji variation of the person's last name (Japan only).
      attr_accessor :last_name_kanji
      # The person's maiden name.
      attr_accessor :maiden_name
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The country where the person is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)), or "XX" if unavailable.
      attr_accessor :nationality
      # A [person token](https://docs.stripe.com/connect/account-tokens), used to securely provide details to the person.
      attr_accessor :person_token
      # The person's phone number.
      attr_accessor :phone
      # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
      attr_accessor :political_exposure
      # The person's registered address.
      attr_accessor :registered_address
      # The relationship that this person has with the account's legal entity.
      attr_accessor :relationship
      # The last four digits of the person's Social Security number (U.S. only).
      attr_accessor :ssn_last_4
      # The person's verification status.
      attr_accessor :verification

      def initialize(
        additional_tos_acceptances: nil,
        address: nil,
        address_kana: nil,
        address_kanji: nil,
        dob: nil,
        documents: nil,
        email: nil,
        expand: nil,
        first_name: nil,
        first_name_kana: nil,
        first_name_kanji: nil,
        full_name_aliases: nil,
        gender: nil,
        id_number: nil,
        id_number_secondary: nil,
        last_name: nil,
        last_name_kana: nil,
        last_name_kanji: nil,
        maiden_name: nil,
        metadata: nil,
        nationality: nil,
        person_token: nil,
        phone: nil,
        political_exposure: nil,
        registered_address: nil,
        relationship: nil,
        ssn_last_4: nil,
        verification: nil
      )
        @additional_tos_acceptances = additional_tos_acceptances
        @address = address
        @address_kana = address_kana
        @address_kanji = address_kanji
        @dob = dob
        @documents = documents
        @email = email
        @expand = expand
        @first_name = first_name
        @first_name_kana = first_name_kana
        @first_name_kanji = first_name_kanji
        @full_name_aliases = full_name_aliases
        @gender = gender
        @id_number = id_number
        @id_number_secondary = id_number_secondary
        @last_name = last_name
        @last_name_kana = last_name_kana
        @last_name_kanji = last_name_kanji
        @maiden_name = maiden_name
        @metadata = metadata
        @nationality = nationality
        @person_token = person_token
        @phone = phone
        @political_exposure = political_exposure
        @registered_address = registered_address
        @relationship = relationship
        @ssn_last_4 = ssn_last_4
        @verification = verification
      end
    end

    class ListParams < Stripe::RequestParams
      class Relationship < Stripe::RequestParams
        # A filter on the list of people returned based on whether these people are authorizers of the account's representative.
        attr_accessor :authorizer
        # A filter on the list of people returned based on whether these people are directors of the account's company.
        attr_accessor :director
        # A filter on the list of people returned based on whether these people are executives of the account's company.
        attr_accessor :executive
        # A filter on the list of people returned based on whether these people are legal guardians of the account's representative.
        attr_accessor :legal_guardian
        # A filter on the list of people returned based on whether these people are owners of the account's company.
        attr_accessor :owner
        # A filter on the list of people returned based on whether these people are the representative of the account's company.
        attr_accessor :representative

        def initialize(
          authorizer: nil,
          director: nil,
          executive: nil,
          legal_guardian: nil,
          owner: nil,
          representative: nil
        )
          @authorizer = authorizer
          @director = director
          @executive = executive
          @legal_guardian = legal_guardian
          @owner = owner
          @representative = representative
        end
      end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Filters on the list of people returned based on the person's relationship to the account's company.
      attr_accessor :relationship
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        ending_before: nil,
        expand: nil,
        limit: nil,
        relationship: nil,
        starting_after: nil
      )
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @relationship = relationship
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class AdditionalTosAcceptances < Stripe::RequestParams
        class Account < Stripe::RequestParams
          # The Unix timestamp marking when the account representative accepted the service agreement.
          attr_accessor :date
          # The IP address from which the account representative accepted the service agreement.
          attr_accessor :ip
          # The user agent of the browser from which the account representative accepted the service agreement.
          attr_accessor :user_agent

          def initialize(date: nil, ip: nil, user_agent: nil)
            @date = date
            @ip = ip
            @user_agent = user_agent
          end
        end
        # Details on the legal guardian's acceptance of the main Stripe service agreement.
        attr_accessor :account

        def initialize(account: nil)
          @account = account
        end
      end

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

      class AddressKana < Stripe::RequestParams
        # City or ward.
        attr_accessor :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_accessor :country
        # Block or building number.
        attr_accessor :line1
        # Building details.
        attr_accessor :line2
        # Postal code.
        attr_accessor :postal_code
        # Prefecture.
        attr_accessor :state
        # Town or cho-me.
        attr_accessor :town

        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil,
          town: nil
        )
          @city = city
          @country = country
          @line1 = line1
          @line2 = line2
          @postal_code = postal_code
          @state = state
          @town = town
        end
      end

      class AddressKanji < Stripe::RequestParams
        # City or ward.
        attr_accessor :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_accessor :country
        # Block or building number.
        attr_accessor :line1
        # Building details.
        attr_accessor :line2
        # Postal code.
        attr_accessor :postal_code
        # Prefecture.
        attr_accessor :state
        # Town or cho-me.
        attr_accessor :town

        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil,
          town: nil
        )
          @city = city
          @country = country
          @line1 = line1
          @line2 = line2
          @postal_code = postal_code
          @state = state
          @town = town
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

      class Documents < Stripe::RequestParams
        class CompanyAuthorization < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class Passport < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class Visa < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end
        # One or more documents that demonstrate proof that this person is authorized to represent the company.
        attr_accessor :company_authorization
        # One or more documents showing the person's passport page with photo and personal data.
        attr_accessor :passport
        # One or more documents showing the person's visa required for living in the country where they are residing.
        attr_accessor :visa

        def initialize(company_authorization: nil, passport: nil, visa: nil)
          @company_authorization = company_authorization
          @passport = passport
          @visa = visa
        end
      end

      class RegisteredAddress < Stripe::RequestParams
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

      class Relationship < Stripe::RequestParams
        # Whether the person is the authorizer of the account's representative.
        attr_accessor :authorizer
        # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
        attr_accessor :director
        # Whether the person has significant responsibility to control, manage, or direct the organization.
        attr_accessor :executive
        # Whether the person is the legal guardian of the account's representative.
        attr_accessor :legal_guardian
        # Whether the person is an owner of the account’s legal entity.
        attr_accessor :owner
        # The percent owned by the person of the account's legal entity.
        attr_accessor :percent_ownership
        # Whether the person is authorized as the primary representative of the account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account.
        attr_accessor :representative
        # The person's title (e.g., CEO, Support Engineer).
        attr_accessor :title

        def initialize(
          authorizer: nil,
          director: nil,
          executive: nil,
          legal_guardian: nil,
          owner: nil,
          percent_ownership: nil,
          representative: nil,
          title: nil
        )
          @authorizer = authorizer
          @director = director
          @executive = executive
          @legal_guardian = legal_guardian
          @owner = owner
          @percent_ownership = percent_ownership
          @representative = representative
          @title = title
        end
      end

      class Verification < Stripe::RequestParams
        class AdditionalDocument < Stripe::RequestParams
          # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          attr_accessor :back
          # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          attr_accessor :front

          def initialize(back: nil, front: nil)
            @back = back
            @front = front
          end
        end

        class Document < Stripe::RequestParams
          # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          attr_accessor :back
          # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          attr_accessor :front

          def initialize(back: nil, front: nil)
            @back = back
            @front = front
          end
        end
        # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
        attr_accessor :additional_document
        # An identifying document, either a passport or local ID card.
        attr_accessor :document

        def initialize(additional_document: nil, document: nil)
          @additional_document = additional_document
          @document = document
        end
      end
      # Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
      attr_accessor :additional_tos_acceptances
      # The person's address.
      attr_accessor :address
      # The Kana variation of the person's address (Japan only).
      attr_accessor :address_kana
      # The Kanji variation of the person's address (Japan only).
      attr_accessor :address_kanji
      # The person's date of birth.
      attr_accessor :dob
      # Documents that may be submitted to satisfy various informational requests.
      attr_accessor :documents
      # The person's email address.
      attr_accessor :email
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The person's first name.
      attr_accessor :first_name
      # The Kana variation of the person's first name (Japan only).
      attr_accessor :first_name_kana
      # The Kanji variation of the person's first name (Japan only).
      attr_accessor :first_name_kanji
      # A list of alternate names or aliases that the person is known by.
      attr_accessor :full_name_aliases
      # The person's gender (International regulations require either "male" or "female").
      attr_accessor :gender
      # The person's ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
      attr_accessor :id_number
      # The person's secondary ID number, as appropriate for their country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
      attr_accessor :id_number_secondary
      # The person's last name.
      attr_accessor :last_name
      # The Kana variation of the person's last name (Japan only).
      attr_accessor :last_name_kana
      # The Kanji variation of the person's last name (Japan only).
      attr_accessor :last_name_kanji
      # The person's maiden name.
      attr_accessor :maiden_name
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The country where the person is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)), or "XX" if unavailable.
      attr_accessor :nationality
      # A [person token](https://docs.stripe.com/connect/account-tokens), used to securely provide details to the person.
      attr_accessor :person_token
      # The person's phone number.
      attr_accessor :phone
      # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
      attr_accessor :political_exposure
      # The person's registered address.
      attr_accessor :registered_address
      # The relationship that this person has with the account's legal entity.
      attr_accessor :relationship
      # The last four digits of the person's Social Security number (U.S. only).
      attr_accessor :ssn_last_4
      # The person's verification status.
      attr_accessor :verification

      def initialize(
        additional_tos_acceptances: nil,
        address: nil,
        address_kana: nil,
        address_kanji: nil,
        dob: nil,
        documents: nil,
        email: nil,
        expand: nil,
        first_name: nil,
        first_name_kana: nil,
        first_name_kanji: nil,
        full_name_aliases: nil,
        gender: nil,
        id_number: nil,
        id_number_secondary: nil,
        last_name: nil,
        last_name_kana: nil,
        last_name_kanji: nil,
        maiden_name: nil,
        metadata: nil,
        nationality: nil,
        person_token: nil,
        phone: nil,
        political_exposure: nil,
        registered_address: nil,
        relationship: nil,
        ssn_last_4: nil,
        verification: nil
      )
        @additional_tos_acceptances = additional_tos_acceptances
        @address = address
        @address_kana = address_kana
        @address_kanji = address_kanji
        @dob = dob
        @documents = documents
        @email = email
        @expand = expand
        @first_name = first_name
        @first_name_kana = first_name_kana
        @first_name_kanji = first_name_kanji
        @full_name_aliases = full_name_aliases
        @gender = gender
        @id_number = id_number
        @id_number_secondary = id_number_secondary
        @last_name = last_name
        @last_name_kana = last_name_kana
        @last_name_kanji = last_name_kanji
        @maiden_name = maiden_name
        @metadata = metadata
        @nationality = nationality
        @person_token = person_token
        @phone = phone
        @political_exposure = political_exposure
        @registered_address = registered_address
        @relationship = relationship
        @ssn_last_4 = ssn_last_4
        @verification = verification
      end
    end

    # Creates a new person.
    def create(account, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/accounts/%<account>s/persons", { account: CGI.escape(account) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Deletes an existing person's relationship to the account's legal entity. Any person with a relationship for an account can be deleted through the API, except if the person is the account_opener. If your integration is using the executive parameter, you cannot delete the only verified executive on file.
    def delete(account, person, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/accounts/%<account>s/persons/%<person>s", { account: CGI.escape(account), person: CGI.escape(person) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of people associated with the account's legal entity. The people are returned sorted by creation date, with the most recent people appearing first.
    def list(account, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<account>s/persons", { account: CGI.escape(account) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves an existing person.
    def retrieve(account, person, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<account>s/persons/%<person>s", { account: CGI.escape(account), person: CGI.escape(person) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates an existing person.
    def update(account, person, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/accounts/%<account>s/persons/%<person>s", { account: CGI.escape(account), person: CGI.escape(person) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
