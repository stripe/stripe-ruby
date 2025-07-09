# frozen_string_literal: true

module Stripe
  class V1Services < StripeService
    # v1 accessors: The beginning of the section generated from our OpenAPI spec
    attr_reader :accounts
    attr_reader :account_links
    attr_reader :account_notices
    attr_reader :account_sessions
    attr_reader :apple_pay_domains
    attr_reader :application_fees
    attr_reader :apps
    attr_reader :balance
    attr_reader :balance_settings
    attr_reader :balance_transactions
    attr_reader :billing
    attr_reader :billing_portal
    attr_reader :capital
    attr_reader :charges
    attr_reader :checkout
    attr_reader :climate
    attr_reader :confirmation_tokens
    attr_reader :test_helpers
    attr_reader :country_specs
    attr_reader :coupons
    attr_reader :credit_notes
    attr_reader :customers
    attr_reader :customer_sessions
    attr_reader :disputes
    attr_reader :entitlements
    attr_reader :ephemeral_keys
    attr_reader :events
    attr_reader :exchange_rates
    attr_reader :files
    attr_reader :file_links
    attr_reader :financial_connections
    attr_reader :forwarding
    attr_reader :fx_quotes
    attr_reader :identity
    attr_reader :invoices
    attr_reader :invoice_rendering_templates
    attr_reader :invoice_items
    attr_reader :issuing
    attr_reader :mandates
    attr_reader :margins
    attr_reader :orders
    attr_reader :payment_attempt_records
    attr_reader :payment_intents
    attr_reader :payment_links
    attr_reader :payment_methods
    attr_reader :payment_method_configurations
    attr_reader :payment_method_domains
    attr_reader :payment_records
    attr_reader :payouts
    attr_reader :plans
    attr_reader :prices
    attr_reader :privacy
    attr_reader :products
    attr_reader :promotion_codes
    attr_reader :quotes
    attr_reader :radar
    attr_reader :refunds
    attr_reader :reporting
    attr_reader :reviews
    attr_reader :sigma
    attr_reader :setup_attempts
    attr_reader :setup_intents
    attr_reader :shipping_rates
    attr_reader :sources
    attr_reader :subscriptions
    attr_reader :subscription_items
    attr_reader :subscription_schedules
    attr_reader :tax
    attr_reader :tax_codes
    attr_reader :tax_ids
    attr_reader :tax_rates
    attr_reader :terminal
    attr_reader :tokens
    attr_reader :topups
    attr_reader :transfers
    attr_reader :treasury
    attr_reader :webhook_endpoints
    attr_reader :external_accounts
    # v1 accessors: The end of the section generated from our OpenAPI spec

    # OAuthService is manually maintained, as it has special behaviors
    attr_reader :oauth

    def initialize(requestor)
      super
      # v1 services: The beginning of the section generated from our OpenAPI spec
      @accounts = Stripe::AccountService.new(@requestor)
      @account_links = Stripe::AccountLinkService.new(@requestor)
      @account_notices = Stripe::AccountNoticeService.new(@requestor)
      @account_sessions = Stripe::AccountSessionService.new(@requestor)
      @apple_pay_domains = Stripe::ApplePayDomainService.new(@requestor)
      @application_fees = Stripe::ApplicationFeeService.new(@requestor)
      @apps = Stripe::AppsService.new(@requestor)
      @balance = Stripe::BalanceService.new(@requestor)
      @balance_settings = Stripe::BalanceSettingsService.new(@requestor)
      @balance_transactions = Stripe::BalanceTransactionService.new(@requestor)
      @billing = Stripe::BillingService.new(@requestor)
      @billing_portal = Stripe::BillingPortalService.new(@requestor)
      @capital = Stripe::CapitalService.new(@requestor)
      @charges = Stripe::ChargeService.new(@requestor)
      @checkout = Stripe::CheckoutService.new(@requestor)
      @climate = Stripe::ClimateService.new(@requestor)
      @confirmation_tokens = Stripe::ConfirmationTokenService.new(@requestor)
      @test_helpers = Stripe::TestHelpersService.new(@requestor)
      @country_specs = Stripe::CountrySpecService.new(@requestor)
      @coupons = Stripe::CouponService.new(@requestor)
      @credit_notes = Stripe::CreditNoteService.new(@requestor)
      @customers = Stripe::CustomerService.new(@requestor)
      @customer_sessions = Stripe::CustomerSessionService.new(@requestor)
      @disputes = Stripe::DisputeService.new(@requestor)
      @entitlements = Stripe::EntitlementsService.new(@requestor)
      @ephemeral_keys = Stripe::EphemeralKeyService.new(@requestor)
      @events = Stripe::EventService.new(@requestor)
      @exchange_rates = Stripe::ExchangeRateService.new(@requestor)
      @files = Stripe::FileService.new(@requestor)
      @file_links = Stripe::FileLinkService.new(@requestor)
      @financial_connections = Stripe::FinancialConnectionsService.new(@requestor)
      @forwarding = Stripe::ForwardingService.new(@requestor)
      @fx_quotes = Stripe::FxQuoteService.new(@requestor)
      @identity = Stripe::IdentityService.new(@requestor)
      @invoices = Stripe::InvoiceService.new(@requestor)
      @invoice_rendering_templates = Stripe::InvoiceRenderingTemplateService.new(@requestor)
      @invoice_items = Stripe::InvoiceItemService.new(@requestor)
      @issuing = Stripe::IssuingService.new(@requestor)
      @mandates = Stripe::MandateService.new(@requestor)
      @margins = Stripe::MarginService.new(@requestor)
      @orders = Stripe::OrderService.new(@requestor)
      @payment_attempt_records = Stripe::PaymentAttemptRecordService.new(@requestor)
      @payment_intents = Stripe::PaymentIntentService.new(@requestor)
      @payment_links = Stripe::PaymentLinkService.new(@requestor)
      @payment_methods = Stripe::PaymentMethodService.new(@requestor)
      @payment_method_configurations = Stripe::PaymentMethodConfigurationService.new(@requestor)
      @payment_method_domains = Stripe::PaymentMethodDomainService.new(@requestor)
      @payment_records = Stripe::PaymentRecordService.new(@requestor)
      @payouts = Stripe::PayoutService.new(@requestor)
      @plans = Stripe::PlanService.new(@requestor)
      @prices = Stripe::PriceService.new(@requestor)
      @privacy = Stripe::PrivacyService.new(@requestor)
      @products = Stripe::ProductService.new(@requestor)
      @promotion_codes = Stripe::PromotionCodeService.new(@requestor)
      @quotes = Stripe::QuoteService.new(@requestor)
      @radar = Stripe::RadarService.new(@requestor)
      @refunds = Stripe::RefundService.new(@requestor)
      @reporting = Stripe::ReportingService.new(@requestor)
      @reviews = Stripe::ReviewService.new(@requestor)
      @sigma = Stripe::SigmaService.new(@requestor)
      @setup_attempts = Stripe::SetupAttemptService.new(@requestor)
      @setup_intents = Stripe::SetupIntentService.new(@requestor)
      @shipping_rates = Stripe::ShippingRateService.new(@requestor)
      @sources = Stripe::SourceService.new(@requestor)
      @subscriptions = Stripe::SubscriptionService.new(@requestor)
      @subscription_items = Stripe::SubscriptionItemService.new(@requestor)
      @subscription_schedules = Stripe::SubscriptionScheduleService.new(@requestor)
      @tax = Stripe::TaxService.new(@requestor)
      @tax_codes = Stripe::TaxCodeService.new(@requestor)
      @tax_ids = Stripe::TaxIdService.new(@requestor)
      @tax_rates = Stripe::TaxRateService.new(@requestor)
      @terminal = Stripe::TerminalService.new(@requestor)
      @tokens = Stripe::TokenService.new(@requestor)
      @topups = Stripe::TopupService.new(@requestor)
      @transfers = Stripe::TransferService.new(@requestor)
      @treasury = Stripe::TreasuryService.new(@requestor)
      @webhook_endpoints = Stripe::WebhookEndpointService.new(@requestor)
      @external_accounts = Stripe::ExternalAccountService.new(@requestor)
      # v1 services: The end of the section generated from our OpenAPI spec

      @oauth = OAuthService.new(@requestor)
    end
  end
end
