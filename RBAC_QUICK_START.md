# RBAC & Audit System - Quick Start Guide

## Installation & Setup

No additional installation needed - all components are built into the Stripe Ruby SDK.

```ruby
require 'stripe'
```

## Quick Examples

### 1. Set User Context

```ruby
# Set context for a user operation
Stripe::RBAC.set_context(
  user_id: "user_123",
  user_name: "Alice Johnson",
  role: :treasury_manager  # :auditor, :compliance_officer, :treasury_manager
)

# Or use a block (auto-clears when done)
Stripe::RBAC.with_context(
  user_id: "user_456",
  user_name: "Bob Smith",
  role: :compliance_officer
) do
  # Do operations here
end
```

### 2. Create Bank Transaction with RBAC

```ruby
Stripe::RBAC.with_context(
  user_id: "tm_001",
  user_name: "Treasury Manager",
  role: :treasury_manager
) do
  transaction = Stripe::Banking.transactions.create_transaction(
    account_id: "acc_123",
    amount: 50_000,
    currency: "USD",
    description: "Wire transfer"
  )
  puts "Transaction created: #{transaction[:id]}"
end
```

### 3. Monitor Crypto Wallet

```ruby
Stripe::RBAC.with_context(
  user_id: "tm_001",
  user_name: "Treasury Manager",
  role: :treasury_manager
) do
  wallet = Stripe::Crypto.transactions.monitor_wallet(
    wallet_address: "0x742d35Cc6634C0532925a3b844Bc93e65c5f6E",
    blockchain: "ethereum",
    label: "Main Treasury"
  )
  puts "Wallet monitored: #{wallet[:id]}"
end
```

### 4. Generate Audit Report

```ruby
Stripe::RBAC.with_context(
  user_id: "co_001",
  user_name: "Compliance Officer",
  role: :compliance_officer
) do
  # Generate report
  report = Stripe::audit_reports.generate_report(
    start_date: Date.today - 30,
    end_date: Date.today
  )

  # Export as JSON
  json = Stripe::audit_reports.export_as_json

  # Export as CSV
  csv = Stripe::audit_reports.export_as_csv

  # Export as PDF
  result = Stripe::audit_reports.export_as_pdf(
    output_path: "/tmp/audit_report.pdf"
  )
  puts "Report saved: #{result[:filepath]}"
end
```

### 5. Check Permissions

```ruby
# Check if user has permission
if Stripe::RBAC::Policy.can?("bank.create")
  puts "User can create bank transactions"
end

# Require permission or raise error
Stripe::RBAC::Policy.require_permission!("reports.audit_create")

# Check multiple permissions
if Stripe::RBAC::Policy.can_any?("bank.create", "crypto.create")
  puts "User can create transactions"
end
```

### 6. Log Audit Events

```ruby
Stripe::RBAC.with_context(
  user_id: "user_123",
  user_name: "Alice",
  role: :compliance_officer
) do
  # Automatically logged with every operation
  Stripe::Banking.transactions.create_transaction(
    account_id: "acc_1",
    amount: 1000
  )

  # Or manually log an event
  Stripe::Audit.log_from_context(
    action: "review",
    resource_type: "bank_transaction",
    resource_id: "txn_123",
    investigator_notes: "Transaction approved after verification",
    module_name: "banking",
    risk_level: "low"
  )
end
```

### 7. Query Audit Events

```ruby
# Get all high-risk events
high_risk = Stripe::Audit.high_risk_events
puts "High-risk events: #{high_risk.count}"

# Find specific events
events = Stripe::Audit.find_events(
  user_id: "user_123",
  resource_type: "bank_transaction",
  start_time: Date.today - 7,
  end_time: Date.today
)

events.each do |event|
  puts "#{event.timestamp}: #{event.action} by #{event.user_name}"
end
```

### 8. Risk Scoring

```ruby
transaction = {
  amount: 250_000,
  currency: "USD",
  counterparty_new: true,
  country: "US",
  is_bulk: false,
  compliance_flag: false
}

result = Stripe::Risk.score_transaction(transaction)
puts "Risk Score: #{result[:score]}/100 - #{result[:level]}"

result[:factors].each do |factor, score|
  puts "  • #{factor}: +#{score}"
end
```

## Role Summary

| Role | Can View? | Can Edit? | Can Create Reports? | Can Manage Users? |
|------|-----------|-----------|---------------------|-------------------|
| **Auditor** | ✓ (limited) | ✗ | ✗ | ✗ |
| **Compliance Officer** | ✓ (full) | ✓ | ✓ | ✗ |
| **Treasury Manager** | ✓ (full) | ✓ (all) | ✓ | ✓ |

## Permission Categories

