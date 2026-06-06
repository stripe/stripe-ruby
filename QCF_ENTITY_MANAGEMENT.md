# QCF Entity Management System - Integration Guide

## Overview

The QCF (Qualified Custody Facilitator) Entity Management System provides a comprehensive framework for registering and managing investment firms as **Investors** and **Owners**, linking their internal and external accounts, establishing relationships between entities, and generating compliance reports.

## Implemented Integration

This system has been successfully integrated with the Stripe-Ruby SDK to connect:

1. **Perrett and Associates Private Investment Firm** (Owner)
2. **Superior Regulation Technology LLC** (Investor)

## Architecture

### Core Components

#### 1. Entity Manager (`lib/stripe/entity.rb`)
The central module that manages all entity operations:
- Entity registration
- Account linking (internal and external)
- Entity relationships
- QCF compliance reporting

#### 2. RBAC Integration
Three new roles have been added to the RBAC system:
- **Owner**: Full access to entity operations and account management
- **Investor**: View portfolio and account positions with limited transaction access
- **Treasury Manager**: Full system access including entity management (existing role enhanced)

#### 3. Permissions
New entity-specific permissions:
- `entity.view`: View entities and account links
- `entity.register`: Register new entities
- `entity.link_account`: Link accounts to entities
- `entity.manage_relationships`: Create entity relationships
- `entity.verify_accounts`: Verify external accounts

### QCF Compliance Features

All operations are tracked with QCF metadata:
- Route: "QCF" (all operations tagged for QCF route)
- Compliance status tracking
- Document classification (Confidential)
- Audit logging for all operations
- Entity compliance reporting

## Usage Examples

### 1. Register an Entity

```ruby
Stripe::RBAC::Context.with_context(
  user_id: "admin_001",
  user_name: "Administrator",
  role: :treasury_manager
) do
  # Register as Owner
  perrett = Stripe::Entity.entities.register_entity(
    entity_id: "entity_perrett_001",
    name: "Perrett and Associates Private Investment Firm",
    entity_type: :firm,
    role: :owner,
    metadata: {
      establishment_date: "2010-01-15",
      jurisdiction: "New York",
      business_classification: "Private Investment Firm",
    }
  )

  # Register as Investor
  superior = Stripe::Entity.entities.register_entity(
    entity_id: "entity_superior_001",
    name: "Superior Regulation Technology LLC",
    entity_type: :firm,
    role: :investor,
    metadata: {
      establishment_date: "2015-06-20",
      jurisdiction: "Delaware",
      business_classification: "RegTech Provider",
    }
  )
end
```

### 2. Link Internal Accounts

```ruby
Stripe::RBAC::Context.with_context(
  user_id: "admin_001",
  user_name: "Administrator",
  role: :treasury_manager
) do
  # Link USD account for Perrett
  Stripe::Entity.entities.link_internal_account(
    entity_id: "entity_perrett_001",
    account_id: "acc_perrett_usd_001",
    account_name: "Perrett Primary Operating Account",
    account_type: :bank,
    currency: "USD",
    metadata: {
      account_purpose: "operations",
      tier: "primary"
    }
  )

  # Link EUR account for Perrett
  Stripe::Entity.entities.link_internal_account(
    entity_id: "entity_perrett_001",
    account_id: "acc_perrett_eur_001",
    account_name: "Perrett European Reserve",
    account_type: :bank,
    currency: "EUR",
    metadata: {
      account_purpose: "reserves",
      tier: "secondary"
    }
  )
end
```

### 3. Link External Accounts

```ruby
Stripe::RBAC::Context.with_context(
  user_id: "admin_001",
  user_name: "Administrator",
  role: :treasury_manager
) do
  # Link external bank account
  Stripe::Entity.entities.link_external_account(
    entity_id: "entity_perrett_001",
    external_account_id: "ext_perrett_chase_001",
    external_name: "Chase Commercial Account",
    provider: :bank,
    currency: "USD",
    metadata: {
      routing_number_last_4: "0210",
      account_type: "checking"
    }
  )

  # Link crypto wallet
  Stripe::Entity.entities.link_external_account(
    entity_id: "entity_perrett_001",
    external_account_id: "wallet_perrett_ethereum",
    external_name: "Perrett Ethereum Wallet",
    provider: :wallet,
    currency: "ETH",
    metadata: {
      wallet_type: "hardware",
      custody: "cold_storage"
    }
  )

  # Verify external account
  Stripe::Entity.entities.verify_external_account(
    entity_id: "entity_perrett_001",
    external_account_id: "ext_perrett_chase_001"
  )
end
```

### 4. Create Entity Relationships

```ruby
Stripe::RBAC::Context.with_context(
  user_id: "admin_001",
  user_name: "Administrator",
  role: :treasury_manager
) do
  # Create partnership relationship
  Stripe::Entity.entities.create_relationship(
    from_entity_id: "entity_perrett_001",
    to_entity_id: "entity_superior_001",
    relationship_type: :partners_with,
    metadata: {
      partnership_type: "Technology Integration",
      started_date: Date.today.iso8601,
      investment_amount: 5_000_000
    }
  )
end
```

### 5. Generate QCF Compliance Reports

