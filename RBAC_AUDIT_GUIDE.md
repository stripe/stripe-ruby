# RBAC & Audit Reporting System - Implementation Guide

## Overview

This document describes the hierarchical Role-Based Access Control (RBAC) system and automated audit reporting engine implemented for the Stripe Ruby SDK. The system enables fine-grained permission management across banking and cryptocurrency modules with comprehensive audit logging and regulatory-ready reporting.

## Architecture

### Core Components

1. **RBAC System** (`lib/stripe/rbac/`)
   - Role definitions and hierarchy
   - Permission mappings
   - Context and policy enforcement

2. **Audit System** (`lib/stripe/audit/`)
   - Event logging and tracking
   - Query and filtering capabilities
   - Export functionality (JSON, CSV)

3. **Risk Scoring** (`lib/stripe/risk/`)
   - Transaction risk assessment
   - Rule-based scoring engine
   - Baseline statistics tracking

4. **Banking Module** (`lib/stripe/banking.rb`)
   - Transaction management with RBAC
   - Account reconciliation
   - Role-based data filtering

5. **Crypto Module** (`lib/stripe/crypto.rb`)
   - Wallet monitoring
   - Crypto transaction tracking
   - Confirmation and gas fee tracking

6. **Audit Report Generator** (`lib/stripe/audit_report_generator.rb`)
   - Report generation and export
   - PDF, JSON, and CSV output formats

## Roles and Permissions

### Role Hierarchy

#### 1. Auditor
**Description**: Read-only access to audit logs and financial reports

**Permissions**:
- `audit.view` - View audit logs
- `bank.view` - View bank transactions (limited data)
- `crypto.view` - View crypto transactions (limited data)
- `reports.view` - View generated reports
- `reports.export` - Export reports
- `risk.view` - View risk scores

**Data Filtering**: Auditors see summarized data without sensitive internal metadata

#### 2. Compliance Officer
**Description**: Read/write audit logs, create reports, assign risk scores

**Permissions**:
- All Auditor permissions, plus:
- `audit.create` - Create audit log entries
- `audit.export` - Export audit data
- `reports.create` - Create standard reports
- `reports.audit_create` - Create audit reports
- `risk.assign` - Assign/modify risk scores
- `bank.create` - Create bank transactions
- `crypto.create` - Create crypto transactions
- `users.view` - View user information

**Data Filtering**: Compliance officers see full transaction details but cannot manage users

#### 3. Treasury Manager
**Description**: Full access to bank/crypto operations and user management

**Permissions**:
- All Compliance Officer permissions, plus:
- `bank.edit` - Edit bank transactions
- `bank.delete` - Delete bank transactions
- `bank.reconcile` - Reconcile bank accounts
- `crypto.edit` - Edit crypto transactions
- `crypto.delete` - Delete crypto transactions
- `crypto.monitor_wallets` - Monitor crypto wallets
- `users.manage` - Manage users and roles

**Data Filtering**: Treasury managers see all data without restrictions

## Usage Examples

### Setting Up RBAC Context

```ruby
require 'stripe'

# Set context for an operation
Stripe::RBAC.set_context(
  user_id: "user123",
  user_name: "Alice Johnson",
  role: :treasury_manager,
  ip_address: "192.168.1.1"
)

# Or use a block (auto-clears context after)
Stripe::RBAC.with_context(
  user_id: "user456",
  user_name: "Bob Smith",
  role: :compliance_officer
) do |context|
  # Operations here execute with compliance_officer permissions
end
```

### Banking Operations with RBAC

```ruby
# Create a bank transaction (requires 'bank.create' permission)
transaction = Stripe::Banking.transactions.create_transaction(
  account_id: "acc_123",
  amount: 50_000,
  currency: "USD",
  description: "Wire transfer"
)

# View transactions (filtered by role)
Stripe::RBAC.with_context(user_id: "aud1", user_name: "Auditor", role: :auditor) do
  transactions = Stripe::Banking.transactions.list_transactions(account_id: "acc_123")
  # Auditor sees: id, amount, currency, created_at, status
  # Auditor does NOT see: metadata, internal notes
end

# Reconcile account (requires 'bank.reconcile' permission)
result = Stripe::Banking.transactions.reconcile_account(
  account_id: "acc_123",
  expected_balance: 100_000,
  notes: "Monthly reconciliation"
)
```

### Crypto Operations with RBAC

