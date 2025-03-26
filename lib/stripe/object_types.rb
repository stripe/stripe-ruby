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
        AccountNotice.object_name => AccountNotice,
        AccountSession.object_name => AccountSession,
        ApplePayDomain.object_name => ApplePayDomain,
        Application.object_name => Application,
        ApplicationFee.object_name => ApplicationFee,
        ApplicationFeeRefund.object_name => ApplicationFeeRefund,
        Apps::Secret.object_name => Apps::Secret,
        Balance.object_name => Balance,
        BalanceTransaction.object_name => BalanceTransaction,
        BankAccount.object_name => BankAccount,
        Billing::Alert.object_name => Billing::Alert,
        Billing::AlertTriggered.object_name => Billing::AlertTriggered,
        Billing::CreditBalanceSummary.object_name => Billing::CreditBalanceSummary,
        Billing::CreditBalanceTransaction.object_name => Billing::CreditBalanceTransaction,
        Billing::CreditGrant.object_name => Billing::CreditGrant,
        Billing::Meter.object_name => Billing::Meter,
        Billing::MeterErrorReport.object_name => Billing::MeterErrorReport,
        Billing::MeterEvent.object_name => Billing::MeterEvent,
        Billing::MeterEventAdjustment.object_name => Billing::MeterEventAdjustment,
        Billing::MeterEventSummary.object_name => Billing::MeterEventSummary,
        BillingPortal::Configuration.object_name => BillingPortal::Configuration,
        BillingPortal::Session.object_name => BillingPortal::Session,
        Capability.object_name => Capability,
        Capital::FinancingOffer.object_name => Capital::FinancingOffer,
        Capital::FinancingSummary.object_name => Capital::FinancingSummary,
        Capital::FinancingTransaction.object_name => Capital::FinancingTransaction,
        Card.object_name => Card,
        CashBalance.object_name => CashBalance,
        Charge.object_name => Charge,
        Checkout::Session.object_name => Checkout::Session,
        Climate::Order.object_name => Climate::Order,
        Climate::Product.object_name => Climate::Product,
        Climate::Supplier.object_name => Climate::Supplier,
        ConfirmationToken.object_name => ConfirmationToken,
        ConnectCollectionTransfer.object_name => ConnectCollectionTransfer,
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
        Entitlements::ActiveEntitlementSummary.object_name => Entitlements::ActiveEntitlementSummary,
        Entitlements::Feature.object_name => Entitlements::Feature,
        EphemeralKey.object_name => EphemeralKey,
        Event.object_name => Event,
        ExchangeRate.object_name => ExchangeRate,
        File.object_name => File,
        FileLink.object_name => FileLink,
        FinancialConnections::Account.object_name => FinancialConnections::Account,
        FinancialConnections::AccountInferredBalance.object_name =>
        FinancialConnections::AccountInferredBalance,
        FinancialConnections::AccountOwner.object_name => FinancialConnections::AccountOwner,
        FinancialConnections::AccountOwnership.object_name => FinancialConnections::AccountOwnership,
        FinancialConnections::Institution.object_name => FinancialConnections::Institution,
        FinancialConnections::Session.object_name => FinancialConnections::Session,
        FinancialConnections::Transaction.object_name => FinancialConnections::Transaction,
        Forwarding::Request.object_name => Forwarding::Request,
        FundingInstructions.object_name => FundingInstructions,
        GiftCards::Card.object_name => GiftCards::Card,
        GiftCards::Transaction.object_name => GiftCards::Transaction,
        Identity::VerificationReport.object_name => Identity::VerificationReport,
        Identity::VerificationSession.object_name => Identity::VerificationSession,
        Invoice.object_name => Invoice,
        InvoiceItem.object_name => InvoiceItem,
        InvoiceLineItem.object_name => InvoiceLineItem,
        InvoicePayment.object_name => InvoicePayment,
        InvoiceRenderingTemplate.object_name => InvoiceRenderingTemplate,
        Issuing::Authorization.object_name => Issuing::Authorization,
        Issuing::Card.object_name => Issuing::Card,
        Issuing::Cardholder.object_name => Issuing::Cardholder,
        Issuing::CreditUnderwritingRecord.object_name => Issuing::CreditUnderwritingRecord,
        Issuing::Dispute.object_name => Issuing::Dispute,
        Issuing::DisputeSettlementDetail.object_name => Issuing::DisputeSettlementDetail,
        Issuing::FraudLiabilityDebit.object_name => Issuing::FraudLiabilityDebit,
        Issuing::PersonalizationDesign.object_name => Issuing::PersonalizationDesign,
        Issuing::PhysicalBundle.object_name => Issuing::PhysicalBundle,
        Issuing::Settlement.object_name => Issuing::Settlement,
        Issuing::Token.object_name => Issuing::Token,
        Issuing::Transaction.object_name => Issuing::Transaction,
        LineItem.object_name => LineItem,
        LoginLink.object_name => LoginLink,
        Mandate.object_name => Mandate,
        Margin.object_name => Margin,
        Order.object_name => Order,
        PaymentAttemptRecord.object_name => PaymentAttemptRecord,
        PaymentIntent.object_name => PaymentIntent,
        PaymentLink.object_name => PaymentLink,
        PaymentMethod.object_name => PaymentMethod,
        PaymentMethodConfiguration.object_name => PaymentMethodConfiguration,
        PaymentMethodDomain.object_name => PaymentMethodDomain,
        PaymentRecord.object_name => PaymentRecord,
        Payout.object_name => Payout,
        Person.object_name => Person,
        Plan.object_name => Plan,
        Price.object_name => Price,
        Product.object_name => Product,
        ProductFeature.object_name => ProductFeature,
        PromotionCode.object_name => PromotionCode,
        Quote.object_name => Quote,
        QuoteLine.object_name => QuoteLine,
        QuotePreviewInvoice.object_name => QuotePreviewInvoice,
        QuotePreviewSubscriptionSchedule.object_name => QuotePreviewSubscriptionSchedule,
        Radar::EarlyFraudWarning.object_name => Radar::EarlyFraudWarning,
        Radar::ValueList.object_name => Radar::ValueList,
        Radar::ValueListItem.object_name => Radar::ValueListItem,
        Refund.object_name => Refund,
        Reporting::ReportRun.object_name => Reporting::ReportRun,
        Reporting::ReportType.object_name => Reporting::ReportType,
        ReserveTransaction.object_name => ReserveTransaction,
        Reversal.object_name => Reversal,
        Review.object_name => Review,
        SetupAttempt.object_name => SetupAttempt,
        SetupIntent.object_name => SetupIntent,
        ShippingRate.object_name => ShippingRate,
        Sigma::ScheduledQueryRun.object_name => Sigma::ScheduledQueryRun,
        Source.object_name => Source,
        SourceMandateNotification.object_name => SourceMandateNotification,
        SourceTransaction.object_name => SourceTransaction,
        Subscription.object_name => Subscription,
        SubscriptionItem.object_name => SubscriptionItem,
        SubscriptionSchedule.object_name => SubscriptionSchedule,
        Tax::Association.object_name => Tax::Association,
        Tax::Calculation.object_name => Tax::Calculation,
        Tax::CalculationLineItem.object_name => Tax::CalculationLineItem,
        Tax::Form.object_name => Tax::Form,
        Tax::Registration.object_name => Tax::Registration,
        Tax::Settings.object_name => Tax::Settings,
        Tax::Transaction.object_name => Tax::Transaction,
        Tax::TransactionLineItem.object_name => Tax::TransactionLineItem,
        TaxCode.object_name => TaxCode,
        TaxDeductedAtSource.object_name => TaxDeductedAtSource,
        TaxId.object_name => TaxId,
        TaxRate.object_name => TaxRate,
        Terminal::Configuration.object_name => Terminal::Configuration,
        Terminal::ConnectionToken.object_name => Terminal::ConnectionToken,
        Terminal::Location.object_name => Terminal::Location,
        Terminal::Reader.object_name => Terminal::Reader,
        Terminal::ReaderCollectedData.object_name => Terminal::ReaderCollectedData,
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
        WebhookEndpoint.object_name => WebhookEndpoint,
        # object classes: The end of the section generated from our OpenAPI spec
      }
    end

    def self.v2_object_names_to_classes
      {
        V2::ListObject.object_name => V2::ListObject,

        # v2 object classes: The beginning of the section generated from our OpenAPI spec
        V2::Adjustment.object_name => V2::Adjustment,
        V2::Billing::MeterEvent.object_name => V2::Billing::MeterEvent,
        V2::Billing::MeterEventAdjustment.object_name => V2::Billing::MeterEventAdjustment,
        V2::Billing::MeterEventSession.object_name => V2::Billing::MeterEventSession,
        V2::Core::Account.object_name => V2::Core::Account,
        V2::Core::Person.object_name => V2::Core::Person,
        V2::Core::Vault::GbBankAccount.object_name => V2::Core::Vault::GbBankAccount,
        V2::Core::Vault::UsBankAccount.object_name => V2::Core::Vault::UsBankAccount,
        V2::Event.object_name => V2::Event,
        V2::EventDestination.object_name => V2::EventDestination,
        V2::FinancialAccount.object_name => V2::FinancialAccount,
        V2::FinancialAddress.object_name => V2::FinancialAddress,
        V2::FinancialAddressCreditSimulation.object_name => V2::FinancialAddressCreditSimulation,
        V2::FinancialAddressGeneratedMicrodeposits.object_name =>
        V2::FinancialAddressGeneratedMicrodeposits,
        V2::InboundTransfer.object_name => V2::InboundTransfer,
        V2::MoneyManagement::OutboundSetupIntent.object_name => V2::MoneyManagement::OutboundSetupIntent,
        V2::MoneyManagement::PayoutMethod.object_name => V2::MoneyManagement::PayoutMethod,
        V2::MoneyManagement::PayoutMethodsBankAccountSpec.object_name =>
        V2::MoneyManagement::PayoutMethodsBankAccountSpec,
        V2::OutboundPayment.object_name => V2::OutboundPayment,
        V2::OutboundPaymentQuote.object_name => V2::OutboundPaymentQuote,
        V2::OutboundTransfer.object_name => V2::OutboundTransfer,
        V2::ReceivedCredit.object_name => V2::ReceivedCredit,
        V2::ReceivedDebit.object_name => V2::ReceivedDebit,
        V2::Transaction.object_name => V2::Transaction,
        V2::TransactionEntry.object_name => V2::TransactionEntry,
        # v2 object classes: The end of the section generated from our OpenAPI spec
      }
    end
  end
end

# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/MethodLength
