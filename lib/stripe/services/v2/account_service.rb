# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class AccountService < StripeService
      class ListParams < Stripe::RequestParams
        # Filter by the configurations that have been applied to the account. If omitted, returns all Accounts regardless of which configurations they have. Currently only supports `recipient`, to filter by Accounts with the recipient configuration set.
        attr_accessor :applied_configurations
        # The limit.
        attr_accessor :limit

        def initialize(applied_configurations: nil, limit: nil)
          @applied_configurations = applied_configurations
          @limit = limit
        end
      end

      class CreateParams < Stripe::RequestParams
        class Configuration < Stripe::RequestParams
          class RecipientData < Stripe::RequestParams
            class Features < Stripe::RequestParams
              class BankAccounts < Stripe::RequestParams
                class Local < Stripe::RequestParams
                  # Whether or not to request the Feature.
                  attr_accessor :requested

                  def initialize(requested: nil)
                    @requested = requested
                  end
                end

                class Wire < Stripe::RequestParams
                  # Whether or not to request the Feature.
                  attr_accessor :requested

                  def initialize(requested: nil)
                    @requested = requested
                  end
                end
                # Enables this Account to receive OutboundPayments to linked bank accounts over local networks.
                attr_accessor :local
                # Enables this Account to receive OutboundPayments to linked bank accounts over wire.
                attr_accessor :wire

                def initialize(local: nil, wire: nil)
                  @local = local
                  @wire = wire
                end
              end

              class Cards < Stripe::RequestParams
                # Whether or not to request the Feature.
                attr_accessor :requested

                def initialize(requested: nil)
                  @requested = requested
                end
              end
              # Features that enable OutboundPayments to a bank account linked to this Account.
              attr_accessor :bank_accounts
              # Feature that enable OutboundPayments to a debit card linked to this Account.
              attr_accessor :cards

              def initialize(bank_accounts: nil, cards: nil)
                @bank_accounts = bank_accounts
                @cards = cards
              end
            end
            # Features representing the functionality that should be enabled for when this Account is used as a recipient. Features need to be explicitly requested, and the `status` field indicates if the Feature is `active`, `restricted` or `pending`. Once a Feature is `active`, the Account can be used with the product flow that the Feature enables.
            attr_accessor :features

            def initialize(features: nil)
              @features = features
            end
          end
          # Configuration to enable this Account to be used as a recipient of an OutboundPayment via the OutboundPayments API, or via the dashboard.
          attr_accessor :recipient_data

          def initialize(recipient_data: nil)
            @recipient_data = recipient_data
          end
        end

        class LegalEntityData < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City.
            attr_accessor :city
            # Open Enum. Two-letter country code.
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
            attr_accessor :state
            # Town.
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

          class Representative < Stripe::RequestParams
            class Address < Stripe::RequestParams
              # City.
              attr_accessor :city
              # Open Enum. Two-letter country code.
              attr_accessor :country
              # Address line 1 (e.g., street, PO Box, or company name).
              attr_accessor :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              attr_accessor :line2
              # ZIP or postal code.
              attr_accessor :postal_code
              # State, county, province, or region.
              attr_accessor :state
              # Town.
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
              # The day of birth of the representative.
              attr_accessor :day
              # The month of birth of the representative.
              attr_accessor :month
              # The year of birth of the representative.
              attr_accessor :year

              def initialize(day: nil, month: nil, year: nil)
                @day = day
                @month = month
                @year = year
              end
            end
            # The address of the representative.
            attr_accessor :address
            # The date of birth of the representative.
            attr_accessor :dob
            # The given name of the representative.
            attr_accessor :given_name
            # The surname of the representative.
            attr_accessor :surname

            def initialize(address: nil, dob: nil, given_name: nil, surname: nil)
              @address = address
              @dob = dob
              @given_name = given_name
              @surname = surname
            end
          end
          # The address of the Legal Entity.
          attr_accessor :address
          # Closed Enum. The business type of the Legal Entity.
          attr_accessor :business_type
          # Open Enum. Two-letter country code (ISO 3166-1 alpha-2) for where the company or individual is located.
          attr_accessor :country
          # The legal name of this Legal Entity. Required unless the business type is `individual`.
          attr_accessor :name
          # The representative of the Legal Entity. This is the person nominated by the Legal Entity to provide information about themselves, and general information about the account. For legal entities with `individual` business type, this field is required and should contain the individual's information.
          attr_accessor :representative

          def initialize(
            address: nil,
            business_type: nil,
            country: nil,
            name: nil,
            representative: nil
          )
            @address = address
            @business_type = business_type
            @country = country
            @name = name
            @representative = representative
          end
        end
        # Configurations applied to this Account in order to allow it to be used in different product flows. Currently only supports the recipient configuration.
        attr_accessor :configuration
        # The default contact email address for the Account. This field is optional, but must be supplied before the recipient configuration can be populated.
        attr_accessor :email
        # Closed Enum. Additional fields to include in the response. Currently supports `configuration.recipient_data`, `legal_entity_data`, `requirements`, and `supportable_features.recipient_data`.
        attr_accessor :include
        # Information about the company or individual that this Account represents. Stripe may require Legal Entity information in order to enable Features requested on the Account.
        attr_accessor :legal_entity_data
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata
        # A descriptive name for the Account. This name will be surfaced in the Account directory in the dashboard.
        attr_accessor :name

        def initialize(
          configuration: nil,
          email: nil,
          include: nil,
          legal_entity_data: nil,
          metadata: nil,
          name: nil
        )
          @configuration = configuration
          @email = email
          @include = include
          @legal_entity_data = legal_entity_data
          @metadata = metadata
          @name = name
        end
      end

      class RetrieveParams < Stripe::RequestParams
        # Closed Enum. Additional fields to include in the response. Currently supports `configuration.recipient_data`, `legal_entity_data`, `requirements`, and `supportable_features.recipient_data`.
        attr_accessor :include

        def initialize(include: nil)
          @include = include
        end
      end

      class UpdateParams < Stripe::RequestParams
        class Configuration < Stripe::RequestParams
          class RecipientData < Stripe::RequestParams
            class Features < Stripe::RequestParams
              class BankAccounts < Stripe::RequestParams
                class Local < Stripe::RequestParams
                  # Whether or not to request the Feature.
                  attr_accessor :requested

                  def initialize(requested: nil)
                    @requested = requested
                  end
                end

                class Wire < Stripe::RequestParams
                  # Whether or not to request the Feature.
                  attr_accessor :requested

                  def initialize(requested: nil)
                    @requested = requested
                  end
                end
                # Enables this Account to receive OutboundPayments to linked bank accounts over local networks.
                attr_accessor :local
                # Enables this Account to receive OutboundPayments to linked bank accounts over wire.
                attr_accessor :wire

                def initialize(local: nil, wire: nil)
                  @local = local
                  @wire = wire
                end
              end

              class Cards < Stripe::RequestParams
                # Whether or not to request the Feature.
                attr_accessor :requested

                def initialize(requested: nil)
                  @requested = requested
                end
              end
              # Features that enable OutboundPayments to a bank account linked to this Account.
              attr_accessor :bank_accounts
              # Feature that enable OutboundPayments to a debit card linked to this Account.
              attr_accessor :cards

              def initialize(bank_accounts: nil, cards: nil)
                @bank_accounts = bank_accounts
                @cards = cards
              end
            end
            # The payout method id to be used as a default outbound destination. This will allow the PayoutMethod to be omitted on OutboundPayments made through API or sending payouts via dashboard. Can also be explicitly set to `null` to clear the existing default outbound destination.
            attr_accessor :default_outbound_destination
            # Features representing the functionality that should be enabled for when this Account is used as a recipient. Features need to be explicitly requested, and the `status` field indicates if the Feature is `active`, `restricted` or `pending`. Once a Feature is `active`, the Account can be used with the product flow that the Feature enables.
            attr_accessor :features

            def initialize(default_outbound_destination: nil, features: nil)
              @default_outbound_destination = default_outbound_destination
              @features = features
            end
          end
          # Configuration to enable this Account to be used as a recipient of an OutboundPayment via the OutboundPayments API, or via the dashboard.
          attr_accessor :recipient_data

          def initialize(recipient_data: nil)
            @recipient_data = recipient_data
          end
        end

        class LegalEntityData < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City.
            attr_accessor :city
            # Open Enum. Two-letter country code.
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
            attr_accessor :state
            # Town.
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

          class Representative < Stripe::RequestParams
            class Address < Stripe::RequestParams
              # City.
              attr_accessor :city
              # Open Enum. Two-letter country code.
              attr_accessor :country
              # Address line 1 (e.g., street, PO Box, or company name).
              attr_accessor :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              attr_accessor :line2
              # ZIP or postal code.
              attr_accessor :postal_code
              # State, county, province, or region.
              attr_accessor :state
              # Town.
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
              # The day of birth of the representative.
              attr_accessor :day
              # The month of birth of the representative.
              attr_accessor :month
              # The year of birth of the representative.
              attr_accessor :year

              def initialize(day: nil, month: nil, year: nil)
                @day = day
                @month = month
                @year = year
              end
            end
            # The address of the representative.
            attr_accessor :address
            # The date of birth of the representative.
            attr_accessor :dob
            # The given name of the representative.
            attr_accessor :given_name
            # The surname of the representative.
            attr_accessor :surname

            def initialize(address: nil, dob: nil, given_name: nil, surname: nil)
              @address = address
              @dob = dob
              @given_name = given_name
              @surname = surname
            end
          end
          # The address of the Legal Entity.
          attr_accessor :address
          # Closed Enum. The business type of the Legal Entity.
          attr_accessor :business_type
          # Open Enum. Two-letter country code (ISO 3166-1 alpha-2) for where the company or individual is located.
          attr_accessor :country
          # The legal name of this Legal Entity. Required unless the business type is `individual`.
          attr_accessor :name
          # The representative of the Legal Entity. This is the person nominated by the Legal Entity to provide information about themselves, and general information about the account. For legal entities with `individual` business type, this field is required and should contain the individual's information.
          attr_accessor :representative

          def initialize(
            address: nil,
            business_type: nil,
            country: nil,
            name: nil,
            representative: nil
          )
            @address = address
            @business_type = business_type
            @country = country
            @name = name
            @representative = representative
          end
        end
        # Configurations applied to this Account in order to allow it to be used in different product flows. Currently only supports the recipient configuration.
        attr_accessor :configuration
        # The default contact email address for the Account. This field is optional, but must be supplied before the recipient configuration can be populated.
        attr_accessor :email
        # Closed Enum. Additional fields to include in the response. Currently supports `configuration.recipient_data`, `legal_entity_data`, `requirements`, and `supportable_features.recipient_data`.
        attr_accessor :include
        # Information about the company or individual that this Account represents. Stripe may require Legal Entity information in order to enable Features requested on the Account.
        attr_accessor :legal_entity_data
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata
        # A descriptive name for the Account. This name will be surfaced in the Account directory in the dashboard.
        attr_accessor :name

        def initialize(
          configuration: nil,
          email: nil,
          include: nil,
          legal_entity_data: nil,
          metadata: nil,
          name: nil
        )
          @configuration = configuration
          @email = email
          @include = include
          @legal_entity_data = legal_entity_data
          @metadata = metadata
          @name = name
        end
      end

      class CloseParams < Stripe::RequestParams; end

      # Closes and removes access to the Account and its associated resources.
      def close(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v2/accounts/%<id>s/close", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Creates an Account. You can optionally provide information about the associated Legal Entity, such as name and business type. The Account can also be configured as a recipient of OutboundPayments by requesting Features on the recipient configuration.
      def create(params = {}, opts = {})
        request(method: :post, path: "/v2/accounts", params: params, opts: opts, base_address: :api)
      end

      # Returns a list of Accounts. Note that the `include` parameter cannot be passed in on list requests.
      def list(params = {}, opts = {})
        request(method: :get, path: "/v2/accounts", params: params, opts: opts, base_address: :api)
      end

      # Retrieves the details of an Account.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v2/accounts/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates the details of an Account. You can also optionally provide or update the details of the associated Legal Entity and recipient configuration.
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v2/accounts/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