```ruby
Stripe::RBAC::Context.with_context(
  user_id: "compliance_001",
  user_name: "Compliance Officer",
  role: :compliance_officer
) do
  # Generate report for Perrett
  report = Stripe::Entity.entities.generate_qcf_report(
    "entity_perrett_001",
    start_date: Date.today - 30,
    end_date: Date.today
  )

  # Report structure:
  # {
  #   report_id: "...",
  #   entity_id: "entity_perrett_001",
  #   entity_name: "Perrett and Associates Private Investment Firm",
  #   entity_type: :firm,
  #   role: :owner,
  #   report_period: { start_date: ..., end_date: ... },
  #   internal_accounts: [
  #     { id: "acc_perrett_usd_001", name: "...", type: :bank, status: "active" },
  #     { id: "acc_perrett_eur_001", name: "...", type: :bank, status: "active" }
  #   ],
  #   external_accounts: [
  #     { id: "ext_perrett_chase_001", name: "...", provider: :bank, status: "verified" },
  #     { id: "wallet_perrett_ethereum", name: "...", provider: :wallet, status: "pending_verification" }
  #   ],
  #   relationships: [
  #     { with: "entity_superior_001", type: :partners_with, status: "active" }
  #   ],
  #   qcf_metadata: {
  #     route: "QCF",
  #     compliance_status: "registered",
  #     registered_at: "...",
  #     document_type: "Entity Compliance Report",
  #     classification: "Confidential"
  #   },
  #   generated_at: "...",
  #   generated_by: "compliance_001"
  # }
end
```

### 6. Query Entity Information

```ruby
Stripe::RBAC::Context.with_context(
  user_id: "admin_001",
  user_name: "Administrator",
  role: :treasury_manager
) do
  # Get specific entity
  entity = Stripe::Entity.entities.get_entity("entity_perrett_001")

  # Get all linked accounts
  accounts = Stripe::Entity.entities.get_linked_accounts("entity_perrett_001")
  # Returns: {
  #   entity_id: "entity_perrett_001",
  #   internal_accounts: [...],
  #   external_accounts: [...]
  # }

  # Get relationships
  relationships = Stripe::Entity.entities.get_relationships("entity_perrett_001")

  # List all entities
  all_entities = Stripe::Entity.entities.list_entities

  # Filter by role
  owners = Stripe::Entity.entities.list_entities(role: :owner)
  investors = Stripe::Entity.entities.list_entities(role: :investor)
end
```

## Account Structure

### Perrett and Associates Private Investment Firm (Owner)
```
Internal Accounts:
  - acc_perrett_usd_001: "Perrett Primary Operating Account" (USD, bank)
  - acc_perrett_eur_001: "Perrett European Reserve" (EUR, bank)

External Accounts:
  - ext_perrett_chase_001: "Chase Commercial Account" (USD, bank, verified)
  - wallet_perrett_ethereum: "Perrett Ethereum Wallet" (ETH, wallet)

Relationships:
  - Partners with Superior Regulation Technology LLC
```

### Superior Regulation Technology LLC (Investor)
```
Internal Accounts:
  - acc_superior_usd_001: "Superior Operations Account" (USD, bank)

External Accounts:
  - ext_superior_wells_001: "Wells Fargo Treasury Account" (USD, bank)

Relationships:
  - Partnered by Perrett and Associates Private Investment Firm
```

## Account Status Tracking

### Internal Accounts
- **Status**: Always `active` upon linking

### External Accounts
- **Status**: `pending_verification` (default)
- **Status**: `verified` (after verification process)

## QCF Compliance Routing

All operations in the entity management system are automatically tagged with:
- **Route**: "QCF" (Qualified Custody Facilitator)
- **Classification**: "Confidential"
- **Document Type**: "Entity Compliance Report"

This ensures all entity management activities are properly tracked within the QCF compliance framework.

## Audit Logging

All entity operations are automatically logged to the audit system:
- Entity registration
- Account linking (internal and external)
- Account verification
- Relationship creation
- Report generation

Each audit log entry includes:
- Action type
- Resource type and ID
- User who performed the action
- Timestamp
- Changes made
- QCF routing information

## Testing

Run the comprehensive test suite:

```bash
bundle exec ruby test_qcf_entity_integration.rb
```

This validates:
1. Entity registration for both firms
2. Internal account linking (3 accounts total)
3. External account linking and verification (3 accounts total)
4. Entity relationships (partnership)
5. QCF compliance report generation
6. Multi-entity operations and querying

## Permissions by Role

### Treasury Manager
- View, register, link, and manage entities
- Create entity relationships
- Verify external accounts
- Full system access

### Investor
- View entities and account links
- View portfolio and account positions
- Read reports

### Owner (Role for Entity)
- View entities and account links
- Create and edit transactions
- Manage reconciliation
- View risk scores
- Create and manage relationships
- Verify external accounts

### Compliance Officer (Enhanced)
- View entities and account links (new)
- View all audit logs and reports
- Generate compliance reports
- Export entity data

## Integration with Existing Modules

The entity management system integrates seamlessly with:

1. **Banking Module**: Links to bank accounts and transactions
2. **RBAC System**: Uses permissions and roles for access control
3. **Audit System**: Logs all operations with compliance tags
4. **Financial Reporting**: Can generate reports including entity information
5. **QCF Framework**: All operations tagged for QCF compliance

## Next Steps

The system is now ready for:
1. Integration with external account verification services
2. Automated compliance reporting generation
3. Multi-entity transaction processing
4. Cross-entity fund flows and settlements
5. Real-time entity risk scoring
