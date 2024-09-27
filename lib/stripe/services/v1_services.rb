# frozen_string_literal: true

module Stripe
  class V1Services < StripeService
    # v1 accessors: The beginning of the section generated from our OpenAPI spec
    attr_reader :accounts
    attr_reader :account_links, :account_sessions, :apple_pay_domains, :application_fees, :apps, :balance, :balance_transactions, :billing, :billing_portal, :charges, :checkout, :climate, :confirmation_tokens, :test_helpers, :country_specs, :coupons, :credit_notes, :customers, :customer_sessions, :disputes, :entitlements, :ephemeral_keys, :events, :exchange_rates, :files, :file_links, :financial_connections, :forwarding, :identity, :invoices, :invoice_rendering_templates, :invoice_items, :issuing, :mandates, :payment_intents, :payment_links, :payment_methods, :payment_method_configurations, :payment_method_domains, :payouts, :plans, :prices, :products, :promotion_codes, :quotes, :radar, :refunds, :reporting, :reviews, :sigma, :setup_attempts, :setup_intents, :shipping_rates, :sources, :subscriptions, :subscription_items, :subscription_schedules, :tax, :tax_codes, :tax_ids, :tax_rates, :terminal, :tokens, :topups, :transfers, :treasury, :webhook_endpoints
    # v1 accessors: The end of the section generated from our OpenAPI spec

    # OAuthService is manually maintained, as it has special behaviors
    attr_reader :oauth

    def initialize(requestor)
      super(requestor)
      # v1 services: The beginning of the section generated from our OpenAPI spec
      @accounts = Stripe::AccountService.new(@requestor)
      @account_links = Stripe::AccountLinkService.new(@requestor)
      @account_sessions = Stripe::AccountSessionService.new(@requestor)
      @apple_pay_domains = Stripe::ApplePayDomainService.new(@requestor)
      @application_fees = Stripe::ApplicationFeeService.new(@requestor)
      @apps = Stripe::AppsService.new(@requestor)
      @balance = Stripe::BalanceService.new(@requestor)
      @balance_transactions = Stripe::BalanceTransactionService.new(@requestor)
      @billing = Stripe::BillingService.new(@requestor)
      @billing_portal = Stripe::BillingPortalService.new(@requestor)
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
      @identity = Stripe::IdentityService.new(@requestor)
      @invoices = Stripe::InvoiceService.new(@requestor)
      @invoice_rendering_templates = Stripe::InvoiceRenderingTemplateService.new(@requestor)
      @invoice_items = Stripe::InvoiceItemService.new(@requestor)
      @issuing = Stripe::IssuingService.new(@requestor)
      @mandates = Stripe::MandateService.new(@requestor)
      @payment_intents = Stripe::PaymentIntentService.new(@requestor)
      @payment_links = Stripe::PaymentLinkService.new(@requestor)
      @payment_methods = Stripe::PaymentMethodService.new(@requestor)
      @payment_method_configurations = Stripe::PaymentMethodConfigurationService.new(@requestor)
      @payment_method_domains = Stripe::PaymentMethodDomainService.new(@requestor)
      @payouts = Stripe::PayoutService.new(@requestor)
      @plans = Stripe::PlanService.new(@requestor)
      @prices = Stripe::PriceService.new(@requestor)
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
      # v1 services: The end of the section generated from our OpenAPI spec

      @oauth = OAuthService.new(@requestor)
    end
  end
end