| Category | Permissions |
|----------|-------------|
| **Audit** | audit.view, audit.create, audit.export |
| **Banking** | bank.view, bank.create, bank.edit, bank.delete, bank.reconcile |
| **Crypto** | crypto.view, crypto.create, crypto.edit, crypto.delete, crypto.monitor_wallets |
| **Reports** | reports.view, reports.create, reports.audit_create, reports.export |
| **Risk** | risk.view, risk.assign |
| **Users** | users.view, users.manage |

## Common Patterns

### Pattern 1: Conditional Execution Based on Role

```ruby
context = Stripe::RBAC::Context.current

if context.has_permission?("users.manage")
  # Admin-only code
  manage_users()
elsif context.has_permission?("reports.create")
  # Compliance officer code
  create_report()
else
  # Auditor code
  view_reports()
end
```

### Pattern 2: Role-Based API Response

```ruby
transactions = Stripe::Banking.transactions.list_transactions(account_id: "acc_1")

case Stripe::RBAC::Context.current.role.key
when :auditor
  # Return summary view
  render json: transactions.map { |t| { id: t[:id], amount: t[:amount] } }
when :compliance_officer
  # Return full details except internal metadata
  render json: transactions
when :treasury_manager
  # Return everything
  render json: transactions
end
```

### Pattern 3: Authorization Middleware

```ruby
def require_permission(permission)
  Stripe::RBAC::Policy.require_permission!(permission)
rescue Stripe::RBAC::Policy::AccessDeniedError => e
  render json: { error: e.message }, status: :forbidden
end

# Use in controller
def create_transaction
  require_permission("bank.create")
  # Process transaction
end
```

### Pattern 4: Multi-Step Verification

```ruby
def verify_and_create(transaction_data)
  # Step 1: Check permission
  Stripe::RBAC::Policy.require_permission!("bank.create")

  # Step 2: Create transaction
  txn = Stripe::Banking.transactions.create_transaction(**transaction_data)

  # Step 3: Log with investigator notes (if compliance officer)
  if Stripe::RBAC::Policy.can?("audit.create")
    Stripe::Audit.log_from_context(
      action: "create",
      resource_type: "bank_transaction",
      resource_id: txn[:id],
      investigator_notes: "Verified and created",
      module_name: "banking",
      risk_level: calculate_risk(txn)
    )
  end

  txn
end
```

## Error Handling

```ruby
begin
  Stripe::RBAC::Policy.require_permission!("users.manage")
rescue Stripe::RBAC::Policy::AccessDeniedError => e
  puts "Access Denied: #{e.message}"
  puts "Required: #{e.required_permission}"
  puts "Your role: #{e.context.role.key}"
end
```

## Testing RBAC-Protected Code

```ruby
def test_bank_create_requires_permission
  # Test as auditor (should fail)
  assert_raises(Stripe::RBAC::Policy::AccessDeniedError) do
    Stripe::RBAC.with_context(
      user_id: "test",
      user_name: "Test Auditor",
      role: :auditor
    ) do
      Stripe::Banking.transactions.create_transaction(
        account_id: "acc_1",
        amount: 1000
      )
    end
  end

  # Test as treasury manager (should succeed)
  result = nil
  Stripe::RBAC.with_context(
    user_id: "test",
    user_name: "Test Manager",
    role: :treasury_manager
  ) do
    result = Stripe::Banking.transactions.create_transaction(
      account_id: "acc_1",
      amount: 1000
    )
  end

  assert result[:id]
end
```

## Report Export Formats

### JSON
```ruby
json = Stripe::audit_reports.export_as_json
# Pretty-printed JSON with all details
```

### CSV
```ruby
csv = Stripe::audit_reports.export_as_csv
File.write("audit_report.csv", csv)
```

### PDF (requires Prawn gem)
```ruby
result = Stripe::audit_reports.export_as_pdf(output_path: "/tmp/report.pdf")
if result[:success]
  puts "PDF created: #{result[:filepath]} (#{result[:size]} bytes)"
end
```

## Troubleshooting

### "No active context" Error
```ruby
# ✗ Wrong - no context set
Stripe::Banking.transactions.create_transaction(...)

# ✓ Correct - set context first
Stripe::RBAC.with_context(user_id: "u1", user_name: "Alice", role: :treasury_manager) do
  Stripe::Banking.transactions.create_transaction(...)
end
```

### "Permission X required" Error
```ruby
# Check current permissions
context = Stripe::RBAC::Context.current
puts "Current role: #{context.role.key}"
puts "Permissions: #{context.role.permissions.map(&:to_s).join(', ')}"

# Use audit role for read-only access
Stripe::RBAC.set_context(user_id: "u1", user_name: "Alice", role: :auditor)
```

### Context Not Clearing
```ruby
# Manual cleanup
Stripe::RBAC.clear_context

# Or use block (auto-clears)
Stripe::RBAC.with_context(...) do
  # Context automatically cleared here
end
```

## For More Information

See `RBAC_AUDIT_GUIDE.md` for comprehensive documentation.
