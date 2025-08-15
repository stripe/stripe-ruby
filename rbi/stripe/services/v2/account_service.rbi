# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    class AccountService < StripeService
      class ListParams < Stripe::RequestParams
        # Filter by the configurations that have been applied to the account. If omitted, returns all Accounts regardless of which configurations they have. Currently only supports `recipient`, to filter by Accounts with the recipient configuration set.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :applied_configurations
        # The limit.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        sig {
          params(applied_configurations: T.nilable(T::Array[String]), limit: T.nilable(Integer)).void
         }
        def initialize(applied_configurations: nil, limit: nil); end
      end
      class CreateParams < Stripe::RequestParams
        class Configuration < Stripe::RequestParams
          class RecipientData < Stripe::RequestParams
            class Features < Stripe::RequestParams
              class BankAccounts < Stripe::RequestParams
                class Local < Stripe::RequestParams
                  # Whether or not to request the Feature.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class Wire < Stripe::RequestParams
                  # Whether or not to request the Feature.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                # Enables this Account to receive OutboundPayments to linked bank accounts over local networks.
                sig {
                  returns(T.nilable(::Stripe::V2::AccountService::CreateParams::Configuration::RecipientData::Features::BankAccounts::Local))
                 }
                attr_accessor :local
                # Enables this Account to receive OutboundPayments to linked bank accounts over wire.
                sig {
                  returns(T.nilable(::Stripe::V2::AccountService::CreateParams::Configuration::RecipientData::Features::BankAccounts::Wire))
                 }
                attr_accessor :wire
                sig {
                  params(local: T.nilable(::Stripe::V2::AccountService::CreateParams::Configuration::RecipientData::Features::BankAccounts::Local), wire: T.nilable(::Stripe::V2::AccountService::CreateParams::Configuration::RecipientData::Features::BankAccounts::Wire)).void
                 }
                def initialize(local: nil, wire: nil); end
              end
              class Cards < Stripe::RequestParams
                # Whether or not to request the Feature.
                sig { returns(T::Boolean) }
                attr_accessor :requested
                sig { params(requested: T::Boolean).void }
                def initialize(requested: nil); end
              end
              # Features that enable OutboundPayments to a bank account linked to this Account.
              sig {
                returns(T.nilable(::Stripe::V2::AccountService::CreateParams::Configuration::RecipientData::Features::BankAccounts))
               }
              attr_accessor :bank_accounts
              # Feature that enable OutboundPayments to a debit card linked to this Account.
              sig {
                returns(T.nilable(::Stripe::V2::AccountService::CreateParams::Configuration::RecipientData::Features::Cards))
               }
              attr_accessor :cards
              sig {
                params(bank_accounts: T.nilable(::Stripe::V2::AccountService::CreateParams::Configuration::RecipientData::Features::BankAccounts), cards: T.nilable(::Stripe::V2::AccountService::CreateParams::Configuration::RecipientData::Features::Cards)).void
               }
              def initialize(bank_accounts: nil, cards: nil); end
            end
            # Features representing the functionality that should be enabled for when this Account is used as a recipient. Features need to be explicitly requested, and the `status` field indicates if the Feature is `active`, `restricted` or `pending`. Once a Feature is `active`, the Account can be used with the product flow that the Feature enables.
            sig {
              returns(::Stripe::V2::AccountService::CreateParams::Configuration::RecipientData::Features)
             }
            attr_accessor :features
            sig {
              params(features: ::Stripe::V2::AccountService::CreateParams::Configuration::RecipientData::Features).void
             }
            def initialize(features: nil); end
          end
          # Configuration to enable this Account to be used as a recipient of an OutboundPayment via the OutboundPayments API, or via the dashboard.
          sig {
            returns(T.nilable(::Stripe::V2::AccountService::CreateParams::Configuration::RecipientData))
           }
          attr_accessor :recipient_data
          sig {
            params(recipient_data: T.nilable(::Stripe::V2::AccountService::CreateParams::Configuration::RecipientData)).void
           }
          def initialize(recipient_data: nil); end
        end
        class LegalEntityData < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City.
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # Open Enum. Two-letter country code.
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_accessor :state
            # Town.
            sig { returns(T.nilable(String)) }
            attr_accessor :town
            sig {
              params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
             }
            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil,
              town: nil
            ); end
          end
          class Representative < Stripe::RequestParams
            class Address < Stripe::RequestParams
              # City.
              sig { returns(T.nilable(String)) }
              attr_accessor :city
              # Open Enum. Two-letter country code.
              sig { returns(T.nilable(String)) }
              attr_accessor :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              attr_accessor :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              attr_accessor :line2
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              attr_accessor :postal_code
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              attr_accessor :state
              # Town.
              sig { returns(T.nilable(String)) }
              attr_accessor :town
              sig {
                params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
               }
              def initialize(
                city: nil,
                country: nil,
                line1: nil,
                line2: nil,
                postal_code: nil,
                state: nil,
                town: nil
              ); end
            end
            class Dob < Stripe::RequestParams
              # The day of birth of the representative.
              sig { returns(Integer) }
              attr_accessor :day
              # The month of birth of the representative.
              sig { returns(Integer) }
              attr_accessor :month
              # The year of birth of the representative.
              sig { returns(Integer) }
              attr_accessor :year
              sig { params(day: Integer, month: Integer, year: Integer).void }
              def initialize(day: nil, month: nil, year: nil); end
            end
            # The address of the representative.
            sig {
              returns(T.nilable(::Stripe::V2::AccountService::CreateParams::LegalEntityData::Representative::Address))
             }
            attr_accessor :address
            # The date of birth of the representative.
            sig {
              returns(T.nilable(::Stripe::V2::AccountService::CreateParams::LegalEntityData::Representative::Dob))
             }
            attr_accessor :dob
            # The given name of the representative.
            sig { returns(T.nilable(String)) }
            attr_accessor :given_name
            # The surname of the representative.
            sig { returns(T.nilable(String)) }
            attr_accessor :surname
            sig {
              params(address: T.nilable(::Stripe::V2::AccountService::CreateParams::LegalEntityData::Representative::Address), dob: T.nilable(::Stripe::V2::AccountService::CreateParams::LegalEntityData::Representative::Dob), given_name: T.nilable(String), surname: T.nilable(String)).void
             }
            def initialize(address: nil, dob: nil, given_name: nil, surname: nil); end
          end
          # The address of the Legal Entity.
          sig {
            returns(T.nilable(::Stripe::V2::AccountService::CreateParams::LegalEntityData::Address))
           }
          attr_accessor :address
          # Closed Enum. The business type of the Legal Entity.
          sig { returns(T.nilable(String)) }
          attr_accessor :business_type
          # Open Enum. Two-letter country code (ISO 3166-1 alpha-2) for where the company or individual is located.
          sig { returns(String) }
          attr_accessor :country
          # The legal name of this Legal Entity. Required unless the business type is `individual`.
          sig { returns(T.nilable(String)) }
          attr_accessor :name
          # The representative of the Legal Entity. This is the person nominated by the Legal Entity to provide information about themselves, and general information about the account. For legal entities with `individual` business type, this field is required and should contain the individual's information.
          sig {
            returns(T.nilable(::Stripe::V2::AccountService::CreateParams::LegalEntityData::Representative))
           }
          attr_accessor :representative
          sig {
            params(address: T.nilable(::Stripe::V2::AccountService::CreateParams::LegalEntityData::Address), business_type: T.nilable(String), country: String, name: T.nilable(String), representative: T.nilable(::Stripe::V2::AccountService::CreateParams::LegalEntityData::Representative)).void
           }
          def initialize(
            address: nil,
            business_type: nil,
            country: nil,
            name: nil,
            representative: nil
          ); end
        end
        # Configurations applied to this Account in order to allow it to be used in different product flows. Currently only supports the recipient configuration.
        sig { returns(T.nilable(::Stripe::V2::AccountService::CreateParams::Configuration)) }
        attr_accessor :configuration
        # The default contact email address for the Account. This field is optional, but must be supplied before the recipient configuration can be populated.
        sig { returns(T.nilable(String)) }
        attr_accessor :email
        # Closed Enum. Additional fields to include in the response. Currently supports `configuration.recipient_data`, `legal_entity_data`, `requirements`, and `supportable_features.recipient_data`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :include
        # Information about the company or individual that this Account represents. Stripe may require Legal Entity information in order to enable Features requested on the Account.
        sig { returns(T.nilable(::Stripe::V2::AccountService::CreateParams::LegalEntityData)) }
        attr_accessor :legal_entity_data
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # A descriptive name for the Account. This name will be surfaced in the Account directory in the dashboard.
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        sig {
          params(configuration: T.nilable(::Stripe::V2::AccountService::CreateParams::Configuration), email: T.nilable(String), include: T.nilable(T::Array[String]), legal_entity_data: T.nilable(::Stripe::V2::AccountService::CreateParams::LegalEntityData), metadata: T.nilable(T::Hash[String, String]), name: T.nilable(String)).void
         }
        def initialize(
          configuration: nil,
          email: nil,
          include: nil,
          legal_entity_data: nil,
          metadata: nil,
          name: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Closed Enum. Additional fields to include in the response. Currently supports `configuration.recipient_data`, `legal_entity_data`, `requirements`, and `supportable_features.recipient_data`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :include
        sig { params(include: T.nilable(T::Array[String])).void }
        def initialize(include: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        class Configuration < Stripe::RequestParams
          class RecipientData < Stripe::RequestParams
            class Features < Stripe::RequestParams
              class BankAccounts < Stripe::RequestParams
                class Local < Stripe::RequestParams
                  # Whether or not to request the Feature.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class Wire < Stripe::RequestParams
                  # Whether or not to request the Feature.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                # Enables this Account to receive OutboundPayments to linked bank accounts over local networks.
                sig {
                  returns(T.nilable(::Stripe::V2::AccountService::UpdateParams::Configuration::RecipientData::Features::BankAccounts::Local))
                 }
                attr_accessor :local
                # Enables this Account to receive OutboundPayments to linked bank accounts over wire.
                sig {
                  returns(T.nilable(::Stripe::V2::AccountService::UpdateParams::Configuration::RecipientData::Features::BankAccounts::Wire))
                 }
                attr_accessor :wire
                sig {
                  params(local: T.nilable(::Stripe::V2::AccountService::UpdateParams::Configuration::RecipientData::Features::BankAccounts::Local), wire: T.nilable(::Stripe::V2::AccountService::UpdateParams::Configuration::RecipientData::Features::BankAccounts::Wire)).void
                 }
                def initialize(local: nil, wire: nil); end
              end
              class Cards < Stripe::RequestParams
                # Whether or not to request the Feature.
                sig { returns(T.nilable(T::Boolean)) }
                attr_accessor :requested
                sig { params(requested: T.nilable(T::Boolean)).void }
                def initialize(requested: nil); end
              end
              # Features that enable OutboundPayments to a bank account linked to this Account.
              sig {
                returns(T.nilable(::Stripe::V2::AccountService::UpdateParams::Configuration::RecipientData::Features::BankAccounts))
               }
              attr_accessor :bank_accounts
              # Feature that enable OutboundPayments to a debit card linked to this Account.
              sig {
                returns(T.nilable(::Stripe::V2::AccountService::UpdateParams::Configuration::RecipientData::Features::Cards))
               }
              attr_accessor :cards
              sig {
                params(bank_accounts: T.nilable(::Stripe::V2::AccountService::UpdateParams::Configuration::RecipientData::Features::BankAccounts), cards: T.nilable(::Stripe::V2::AccountService::UpdateParams::Configuration::RecipientData::Features::Cards)).void
               }
              def initialize(bank_accounts: nil, cards: nil); end
            end
            # The payout method id to be used as a default outbound destination. This will allow the PayoutMethod to be omitted on OutboundPayments made through API or sending payouts via dashboard. Can also be explicitly set to `null` to clear the existing default outbound destination.
            sig { returns(T.nilable(T.nilable(String))) }
            attr_accessor :default_outbound_destination
            # Features representing the functionality that should be enabled for when this Account is used as a recipient. Features need to be explicitly requested, and the `status` field indicates if the Feature is `active`, `restricted` or `pending`. Once a Feature is `active`, the Account can be used with the product flow that the Feature enables.
            sig {
              returns(T.nilable(::Stripe::V2::AccountService::UpdateParams::Configuration::RecipientData::Features))
             }
            attr_accessor :features
            sig {
              params(default_outbound_destination: T.nilable(T.nilable(String)), features: T.nilable(::Stripe::V2::AccountService::UpdateParams::Configuration::RecipientData::Features)).void
             }
            def initialize(default_outbound_destination: nil, features: nil); end
          end
          # Configuration to enable this Account to be used as a recipient of an OutboundPayment via the OutboundPayments API, or via the dashboard.
          sig {
            returns(T.nilable(::Stripe::V2::AccountService::UpdateParams::Configuration::RecipientData))
           }
          attr_accessor :recipient_data
          sig {
            params(recipient_data: T.nilable(::Stripe::V2::AccountService::UpdateParams::Configuration::RecipientData)).void
           }
          def initialize(recipient_data: nil); end
        end
        class LegalEntityData < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City.
            sig { returns(T.nilable(T.nilable(String))) }
            attr_accessor :city
            # Open Enum. Two-letter country code.
            sig { returns(T.nilable(T.nilable(String))) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(T.nilable(String))) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(T.nilable(String))) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(T.nilable(T.nilable(String))) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(T.nilable(String))) }
            attr_accessor :state
            # Town.
            sig { returns(T.nilable(T.nilable(String))) }
            attr_accessor :town
            sig {
              params(city: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), line1: T.nilable(T.nilable(String)), line2: T.nilable(T.nilable(String)), postal_code: T.nilable(T.nilable(String)), state: T.nilable(T.nilable(String)), town: T.nilable(T.nilable(String))).void
             }
            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil,
              town: nil
            ); end
          end
          class Representative < Stripe::RequestParams
            class Address < Stripe::RequestParams
              # City.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :city
              # Open Enum. Two-letter country code.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :line2
              # ZIP or postal code.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :postal_code
              # State, county, province, or region.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :state
              # Town.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :town
              sig {
                params(city: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), line1: T.nilable(T.nilable(String)), line2: T.nilable(T.nilable(String)), postal_code: T.nilable(T.nilable(String)), state: T.nilable(T.nilable(String)), town: T.nilable(T.nilable(String))).void
               }
              def initialize(
                city: nil,
                country: nil,
                line1: nil,
                line2: nil,
                postal_code: nil,
                state: nil,
                town: nil
              ); end
            end
            class Dob < Stripe::RequestParams
              # The day of birth of the representative.
              sig { returns(Integer) }
              attr_accessor :day
              # The month of birth of the representative.
              sig { returns(Integer) }
              attr_accessor :month
              # The year of birth of the representative.
              sig { returns(Integer) }
              attr_accessor :year
              sig { params(day: Integer, month: Integer, year: Integer).void }
              def initialize(day: nil, month: nil, year: nil); end
            end
            # The address of the representative.
            sig {
              returns(T.nilable(T.nilable(::Stripe::V2::AccountService::UpdateParams::LegalEntityData::Representative::Address)))
             }
            attr_accessor :address
            # The date of birth of the representative.
            sig {
              returns(T.nilable(T.nilable(::Stripe::V2::AccountService::UpdateParams::LegalEntityData::Representative::Dob)))
             }
            attr_accessor :dob
            # The given name of the representative.
            sig { returns(T.nilable(T.nilable(String))) }
            attr_accessor :given_name
            # The surname of the representative.
            sig { returns(T.nilable(T.nilable(String))) }
            attr_accessor :surname
            sig {
              params(address: T.nilable(T.nilable(::Stripe::V2::AccountService::UpdateParams::LegalEntityData::Representative::Address)), dob: T.nilable(T.nilable(::Stripe::V2::AccountService::UpdateParams::LegalEntityData::Representative::Dob)), given_name: T.nilable(T.nilable(String)), surname: T.nilable(T.nilable(String))).void
             }
            def initialize(address: nil, dob: nil, given_name: nil, surname: nil); end
          end
          # The address of the Legal Entity.
          sig {
            returns(T.nilable(T.nilable(::Stripe::V2::AccountService::UpdateParams::LegalEntityData::Address)))
           }
          attr_accessor :address
          # Closed Enum. The business type of the Legal Entity.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :business_type
          # Open Enum. Two-letter country code (ISO 3166-1 alpha-2) for where the company or individual is located.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :country
          # The legal name of this Legal Entity. Required unless the business type is `individual`.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :name
          # The representative of the Legal Entity. This is the person nominated by the Legal Entity to provide information about themselves, and general information about the account. For legal entities with `individual` business type, this field is required and should contain the individual's information.
          sig {
            returns(T.nilable(T.nilable(::Stripe::V2::AccountService::UpdateParams::LegalEntityData::Representative)))
           }
          attr_accessor :representative
          sig {
            params(address: T.nilable(T.nilable(::Stripe::V2::AccountService::UpdateParams::LegalEntityData::Address)), business_type: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), name: T.nilable(T.nilable(String)), representative: T.nilable(T.nilable(::Stripe::V2::AccountService::UpdateParams::LegalEntityData::Representative))).void
           }
          def initialize(
            address: nil,
            business_type: nil,
            country: nil,
            name: nil,
            representative: nil
          ); end
        end
        # Configurations applied to this Account in order to allow it to be used in different product flows. Currently only supports the recipient configuration.
        sig { returns(T.nilable(::Stripe::V2::AccountService::UpdateParams::Configuration)) }
        attr_accessor :configuration
        # The default contact email address for the Account. This field is optional, but must be supplied before the recipient configuration can be populated.
        sig { returns(T.nilable(String)) }
        attr_accessor :email
        # Closed Enum. Additional fields to include in the response. Currently supports `configuration.recipient_data`, `legal_entity_data`, `requirements`, and `supportable_features.recipient_data`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :include
        # Information about the company or individual that this Account represents. Stripe may require Legal Entity information in order to enable Features requested on the Account.
        sig { returns(T.nilable(::Stripe::V2::AccountService::UpdateParams::LegalEntityData)) }
        attr_accessor :legal_entity_data
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
        attr_accessor :metadata
        # A descriptive name for the Account. This name will be surfaced in the Account directory in the dashboard.
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        sig {
          params(configuration: T.nilable(::Stripe::V2::AccountService::UpdateParams::Configuration), email: T.nilable(String), include: T.nilable(T::Array[String]), legal_entity_data: T.nilable(::Stripe::V2::AccountService::UpdateParams::LegalEntityData), metadata: T.nilable(T::Hash[String, T.nilable(String)]), name: T.nilable(String)).void
         }
        def initialize(
          configuration: nil,
          email: nil,
          include: nil,
          legal_entity_data: nil,
          metadata: nil,
          name: nil
        ); end
      end
      class CloseParams < Stripe::RequestParams; end
      # Closes and removes access to the Account and its associated resources.
      sig {
        params(id: String, params: T.any(::Stripe::V2::AccountService::CloseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Account)
       }
      def close(id, params = {}, opts = {}); end

      # Creates an Account. You can optionally provide information about the associated Legal Entity, such as name and business type. The Account can also be configured as a recipient of OutboundPayments by requesting Features on the recipient configuration.
      sig {
        params(params: T.any(::Stripe::V2::AccountService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Account)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of Accounts. Note that the `include` parameter cannot be passed in on list requests.
      sig {
        params(params: T.any(::Stripe::V2::AccountService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the details of an Account.
      sig {
        params(id: String, params: T.any(::Stripe::V2::AccountService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Account)
       }
      def retrieve(id, params = {}, opts = {}); end

      # Updates the details of an Account. You can also optionally provide or update the details of the associated Legal Entity and recipient configuration.
      sig {
        params(id: String, params: T.any(::Stripe::V2::AccountService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Account)
       }
      def update(id, params = {}, opts = {}); end
    end
  end
end