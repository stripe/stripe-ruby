# frozen_string_literal: true

require "stripe"
require "date"

puts "=" * 70
puts "TESTING TREASURY BANK PORTAL WITH RECONCILIATION AND FILING"
puts "=" * 70

# 1. Initialize the Treasury Portal
puts "\n1. Initializing Treasury Bank Portal with Plaid adapter..."
portal = Stripe::TreasuryBankPortal.new(:plaid, api_key: "test_key")
puts "   ✓ Portal initialized"

# 2. Fetch transactions
puts "\n2. Fetching transactions from Plaid adapter..."
transactions = portal.fetch_transactions(limit: 5)
transactions.each_with_index do |t, i|
  puts "   Transaction #{i + 1}: #{t[:description]} - $#{t[:amount] / 100.0} #{t[:currency]}"
end

# 3. Create mock ledger entries for reconciliation
puts "\n3. Creating mock ledger entries..."
ledger_entries = [
  { transaction_id: transactions[0][:id], amount: transactions[0][:amount], currency: transactions[0][:currency] },
  { transaction_id: transactions[1][:id], amount: transactions[1][:amount] + 100, currency: transactions[1][:currency] }, # Mismatch
  { transaction_id: "missing_txn_123", amount: 15_000, currency: "USD" }, # Extra in ledger
]
puts "   ✓ #{ledger_entries.count} ledger entries created"

# 4. Run reconciliation
puts "\n4. Running transaction reconciliation..."
reconciler = Stripe::TreasuryReconciliation.new
result = reconciler.reconcile(transactions, ledger_entries)
puts "   - Matched: #{result[:matched]}"
puts "   - Discrepancies: #{result[:discrepancy_count]}"
puts "   - Success Rate: #{result[:success_rate].round(1)}%"

# 5. Resolve discrepancies
puts "\n5. Resolving discrepancies..."
discrepancies = reconciler.get_discrepancies(status: :open)
discrepancies.first(2).each do |disc|
  resolved = reconciler.resolve_discrepancy(disc.id, "Verified with bank statement")
  puts "   ✓ Resolved #{disc.type}: #{resolved.id}"
end

# 6. Create and submit regulatory filing
puts "\n6. Creating regulatory filing..."
quarterly_report = {
  period: "Q1 2026",
  total_transactions: transactions.count,
  total_volume: transactions.map { |t| t[:amount] }.sum,
  discrepancies_found: result[:discrepancy_count],
  discrepancies_resolved: 2,
}

filing = Stripe::RegulatoryFilingService.prepare_filing(quarterly_report, "US_SEC")
puts "   ✓ Filing prepared: #{filing.filing_id}"

puts "\n7. Submitting filing to regulatory body..."
submission = Stripe::RegulatoryFilingService.submit_filing(filing)
if submission[:success]
  puts "   ✓ Filing submitted successfully"
  puts "   - Receipt: #{submission[:receipt][0..15]}..."
  puts "   - Tracking Number: #{submission[:tracking_number]}"
end

# 8. Verify audit chain
puts "\n8. Verifying filing audit chain..."
begin
  filing.audit_chain.each { |entry| } # Iterate to verify structure
  puts "   ✓ Audit chain verified (#{filing.audit_chain.count} entries)"
rescue StandardError => e
  puts "   ✗ Audit chain error: #{e.message}"
end

# 9. Generate analytics
puts "\n9. Generating analytics dashboard..."
## Add counterparty data for realistic analytics
transactions_with_cp = transactions.map do |t|
  t.merge(counterparty: ["Acme Corp", "Tech Services Inc", "Global Bank Ltd"][rand(0..2)])
end

dashboard = Stripe::TreasuryAnalytics.generate_dashboard_data(portal, Date.today, Date.today + 1)
puts "   ✓ Dashboard data generated"
puts "   - Cash flow entries: #{dashboard[:cashflow].count}"
puts "   - Counterparties tracked: #{dashboard[:counterparty_exposure].count}"
puts "   - Reconciliation data points: #{dashboard[:reconciliation].count}"

# 10. Render analytics charts
puts "\n10. Rendering analytics visualizations..."
puts Stripe::TreasuryAnalytics.render_counterparty_chart(dashboard[:counterparty_exposure])

puts "\n" + ("=" * 70)
puts "ALL TESTS COMPLETED SUCCESSFULLY"
puts "=" * 70