```ruby
# Monitor a wallet (requires 'crypto.monitor_wallets' permission)
wallet = Stripe::Crypto.transactions.monitor_wallet(
  wallet_address: "0x742d35Cc6634C0532925a3b844Bc93e65c5f6E",
  blockchain: "ethereum",
  label: "Main Treasury Wallet"
)

# Create a crypto transaction (requires 'crypto.create' permission)
txn = Stripe::Crypto.transactions.create_transaction(
  wallet_id: wallet[:id],
  transaction_hash: "0xabc123def456",
  amount: 10.5,
  currency: "ETH",
  gas_fee: 0.01,
  confirmations: 12
)

# Update transaction (requires 'crypto.edit' permission)
updated = Stripe::Crypto.transactions.update_transaction(
  txn[:id],
  confirmations: 25,
  status: "confirmed"
)
```

### Audit Logging

```ruby
# Log from current context
Stripe::RBAC.with_context(
  user_id: "user1",
  user_name: "Alice",
  role: :treasury_manager
) do
  # Operation is automatically logged
  Stripe::Banking.transactions.create_transaction(
    account_id: "acc_1",
    amount: 1000
  )

  # Or manually log an event
  Stripe::Audit.log_from_context(
    action: "review",
    resource_type: "bank_transaction",
    resource_id: "txn_123",
    investigator_notes: "Transaction verified and approved",
    module_name: "banking",
    risk_level: "low"
  )
end

# Query audit events
high_risk_events = Stripe::Audit.high_risk_events
events = Stripe::Audit.find_events(
  user_id: "user1",
  resource_type: "bank_transaction",
  start_time: Date.today - 30,
  end_time: Date.today
)

# Export audit data
json = Stripe::Audit.logger.export_as_json(risk_level: "high")
csv = Stripe::Audit.logger.export_as_csv(user_id: "user1")
```

### Risk Scoring

```ruby
# Score a transaction
transaction = {
  amount: 250_000,
  currency: "USD",
  counterparty_new: true,
  country: "US",
  is_bulk: false,
  compliance_flag: false
}

result = Stripe::Risk.score_transaction(transaction)
# Returns: { score: 45, level: "medium", factors: {...}, timestamp: ... }

# Record transaction for baseline stats
Stripe::Risk.record_transaction(transaction)

# Get level from score
level = Stripe::Risk.score_for_level(25)  # => "low"
```

### Generating Audit Reports

```ruby
Stripe::RBAC.with_context(
  user_id: "compliance1",
  user_name: "Compliance Officer",
  role: :compliance_officer
) do
  # Generate comprehensive audit report
  report = Stripe::audit_reports.generate_report(
    start_date: Date.today - 30,
    end_date: Date.today,
    include_sections: :all  # or specify [:executive_summary, :high_risk_events]
  )

  # Export as JSON
  json = Stripe::audit_reports.export_as_json

  # Export as CSV
  csv = Stripe::audit_reports.export_as_csv

  # Export as PDF (requires Prawn gem)
  result = Stripe::audit_reports.export_as_pdf(
    output_path: "/tmp/audit_report.pdf"
  )
  # => { success: true, filepath: "...", size: 12345 }
end
```

### Permission Checking

```ruby
# Check current permissions
context = Stripe::RBAC::Context.current

# Require specific permission
Stripe::RBAC::Policy.require_permission!("bank.create")
# Raises AccessDeniedError if not authorized

# Check without raising
if Stripe::RBAC::Policy.can?("reports.create")
  # Proceed
end

# Check multiple permissions
if Stripe::RBAC::Policy.can_any?("bank.create", "crypto.create")
  # User has at least one permission
end

if Stripe::RBAC::Policy.can_all?("audit.view", "audit.create")
  # User has all permissions
end

# Conditional authorization
Stripe::RBAC::Policy.authorize("bank.reconcile") do
  # Execute block only if authorized
  Stripe::Banking.transactions.reconcile_account(...)
end
```

## Report Sections

### Executive Summary
- Total events and breakdown by module
- High-risk event count
- Unique users
- Report period

### Bank Module Activity
- Total transactions
- Total volume
- High-risk count
- Transaction details with timestamps

### Crypto Module Activity
- Total transactions
- Wallet monitoring summary
- Transaction details with confirmations
- Gas fee tracking

### High Risk Events
- Count and list of high-risk events
- Risk assessment factors
- Associated resources

### Investigator Notes
- Investigator comments linked to resources
- Timestamps and responsible users

### Compliance Summary
- Aggregated metrics by action and risk level
- Module distribution
- Overall compliance status

## Database Schema

### Audit Events (In-Memory)
```
- id: UUID
- user_id: String
- user_name: String
- action: String (create, update, delete, view, reconcile)
- resource_type: String (bank_transaction, crypto_transaction, etc.)
- resource_id: String
- timestamp: DateTime (UTC)
- changes: Hash
- investigator_notes: String
- ip_address: String
- status: String (completed, pending, failed)
- risk_level: String (low, medium, high)
- module_name: String (banking, crypto)
```

