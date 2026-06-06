# QCF Entity Management - Quick Start Guide

## What Was Built

A complete **QCF (Qualified Custody Facilitator) Entity Management System** that connects investment firms as investors and owners, linking their internal and external accounts with full compliance tracking.

### Two Firms Connected:
1. **Perrett and Associates Private Investment Firm** (Owner Role)
2. **Superior Regulation Technology LLC** (Investor Role)

---

## Quick Start - 5 Minute Setup

### Step 1: Initialize with Admin Context
```ruby
require "stripe"

Stripe::RBAC::Context.with_context(
  user_id: "admin_001",
  user_name: "Administrator",
  role: :treasury_manager
) do
  # All operations go here
end
```

### Step 2: Register Your Entities
```ruby
# Register Perrett as Owner
perrett = Stripe::Entity.entities.register_entity(
  entity_id: "entity_perrett_001",
  name: "Perrett and Associates Private Investment Firm",
  entity_type: :firm,
  role: :owner,
  metadata: { jurisdiction: "New York" }
)

# Register Superior as Investor
superior = Stripe::Entity.entities.register_entity(
  entity_id: "entity_superior_001",
  name: "Superior Regulation Technology LLC",
  entity_type: :firm,
  role: :investor,
  metadata: { jurisdiction: "Delaware" }
)
```

### Step 3: Link Internal Accounts
```ruby
# Perrett's USD Operating Account
Stripe::Entity.entities.link_internal_account(
  entity_id: "entity_perrett_001",
  account_id: "acc_perrett_usd_001",
  account_name: "Primary Operating Account",
  account_type: :bank,
  currency: "USD"
)

# Perrett's EUR Reserve Account
Stripe::Entity.entities.link_internal_account(
  entity_id: "entity_perrett_001",
  account_id: "acc_perrett_eur_001",
  account_name: "European Reserve",
  account_type: :bank,
  currency: "EUR"
)
```

### Step 4: Link External Accounts
```ruby
# Link external bank account
Stripe::Entity.entities.link_external_account(
  entity_id: "entity_perrett_001",
  external_account_id: "ext_perrett_chase_001",
  external_name: "Chase Commercial Account",
  provider: :bank,
  currency: "USD"
)

# Verify external account
Stripe::Entity.entities.verify_external_account(
  entity_id: "entity_perrett_001",
  external_account_id: "ext_perrett_chase_001"
)
```

### Step 5: Create Relationships
```ruby
# Create partnership relationship
Stripe::Entity.entities.create_relationship(
  from_entity_id: "entity_perrett_001",
  to_entity_id: "entity_superior_001",
  relationship_type: :partners_with,
  metadata: {
    partnership_type: "Technology Integration",
    investment_amount: 5_000_000
  }
)
```

### Step 6: Generate Compliance Reports
```ruby
Stripe::RBAC::Context.with_context(
  user_id: "compliance_001",
  user_name: "Compliance Officer",
  role: :compliance_officer
) do
  report = Stripe::Entity.entities.generate_qcf_report(
    "entity_perrett_001",
    start_date: Date.today - 30,
    end_date: Date.today
  )

  puts "Report ID: #{report[:report_id]}"
  puts "QCF Route: #{report[:qcf_metadata][:route]}"
  puts "Compliance Status: #{report[:qcf_metadata][:compliance_status]}"
end
```

---

## Common Operations

### View All Entities
```ruby
entities = Stripe::Entity.entities.list_entities
entities.each do |entity|
  puts "#{entity[:name]} (#{entity[:role]})"
end
```

### Filter by Role
```ruby
owners = Stripe::Entity.entities.list_entities(role: :owner)
investors = Stripe::Entity.entities.list_entities(role: :investor)
```

### Get Entity Details
```ruby
entity = Stripe::Entity.entities.get_entity("entity_perrett_001")
puts entity[:name]
puts entity[:metadata][:jurisdiction]
```

### Get All Linked Accounts
```ruby
accounts = Stripe::Entity.entities.get_linked_accounts("entity_perrett_001")
puts "Internal: #{accounts[:internal_accounts].count}"
puts "External: #{accounts[:external_accounts].count}"
```

### Get Entity Relationships
```ruby
relationships = Stripe::Entity.entities.get_relationships("entity_perrett_001")
relationships.each do |rel|
  puts "#{rel[:relationship_type]} with #{rel[:to_entity_id]}"
end
```

---

## Required Roles & Permissions

### To Manage Entities
- **Role**: `treasury_manager`, `owner`
- **Permissions**:
  - `entity.register`
  - `entity.link_account`
  - `entity.manage_relationships`
  - `entity.verify_accounts`

