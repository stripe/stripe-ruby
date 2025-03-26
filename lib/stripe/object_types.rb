# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength

module Stripe
  module ObjectTypes
    def self.object_names_to_classes
      {
        # data structures
        ListObject.object_name => ListObject,
        SearchResultObject.object_name => SearchResultObject,
        File.object_name_alt => File,

        # object classes: The beginning of the section generated from our OpenAPI spec
        Account.object_name => Account,
        AccountLink.object_name => AccountLink,
        AccountSession.object_name => AccountSession,
        ApplePayDomain.object_name => ApplePayDomain,
        ApplicationFee.object_name => ApplicationFee,
        ApplicationFeeRefund.object_name => ApplicationFeeRefund,
        Apps::Secret.object_name => Apps::Secret,
        Balance.object_name => Balance,
        BalanceTransaction.object_name => BalanceTransaction,
        BankAccount.object_name => BankAccount,
        Billing::Alert.object_name => Billing::Alert,
        Billing::CreditBalanceSummary.object_name => Billing::CreditBalanceSummary,
        Billing::CreditBalanceTransaction.object_name => Billing::CreditBalanceTransaction,
        Billing::CreditGrant.object_name => Billing::CreditGrant,
        Billing::Meter.object_name => Billing::Meter,
        Billing::MeterEvent.object_name => Billing::MeterEvent,
        Billing::MeterEventAdjustment.object_name => Billing::MeterEventAdjustment,
        Billing::MeterEventSummary.object_name => Billing::MeterEventSummary,
        BillingPortal::Configuration.object_name => BillingPortal::Configuration,
        BillingPortal::Session.object_name => BillingPortal::Session,
        Capability.object_name => Capability,
        Card.object_name => Card,
        CashBalance.object_name => CashBalance,
        Charge.object_name => Charge,
        Checkout::Session.object_name => Checkout::Session,
        Climate::Order.object_name => Climate::Order,
        Climate::Product.object_name => Climate::Product,
        Climate::Supplier.object_name => Climate::Supplier,
        ConfirmationToken.object_name => ConfirmationToken,
        CountrySpec.object_name => CountrySpec,
        Coupon.object_name => Coupon,
        CreditNote.object_name => CreditNote,
        CreditNoteLineItem.object_name => CreditNoteLineItem,
        Customer.object_name => Customer,
        CustomerBalanceTransaction.object_name => CustomerBalanceTransaction,
        CustomerCashBalanceTransaction.object_name => CustomerCashBalanceTransaction,
        CustomerSession.object_name => CustomerSession,
        Discount.object_name => Discount,
        Dispute.object_name => Dispute,
        Entitlements::ActiveEntitlement.object_name => Entitlements::ActiveEntitlement,
        Entitlements::Feature.object_name => Entitlements::Feature,
        EphemeralKey.object_name => EphemeralKey,
        Event.object_name => Event,
        ExchangeRate.object_name => ExchangeRate,
        File.object_name => File,
        FileLink.object_name => FileLink,
        FinancialConnections::Account.object_name => FinancialConnections::Account,
        FinancialConnections::AccountOwner.object_name => FinancialConnections::AccountOwner,
        FinancialConnections::AccountOwnership.object_name => FinancialConnections::AccountOwnership,
        FinancialConnections::Session.object_name => FinancialConnections::Session,
        FinancialConnections::Transaction.object_name => FinancialConnections::Transaction,
        Forwarding::Request.object_name => Forwarding::Request,
        FundingInstructions.object_name => FundingInstructions,
        Identity::VerificationReport.object_name => Identity::VerificationReport,
        Identity::VerificationSession.object_name => Identity::VerificationSession,
        Invoice.object_name => Invoice,
        InvoiceItem.object_name => InvoiceItem,
        InvoiceLineItem.object_name => InvoiceLineItem,
        InvoiceRenderingTemplate.object_name => InvoiceRenderingTemplate,
        Issuing::Authorization.object_name => Issuing::Authorization,
        Issuing::Card.object_name => Issuing::Card,
        Issuing::Cardholder.object_name => Issuing::Cardholder,
        Issuing::Dispute.object_name => Issuing::Dispute,
        Issuing::PersonalizationDesign.object_name => Issuing::PersonalizationDesign,
        Issuing::PhysicalBundle.object_name => Issuing::PhysicalBundle,
        Issuing::Token.object_name => Issuing::Token,
        Issuing::Transaction.object_name => Issuing::Transaction,
        LineItem.object_name => LineItem,
        LoginLink.object_name => LoginLink,
        Mandate.object_name => Mandate,
        PaymentIntent.object_name => PaymentIntent,
        PaymentLink.object_name => PaymentLink,
        PaymentMethod.object_name => PaymentMethod,
        PaymentMethodConfiguration.object_name => PaymentMethodConfiguration,
        PaymentMethodDomain.object_name => PaymentMethodDomain,
        Payout.object_name => Payout,
        Person.object_name => Person,
        Plan.object_name => Plan,
        Price.object_name => Price,
        Product.object_name => Product,
        ProductFeature.object_name => ProductFeature,
        PromotionCode.object_name => PromotionCode,
        Quote.object_name => Quote,
        Radar::EarlyFraudWarning.object_name => Radar::EarlyFraudWarning,
        Radar::ValueList.object_name => Radar::ValueList,
        Radar::ValueListItem.object_name => Radar::ValueListItem,
        Refund.object_name => Refund,
        Reporting::ReportRun.object_name => Reporting::ReportRun,
        Reporting::ReportType.object_name => Reporting::ReportType,
        Reversal.object_name => Reversal,
        Review.object_name => Review,
        SetupAttempt.object_name => SetupAttempt,
        SetupIntent.object_name => SetupIntent,
        ShippingRate.object_name => ShippingRate,
        Sigma::ScheduledQueryRun.object_name => Sigma::ScheduledQueryRun,
        Source.object_name => Source,
        SourceTransaction.object_name => SourceTransaction,
        Subscription.object_name => Subscription,
        SubscriptionItem.object_name => SubscriptionItem,
        SubscriptionSchedule.object_name => SubscriptionSchedule,
        Tax::Calculation.object_name => Tax::Calculation,
        Tax::CalculationLineItem.object_name => Tax::CalculationLineItem,
        Tax::Registration.object_name => Tax::Registration,
        Tax::Settings.object_name => Tax::Settings,
        Tax::Transaction.object_name => Tax::Transaction,
        Tax::TransactionLineItem.object_name => Tax::TransactionLineItem,
        TaxCode.object_name => TaxCode,
        TaxId.object_name => TaxId,
        TaxRate.object_name => TaxRate,
        Terminal::Configuration.object_name => Terminal::Configuration,
        Terminal::ConnectionToken.object_name => Terminal::ConnectionToken,
        Terminal::Location.object_name => Terminal::Location,
        Terminal::Reader.object_name => Terminal::Reader,
        TestHelpers::TestClock.object_name => TestHelpers::TestClock,
        Token.object_name => Token,
        Topup.object_name => Topup,
        Transfer.object_name => Transfer,
        Treasury::CreditReversal.object_name => Treasury::CreditReversal,
        Treasury::DebitReversal.object_name => Treasury::DebitReversal,
        Treasury::FinancialAccount.object_name => Treasury::FinancialAccount,
        Treasury::FinancialAccountFeatures.object_name => Treasury::FinancialAccountFeatures,
        Treasury::InboundTransfer.object_name => Treasury::InboundTransfer,
        Treasury::OutboundPayment.object_name => Treasury::OutboundPayment,
        Treasury::OutboundTransfer.object_name => Treasury::OutboundTransfer,
        Treasury::ReceivedCredit.object_name => Treasury::ReceivedCredit,
        Treasury::ReceivedDebit.object_name => Treasury::ReceivedDebit,
        Treasury::Transaction.object_name => Treasury::Transaction,
        Treasury::TransactionEntry.object_name => Treasury::TransactionEntry,
        UsageRecord.object_name => UsageRecord,
        UsageRecordSummary.object_name => UsageRecordSummary,
        WebhookEndpoint.object_name => WebhookEndpoint,
        # object classes: The end of the section generated from our OpenAPI spec
      }
    end

    def self.v2_object_names_to_classes
      {
        V2::ListObject.object_name => V2::ListObject,

        # v2 object classes: The beginning of the section generated from our OpenAPI spec
        V2::Billing::MeterEvent.object_name => V2::Billing::MeterEvent,
        V2::Billing::MeterEventAdjustment.object_name => V2::Billing::MeterEventAdjustment,
        V2::Billing::MeterEventSession.object_name => V2::Billing::MeterEventSession,
        V2::Core::Event.object_name => V2::Core::Event,
        V2::Core::EventDestination.object_name => V2::Core::EventDestination,
        # v2 object classes: The end of the section generated from our OpenAPI spec
      }
    end
  end
end

# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/MethodLength