### Transaction Models (In-Memory)
Bank Transaction:
```
- id: UUID
- account_id: String
- amount: Numeric
- currency: String
- status: String
- created_at: DateTime
- created_by: String
```

Crypto Transaction:
```
- id: UUID
- wallet_id: String
- transaction_hash: String
- amount: Numeric
- currency: String
- status: String
- confirmations: Integer
- gas_fee: Numeric
- created_at: DateTime
```

## Error Handling

### AccessDeniedError
Raised when a user lacks required permissions:
```ruby
begin
  Stripe::RBAC::Policy.require_permission!("users.manage")
rescue Stripe::RBAC::Policy::AccessDeniedError => e
  puts "Access denied: #{e.message}"
  puts "Required permission: #{e.required_permission}"
  puts "User context: #{e.context}"
end
```

## Security Considerations

1. **Context Isolation**: Each thread has its own context; contexts are cleared automatically in blocks
2. **Immutable Audit Logs**: Audit events are immutable once logged
3. **Permission Hierarchy**: Lower roles cannot grant higher permissions
4. **Data Filtering**: Sensitive data is filtered based on role
5. **Timestamp Tracking**: All operations include UTC timestamps for compliance

## Testing

Comprehensive test suite included in `test/stripe/rbac_audit_test.rb`:
```bash
ruby -I lib test/stripe/rbac_audit_test.rb
```

Tests cover:
- Permission creation and validation
- Role hierarchy and permissions
- Context management
- Policy enforcement
- Banking and crypto operations with RBAC
- Audit logging and querying
- Risk scoring
- Report generation and export
- Full workflow scenarios

## Performance Considerations

1. **Thread-Safe Operations**: Uses Mutex for concurrent access
2. **In-Memory Storage**: Current implementation uses in-memory collections (suitable for testing and small deployments)
3. **Lazy Filtering**: Role-based filtering applied at query time
4. **Efficient Risk Scoring**: Baseline statistics updated incrementally

## Future Enhancements

1. **Database Persistence**: Migrate to database for production scalability
2. **Webhook Integration**: Emit events for external systems
3. **Custom Permissions**: Allow defining custom roles and permissions
4. **Audit Trail Encryption**: Encrypt sensitive audit data
5. **Advanced Reporting**: Real-time dashboard and analytics
6. **API Tokens**: Role-based API token management
7. **2FA Integration**: Multi-factor authentication for sensitive operations

## API Reference

### Stripe::RBAC Module

#### Context Management
- `set_context(user_id:, user_name:, role:, ip_address:, custom_permissions:)` - Set context
- `with_context(...)` - Execute block with context (auto-clear)
- `current_context` - Get current context
- `clear_context` - Clear current context

#### Policy Enforcement
- `Policy.require_permission!(permission)` - Require or raise
- `Policy.can?(permission)` - Check permission
- `Policy.require_any_permission!(*permissions)` - Require one of
- `Policy.can_any?(*permissions)` - Check one of
- `Policy.require_all_permissions!(*permissions)` - Require all
- `Policy.can_all?(*permissions)` - Check all

### Stripe::Audit Module

- `log_event(event)` - Log audit event
- `log_from_context(...)` - Log from current context
- `find_events(...)` - Query events
- `all_events` - Get all events
- `events_by_user(user_id)` - Query by user
- `high_risk_events` - Get high-risk events
- `logger` - Get audit logger instance

### Stripe::Risk Module

- `score_transaction(transaction)` - Score transaction
- `record_transaction(transaction)` - Record for baseline
- `score_for_level(score)` - Get risk level

### Stripe::Banking Module

- `transactions.create_transaction(...)` - Create with RBAC
- `transactions.view_transaction(id)` - View with logging
- `transactions.update_transaction(id, updates)` - Update with RBAC
- `transactions.delete_transaction(id, reason)` - Delete with logging
- `transactions.list_transactions(...)` - List with role-based filtering
- `transactions.reconcile_account(...)` - Reconcile with RBAC

### Stripe::Crypto Module

- `transactions.monitor_wallet(...)` - Monitor wallet
- `transactions.create_transaction(...)` - Create transaction
- `transactions.view_transaction(id)` - View transaction
- `transactions.update_transaction(id, updates)` - Update transaction
- `transactions.delete_transaction(id, reason)` - Delete transaction
- `transactions.list_transactions(...)` - List with filtering
- `transactions.list_wallets(...)` - List monitored wallets

### Stripe::AuditReportGenerator

- `generate_report(start_date:, end_date:, include_sections:, filters:)` - Generate report
- `export_as_json` - Export as JSON
- `export_as_csv` - Export as CSV
- `export_as_pdf(output_path:)` - Export as PDF

## License

This implementation is part of the Stripe Ruby SDK.