### To View Entities
- **Role**: Any role with `entity.view` permission
- **Default Roles**: `treasury_manager`, `owner`, `compliance_officer`

### To Generate Reports
- **Role**: `compliance_officer` (or higher)
- **Permission**: `entity.view`

---

## Account Status Flow

```
Internal Accounts:
  Created → Active (immediately)

External Accounts:
  Created → Pending Verification → Verified
         (only after verify_external_account call)
```

---

## QCF Compliance Features

Every operation is automatically:
- ✅ Tagged with `route: "QCF"`
- ✅ Marked `classification: "Confidential"`
- ✅ Logged to audit trail
- ✅ Timestamped and tracked

---

## Audit Logging

All actions logged:
```
- Entity registration
- Account linking
- Account verification
- Relationship creation
- Report generation
```

Each log includes user, timestamp, and changes made.

---

## Data Structure

### Entity Object
```ruby
{
  id: "entity_perrett_001",
  name: "Perrett and Associates Private Investment Firm",
  entity_type: :firm,
  role: :owner,
  metadata: {
    qcf_route: "QCF",
    compliance_status: "registered",
    registered_at: Time,
    registered_by: "user_id"
  },
  internal_accounts: [...],
  external_accounts: [...],
  relationships: [...]
}
```

### Account Link Object
```ruby
{
  entity_id: "entity_perrett_001",
  account_id: "acc_perrett_usd_001",
  account_name: "Primary Operating Account",
  account_type: :bank,
  currency: "USD",
  link_type: :internal,  # or :external
  status: "active",      # or "pending_verification", "verified"
  metadata: {...}
}
```

---

## Testing

Run the full test suite:
```bash
bundle exec ruby test_qcf_entity_integration.rb
```

Expected output:
```
✅ QCF Entity Integration Test Suite Complete!
Results: 6 passed, 0 failed
```

---

## Error Handling

```ruby
begin
  Stripe::Entity.entities.register_entity(...)
rescue Stripe::RBAC::Policy::AccessDeniedError => e
  puts "Permission denied: #{e.message}"
rescue StandardError => e
  puts "Error: #{e.message}"
end
```

Common errors:
- `No active context`: Missing RBAC context
- `Permission denied`: User role lacks permission
- `Entity not found`: Invalid entity_id
- `Account not linked`: Invalid account_id

---

## Integration with Other Systems

The entity system integrates with:

1. **Banking** (`Stripe::Banking`): Link to transaction management
2. **RBAC** (`Stripe::RBAC`): Access control and permissions
3. **Audit** (`Stripe::Audit`): Event logging and tracking
4. **Reports** (`Stripe::FinancialReportService`): Compliance reporting
5. **QCF** Framework: Automatic compliance tagging

---

## Key Methods

| Method | Purpose | Permission |
|--------|---------|-----------|
| `register_entity()` | Create new entity | `entity.register` |
| `link_internal_account()` | Add internal account | `entity.link_account` |
| `link_external_account()` | Add external account | `entity.link_account` |
| `verify_external_account()` | Verify external account | `entity.verify_accounts` |
| `create_relationship()` | Link two entities | `entity.manage_relationships` |
| `get_entity()` | Retrieve entity details | `entity.view` |
| `get_linked_accounts()` | Get all accounts | `entity.view` |
| `get_relationships()` | Get entity relationships | `entity.view` |
| `list_entities()` | List all entities | `entity.view` |
| `generate_qcf_report()` | Create compliance report | `entity.view` |

---

## Current System State

```
Entities Registered: 2
├─ Perrett and Associates (Owner)
│  ├─ Internal Accounts: 2 (USD, EUR)
│  └─ External Accounts: 2 (Bank, Wallet)
└─ Superior Regulation Tech (Investor)
   ├─ Internal Accounts: 1 (USD)
   └─ External Accounts: 1 (Bank)

Relationships: 1 (Partnership)
Total Accounts Connected: 6
QCF Compliance: ✅ All Tracked
```

---

## Next Steps

1. **Add More Accounts**: Link additional banks and wallets
2. **Create Relationships**: Link more entities together
3. **Monitor Compliance**: Generate regular QCF reports
4. **Integrate Transactions**: Link to banking and treasury operations
5. **Set Up Permissions**: Configure team roles and access

---

## Support

For issues or questions:
1. Check `/QCF_ENTITY_MANAGEMENT.md` for full documentation
2. Review `test_qcf_entity_integration.rb` for examples
3. Check audit logs for operation history

---

**Ready to manage your investment firms with QCF compliance! 🚀**
