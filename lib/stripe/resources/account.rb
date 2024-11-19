# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This is an object representing a Stripe account. You can retrieve it to see
  # properties on the account like its current requirements or if the account is
  # enabled to make live charges or receive payouts.
  #
  # For accounts where [controller.requirement_collection](https://stripe.com/api/accounts/object#account_object-controller-requirement_collection)
  # is `application`, which includes Custom accounts, the properties below are always
  # returned.
  #
  # For accounts where [controller.requirement_collection](https://stripe.com/api/accounts/object#account_object-controller-requirement_collection)
  # is `stripe`, which includes Standard and Express accounts, some properties are only returned
  # until you create an [Account Link](https://stripe.com/api/account_links) or [Account Session](https://stripe.com/api/account_sessions)
  # to start Connect Onboarding. Learn about the [differences between accounts](https://stripe.com/connect/accounts).
  class Account < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::NestedResource
    include Stripe::APIOperations::Save

    OBJECT_NAME = "account"
    def self.object_name
      "account"
    end

    nested_resource_class_methods :capability,
                                  operations: %i[retrieve update list],
                                  resource_plural: "capabilities"
    nested_resource_class_methods :external_account,
                                  operations: %i[create retrieve update delete list]
    nested_resource_class_methods :login_link, operations: %i[create]
    nested_resource_class_methods :person, operations: %i[create retrieve update delete list]

    class BusinessProfile < Stripe::StripeObject
      class AnnualRevenue < Stripe::StripeObject
        attr_reader :amount, :currency, :fiscal_year_end
      end

      class MonthlyEstimatedRevenue < Stripe::StripeObject
        attr_reader :amount, :currency
      end

      class SupportAddress < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state
      end
      attr_reader :annual_revenue, :estimated_worker_count, :mcc, :monthly_estimated_revenue, :name, :product_description, :support_address, :support_email, :support_phone, :support_url, :url
    end

    class Capabilities < Stripe::StripeObject
      attr_reader :acss_debit_payments, :affirm_payments, :afterpay_clearpay_payments, :alma_payments, :amazon_pay_payments, :au_becs_debit_payments, :bacs_debit_payments, :bancontact_payments, :bank_transfer_payments, :blik_payments, :boleto_payments, :card_issuing, :card_payments, :cartes_bancaires_payments, :cashapp_payments, :eps_payments, :fpx_payments, :gb_bank_transfer_payments, :giropay_payments, :gopay_payments, :grabpay_payments, :id_bank_transfer_payments, :id_bank_transfer_payments_bca, :ideal_payments, :india_international_payments, :jcb_payments, :jp_bank_transfer_payments, :kakao_pay_payments, :klarna_payments, :konbini_payments, :kr_card_payments, :legacy_payments, :link_payments, :mb_way_payments, :mobilepay_payments, :multibanco_payments, :mx_bank_transfer_payments, :naver_pay_payments, :oxxo_payments, :p24_payments, :payco_payments, :paynow_payments, :paypal_payments, :payto_payments, :promptpay_payments, :qris_payments, :rechnung_payments, :revolut_pay_payments, :samsung_pay_payments, :sepa_bank_transfer_payments, :sepa_debit_payments, :shopeepay_payments, :sofort_payments, :swish_payments, :tax_reporting_us_1099_k, :tax_reporting_us_1099_misc, :transfers, :treasury, :treasury_evolve, :treasury_fifth_third, :treasury_goldman_sachs, :twint_payments, :us_bank_account_ach_payments, :us_bank_transfer_payments, :zip_payments
    end

    class Company < Stripe::StripeObject
      class Address < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state
      end

      class AddressKana < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state, :town
      end

      class AddressKanji < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state, :town
      end

      class OwnershipDeclaration < Stripe::StripeObject
        attr_reader :date, :ip, :user_agent
      end

      class Verification < Stripe::StripeObject
        class Document < Stripe::StripeObject
          attr_reader :back, :details, :details_code, :front
        end
        attr_reader :document
      end
      attr_reader :address, :address_kana, :address_kanji, :directors_provided, :executives_provided, :export_license_id, :export_purpose_code, :name, :name_kana, :name_kanji, :owners_provided, :ownership_declaration, :phone, :structure, :tax_id_provided, :tax_id_registrar, :vat_id_provided, :verification
    end

    class Controller < Stripe::StripeObject
      class Application < Stripe::StripeObject
        attr_reader :loss_liable, :onboarding_owner, :pricing_controls
      end

      class Dashboard < Stripe::StripeObject
        attr_reader :type
      end

      class Fees < Stripe::StripeObject
        attr_reader :payer
      end

      class Losses < Stripe::StripeObject
        attr_reader :payments
      end

      class StripeDashboard < Stripe::StripeObject
        attr_reader :type
      end
      attr_reader :application, :dashboard, :fees, :is_controller, :losses, :requirement_collection, :stripe_dashboard, :type
    end

    class FutureRequirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        attr_reader :alternative_fields_due, :original_fields_due
      end

      class Error < Stripe::StripeObject
        attr_reader :code, :reason, :requirement
      end
      attr_reader :alternatives, :current_deadline, :currently_due, :disabled_reason, :errors, :eventually_due, :past_due, :pending_verification
    end

    class Groups < Stripe::StripeObject
      attr_reader :payments_pricing
    end

    class Requirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        attr_reader :alternative_fields_due, :original_fields_due
      end

      class Error < Stripe::StripeObject
        attr_reader :code, :reason, :requirement
      end
      attr_reader :alternatives, :current_deadline, :currently_due, :disabled_reason, :errors, :eventually_due, :past_due, :pending_verification
    end

    class RiskControls < Stripe::StripeObject
      class Charges < Stripe::StripeObject
        attr_reader :pause_requested
      end

      class Payouts < Stripe::StripeObject
        attr_reader :pause_requested
      end
      attr_reader :charges, :payouts
    end

    class Settings < Stripe::StripeObject
      class BacsDebitPayments < Stripe::StripeObject
        attr_reader :display_name, :service_user_number
      end

      class BankBcaOnboarding < Stripe::StripeObject
        attr_reader :account_holder_name, :business_account_number
      end

      class Branding < Stripe::StripeObject
        attr_reader :icon, :logo, :primary_color, :secondary_color
      end

      class Capital < Stripe::StripeObject
        attr_reader :payout_destination, :payout_destination_selector
      end

      class CardIssuing < Stripe::StripeObject
        class TosAcceptance < Stripe::StripeObject
          attr_reader :date, :ip, :user_agent
        end
        attr_reader :tos_acceptance
      end

      class CardPayments < Stripe::StripeObject
        class DeclineOn < Stripe::StripeObject
          attr_reader :avs_failure, :cvc_failure
        end
        attr_reader :decline_on, :statement_descriptor_prefix, :statement_descriptor_prefix_kana, :statement_descriptor_prefix_kanji
      end

      class Dashboard < Stripe::StripeObject
        attr_reader :display_name, :timezone
      end

      class Invoices < Stripe::StripeObject
        attr_reader :default_account_tax_ids
      end

      class Payments < Stripe::StripeObject
        attr_reader :statement_descriptor, :statement_descriptor_kana, :statement_descriptor_kanji, :statement_descriptor_prefix_kana, :statement_descriptor_prefix_kanji
      end

      class Payouts < Stripe::StripeObject
        class Schedule < Stripe::StripeObject
          attr_reader :delay_days, :interval, :monthly_anchor, :weekly_anchor
        end
        attr_reader :debit_negative_balances, :schedule, :statement_descriptor
      end

      class SepaDebitPayments < Stripe::StripeObject
        attr_reader :creditor_id
      end

      class TaxForms < Stripe::StripeObject
        attr_reader :consented_to_paperless_delivery
      end

      class Treasury < Stripe::StripeObject
        class TosAcceptance < Stripe::StripeObject
          attr_reader :date, :ip, :user_agent
        end
        attr_reader :tos_acceptance
      end
      attr_reader :bacs_debit_payments, :bank_bca_onboarding, :branding, :capital, :card_issuing, :card_payments, :dashboard, :invoices, :payments, :payouts, :sepa_debit_payments, :tax_forms, :treasury
    end

    class TosAcceptance < Stripe::StripeObject
      attr_reader :date, :ip, :service_agreement, :user_agent
    end
    # Business information about the account.
    attr_reader :business_profile
    # The business type. After you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property is only returned for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
    attr_reader :business_type
    # Attribute for field capabilities
    attr_reader :capabilities
    # Whether the account can process charges.
    attr_reader :charges_enabled
    # Attribute for field company
    attr_reader :company
    # Attribute for field controller
    attr_reader :controller
    # The account's country.
    attr_reader :country
    # Time at which the account was connected. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://stripe.com/docs/payouts).
    attr_reader :default_currency
    # Whether account details have been submitted. Accounts with Stripe Dashboard access, which includes Standard accounts, cannot receive payouts before this is true. Accounts where this is false should be directed to [an onboarding flow](/connect/onboarding) to finish submitting account details.
    attr_reader :details_submitted
    # An email address associated with the account. It's not used for authentication and Stripe doesn't market to this field without explicit approval from the platform.
    attr_reader :email
    # External accounts (bank accounts and debit cards) currently attached to this account. External accounts are only returned for requests where `controller[is_controller]` is true.
    attr_reader :external_accounts
    # Attribute for field future_requirements
    attr_reader :future_requirements
    # The groups associated with the account.
    attr_reader :groups
    # Unique identifier for the object.
    attr_reader :id
    # This is an object representing a person associated with a Stripe account.
    #
    # A platform cannot access a person for an account where [account.controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`, which includes Standard and Express accounts, after creating an Account Link or Account Session to start Connect onboarding.
    #
    # See the [Standard onboarding](/connect/standard-accounts) or [Express onboarding](/connect/express-accounts) documentation for information about prefilling information and account onboarding steps. Learn more about [handling identity verification with the API](/connect/handling-api-verification#person-information).
    attr_reader :individual
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Whether the funds in this account can be paid out.
    attr_reader :payouts_enabled
    # Attribute for field requirements
    attr_reader :requirements
    # Attribute for field risk_controls
    attr_reader :risk_controls
    # Options for customizing how the account functions within Stripe.
    attr_reader :settings
    # Attribute for field tos_acceptance
    attr_reader :tos_acceptance
    # The Stripe account type. Can be `standard`, `express`, `custom`, or `none`.
    attr_reader :type
    # Always true for a deleted object
    attr_reader :deleted

    # With [Connect](https://stripe.com/docs/connect), you can create Stripe accounts for your users.
    # To do this, you'll first need to [register your platform](https://dashboard.stripe.com/account/applications/settings).
    #
    # If you've already collected information for your connected accounts, you [can prefill that information](https://stripe.com/docs/connect/best-practices#onboarding) when
    # creating the account. Connect Onboarding won't ask for the prefilled information during account onboarding.
    # You can prefill any information on the account.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/accounts", params: params, opts: opts)
    end

    # With [Connect](https://stripe.com/connect), you can delete accounts you manage.
    #
    # Test-mode accounts can be deleted at any time.
    #
    # Live-mode accounts where Stripe is responsible for negative account balances cannot be deleted, which includes Standard accounts. Live-mode accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be deleted when all [balances](https://stripe.com/api/balance/balance_object) are zero.
    #
    # If you want to delete your own account, use the [account information tab in your account settings](https://dashboard.stripe.com/settings/account) instead.
    def self.delete(id, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/accounts/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # With [Connect](https://stripe.com/connect), you can delete accounts you manage.
    #
    # Test-mode accounts can be deleted at any time.
    #
    # Live-mode accounts where Stripe is responsible for negative account balances cannot be deleted, which includes Standard accounts. Live-mode accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be deleted when all [balances](https://stripe.com/api/balance/balance_object) are zero.
    #
    # If you want to delete your own account, use the [account information tab in your account settings](https://dashboard.stripe.com/settings/account) instead.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/accounts/%<account>s", { account: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of accounts connected to your platform via [Connect](https://stripe.com/docs/connect). If you're not a platform, the list is empty.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/accounts", params: filters, opts: opts)
    end

    # Returns a list of people associated with the account's legal entity. The people are returned sorted by creation date, with the most recent people appearing first.
    def persons(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/accounts/%<account>s/persons", { account: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of people associated with the account's legal entity. The people are returned sorted by creation date, with the most recent people appearing first.
    def self.persons(account, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/accounts/%<account>s/persons", { account: CGI.escape(account) }),
        params: params,
        opts: opts
      )
    end

    # With [Connect](https://stripe.com/connect), you can reject accounts that you have flagged as suspicious.
    #
    # Only accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be rejected. Test-mode accounts can be rejected at any time. Live-mode accounts can only be rejected after all balances are zero.
    def reject(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/accounts/%<account>s/reject", { account: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # With [Connect](https://stripe.com/connect), you can reject accounts that you have flagged as suspicious.
    #
    # Only accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be rejected. Test-mode accounts can be rejected at any time. Live-mode accounts can only be rejected after all balances are zero.
    def self.reject(account, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/accounts/%<account>s/reject", { account: CGI.escape(account) }),
        params: params,
        opts: opts
      )
    end

    # Updates a [connected account](https://stripe.com/connect/accounts) by setting the values of the parameters passed. Any parameters not provided are
    # left unchanged.
    #
    # For accounts where [controller.requirement_collection](https://stripe.com/api/accounts/object#account_object-controller-requirement_collection)
    # is application, which includes Custom accounts, you can update any information on the account.
    #
    # For accounts where [controller.requirement_collection](https://stripe.com/api/accounts/object#account_object-controller-requirement_collection)
    # is stripe, which includes Standard and Express accounts, you can update all information until you create
    # an [Account Link or <a href="/api/account_sessions">Account Session](https://stripe.com/api/account_links) to start Connect onboarding,
    # after which some properties can no longer be updated.
    #
    # To update your own account, use the [Dashboard](https://dashboard.stripe.com/settings/account). Refer to our
    # [Connect](https://stripe.com/docs/connect/updating-accounts) documentation to learn more about updating accounts.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/accounts/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    save_nested_resource :external_account

    def resource_url
      if self["id"]
        super
      else
        "/v1/account"
      end
    end

    # @override To make id optional
    def self.retrieve(id = nil, opts = {})
      Util.check_string_argument!(id) if id

      # Account used to be a singleton, where this method's signature was
      # `(opts={})`. For the sake of not breaking folks who pass in an OAuth
      # key in opts, let's lurkily string match for it.
      if opts == {} && id.is_a?(String) && id.start_with?("sk_")
        # `super` properly assumes a String opts is the apiKey and normalizes
        # as expected.
        opts = id
        id = nil
      end
      super(id, opts)
    end

    # We are not adding a helper for capabilities here as the Account object
    # already has a capabilities property which is a hash and not the sub-list
    # of capabilities.

    # Somewhat unfortunately, we attempt to do a special encoding trick when
    # serializing `additional_owners` under an account: when updating a value,
    # we actually send the update parameters up as an integer-indexed hash
    # rather than an array. So instead of this:
    #
    #     field[]=item1&field[]=item2&field[]=item3
    #
    # We send this:
    #
    #     field[0]=item1&field[1]=item2&field[2]=item3
    #
    # There are two major problems with this technique:
    #
    #     * Entities are addressed by array index, which is not stable and can
    #       easily result in unexpected results between two different requests.
    #
    #     * A replacement of the array's contents is ambiguous with setting a
    #       subset of the array. Because of this, the only way to shorten an
    #       array is to unset it completely by making sure it goes into the
    #       server as an empty string, then setting its contents again.
    #
    # We're trying to get this overturned on the server side, but for now,
    # patch in a special allowance.
    def serialize_params(options = {})
      serialize_params_account(self, super, options)
    end

    def serialize_params_account(_obj, update_hash, options = {})
      if (entity = @values[:legal_entity]) && (owners = entity[:additional_owners])
        entity_update = update_hash[:legal_entity] ||= {}
        entity_update[:additional_owners] =
          serialize_additional_owners(entity, owners)
      end
      if (individual = @values[:individual]) && (individual.is_a?(Person) && !update_hash.key?(:individual))
        update_hash[:individual] = individual.serialize_params(options)
      end
      update_hash
    end

    def self.protected_fields
      [:legal_entity]
    end

    def legal_entity
      self["legal_entity"]
    end

    def legal_entity=(_legal_entity)
      raise NoMethodError,
            "Overriding legal_entity can cause serious issues. Instead, set " \
            "the individual fields of legal_entity like " \
            "`account.legal_entity.first_name = 'Blah'`"
    end

    def deauthorize(client_id = nil, opts = {})
      params = {
        client_id: client_id,
        stripe_user_id: id,
      }
      opts = @opts.merge(Util.normalize_opts(opts))
      OAuth.deauthorize(params, opts)
    end

    private def serialize_additional_owners(legal_entity, additional_owners)
      original_value =
        legal_entity
        .instance_variable_get(:@original_values)[:additional_owners]
      if original_value && original_value.length > additional_owners.length
        # url params provide no mechanism for deleting an item in an array,
        # just overwriting the whole array or adding new items. So let's not
        # allow deleting without a full overwrite until we have a solution.
        raise ArgumentError,
              "You cannot delete an item from an array, you must instead " \
              "set a new array"
      end

      update_hash = {}
      additional_owners.each_with_index do |v, i|
        # We will almost always see a StripeObject except in the case of a Hash
        # that's been appended to an array of `additional_owners`. We may be
        # able to normalize that ugliness by using an array proxy object with
        # StripeObjects that can detect appends and replace a hash with a
        # StripeObject.
        update = v.is_a?(StripeObject) ? v.serialize_params : v

        next unless update != {} && (!original_value ||
          update != legal_entity.serialize_params_value(original_value[i], nil,
                                                        false, true))

        update_hash[i.to_s] = update
      end
      update_hash
    end
  end
end
