# frozen_string_literal: true

require "stripe"
require "date"
require "benchmark"
require "json"

class TreasurySystemTest
  def initialize
    @results = {}
    @errors = []
  end

  def run_all_tests
    puts "\n" + ("=" * 80)
    puts "TREASURY COMPLIANCE FRAMEWORK (QCF) - COMPREHENSIVE TEST SUITE"
    puts "=" * 80

    test_treasury_bank_portal
    test_reconciliation_engine
    test_regulatory_filing
    test_analytics
    test_executive_overview
    test_hedging_analyzer
    test_financial_reports
    test_integration
    test_memory_footprint
    test_performance

    print_summary
  end

  private

  def test_treasury_bank_portal
    puts "\n[1/8] Testing Treasury Bank Portal..."

    begin
      time = Benchmark.measure do
        portal = Stripe::TreasuryBankPortal.new(:plaid, api_key: "test")
        @plaid_portal = portal

        txns = portal.fetch_transactions(limit: 10)
        assert txns.count == 10, "Should fetch 10 transactions"

        portal.switch_adapter(:bank_api, currency: "EUR")
        @bank_api_portal = portal

        history = portal.audit_history
        assert history.count > 0, "Should have audit entries"
      end

      @results[:portal] = { status: :pass, time: time.real }
      puts "  ✓ Portal tests passed (#{(time.real * 1000).round(2)}ms)"
    rescue StandardError => e
      @errors << "Portal: #{e.message}"
      @results[:portal] = { status: :fail, error: e.message }
      puts "  ✗ Portal tests failed: #{e.message}"
    end
  end

  def test_reconciliation_engine
    puts "\n[2/8] Testing Reconciliation Engine..."

    begin
      time = Benchmark.measure do
        recon = Stripe::TreasuryReconciliation.new

        # Create test transactions
        transactions = 50.times.map do |i|
          {
            id: "txn_#{i}",
            amount: rand(100..10_000),
            currency: "USD",
            timestamp: (Time.now.utc - rand(0..86_400)).iso8601,
          }
        end

        # Create ledger with some intentional discrepancies
        ledger = transactions.map.with_index do |t, idx|
          amount = t[:amount]
          amount += 100 if idx % 7 == 0
          { transaction_id: t[:id], amount: amount, currency: t[:currency] }
        end

        # Add extra ledger entry
        ledger << { transaction_id: "extra_123", amount: 5000, currency: "USD" }

        stats = recon.reconcile(transactions, ledger)
        assert stats[:discrepancy_count] > 0, "Should detect discrepancies"

        # Resolve some discrepancies
        discs = recon.get_discrepancies(status: :open)
        discs.first(3).each { |d| recon.resolve_discrepancy(d.id, "Verified") }

        resolved_count = recon.get_discrepancies(status: :resolved).count
        assert resolved_count >= 3, "Should have at least 3 resolved"
      end

      @results[:reconciliation] = { status: :pass, time: time.real }
      puts "  ✓ Reconciliation tests passed (#{(time.real * 1000).round(2)}ms)"
    rescue StandardError => e
      @errors << "Reconciliation: #{e.message}"
      @results[:reconciliation] = { status: :fail, error: e.message }
      puts "  ✗ Reconciliation tests failed: #{e.message}"
    end
  end

  def test_regulatory_filing
    puts "\n[3/8] Testing Regulatory Filing..."

    begin
      time = Benchmark.measure do
        report = {
          period: "Q1 2026",
          transactions: 1000,
          volume: 5_000_000,
          discrepancies: 12,
        }

        filing = Stripe::RegulatoryFilingService.prepare_filing(report, "US_SEC")
        assert filing.status == :draft, "Filing should be in draft status"

        result = Stripe::RegulatoryFilingService.submit_filing(filing)
        assert result[:success], "Filing should succeed"
        assert result[:tracking_number].include?("REG_"), "Tracking number format"

        audit_chain = filing.audit_chain
        assert audit_chain.count > 0, "Should have audit entries"
      end

      @results[:filing] = { status: :pass, time: time.real }
      puts "  ✓ Filing tests passed (#{(time.real * 1000).round(2)}ms)"
    rescue StandardError => e
      @errors << "Filing: #{e.message}"
      @results[:filing] = { status: :fail, error: e.message }
      puts "  ✗ Filing tests failed: #{e.message}"
    end
  end

  def test_analytics
    puts "\n[4/8] Testing Analytics Engine..."

    begin
      time = Benchmark.measure do
        portal = Stripe::TreasuryBankPortal.new(:bank_api)

        # Get transactions
        transactions = portal.fetch_transactions(limit: 50)
        transactions_with_cp = transactions.map do |t|
          t.merge(counterparty: %w[Acme TechCorp Global][rand(0..2)])
        end

        # Generate analytics
        start_date = Date.today - 30
        end_date = Date.today

        cashflow = Stripe::TreasuryAnalytics.analyze_cashflow(transactions_with_cp, start_date, end_date)
        assert cashflow.is_a?(Hash), "Cashflow should be a hash"

        exposure = Stripe::TreasuryAnalytics.analyze_counterparty_exposure(transactions_with_cp)
        assert exposure.count > 0, "Should have counterparty exposure"

        dashboard = Stripe::TreasuryAnalytics.generate_dashboard_data(portal, start_date, end_date)
        assert dashboard[:generated_at], "Dashboard should have timestamp"
      end

      @results[:analytics] = { status: :pass, time: time.real }
      puts "  ✓ Analytics tests passed (#{(time.real * 1000).round(2)}ms)"
    rescue StandardError => e
      @errors << "Analytics: #{e.message}"
      @results[:analytics] = { status: :fail, error: e.message }
      puts "  ✗ Analytics tests failed: #{e.message}"
    end
  end

  def test_executive_overview
    puts "\n[5/8] Testing Executive Overview Dashboard..."

    begin
      time = Benchmark.measure do
        # Initialize executive overview with portal
        portal = Stripe::TreasuryBankPortal.new(:plaid)
        Stripe::ExecutiveOverview.set_global_portal(portal)

        overview = Stripe::ExecutiveOverview.new(portal)

        # Test balance refresh
        balances = overview.refresh_balances
        assert balances.is_a?(Hash), "Should return balances hash"

        # Test total liquidity
        liquidity = overview.total_liquidity
        assert liquidity.is_a?(Hash), "Total liquidity should be hash"

        # Test daily position
        daily_pos = overview.net_daily_position
        assert daily_pos.is_a?(Hash), "Daily position should be hash"

        # Test currency exposure
        exposure = overview.currency_exposure
        assert exposure.is_a?(Hash), "Currency exposure should be hash"
        assert exposure.values.all? { |v| v.is_a?(Hash) }, "Exposure values should be hashes"

        # Test account summary
        accounts = overview.account_summary
        assert accounts.is_a?(Hash), "Account summary should be hash"

        # Test executive summary report
        report = overview.executive_summary_report
        assert report[:report_generated_at], "Report should have timestamp"
        assert report[:liquidity_summary], "Report should have liquidity summary"
        assert report[:daily_cash_position], "Report should have daily position"
        assert report[:currency_exposure], "Report should have currency exposure"
        assert report[:risk_metrics], "Report should have risk metrics"

        # Test dashboard generation
        dashboard = overview.generate_dashboard
        assert dashboard[:timestamp], "Dashboard should have timestamp"
        assert dashboard[:key_metrics], "Dashboard should have key metrics"
        assert dashboard[:account_details], "Dashboard should have account details"
        assert dashboard[:alerts], "Dashboard should have alerts array"

        # Test export formats
        json_export = overview.export_report(format: :json)
        assert json_export.is_a?(String), "JSON export should be string"

        text_export = overview.export_report(format: :text)
        assert text_export.include?("EXECUTIVE OVERVIEW REPORT"), "Text export should have header"

        csv_export = overview.export_report(format: :csv)
        assert csv_export.include?("Total Liquidity"), "CSV export should have content"
      end

      @results[:executive_overview] = { status: :pass, time: time.real }
      puts "  ✓ Executive Overview tests passed (#{(time.real * 1000).round(2)}ms)"
    rescue StandardError => e
      @errors << "Executive Overview: #{e.message}"
      @results[:executive_overview] = { status: :fail, error: e.message }
      puts "  ✗ Executive Overview tests failed: #{e.message}"
    end
  end

  def test_hedging_analyzer
    puts "\n[6/10] Testing Hedging Analyzer..."

    begin
      time = Benchmark.measure do
        # Initialize hedging analyzer
        portal = Stripe::TreasuryBankPortal.new(:plaid)
        Stripe::ExecutiveOverview.set_global_portal(portal)
        overview = Stripe::ExecutiveOverview.new(portal)

        hedger = Stripe::HedgingAnalyzer.new(overview)

        # Test FX exposure analysis
        fx_analysis = hedger.analyze_fx_exposure
        assert fx_analysis.is_a?(Hash), "FX analysis should be hash"
        assert fx_analysis[:by_currency], "Should have currency breakdown"
        assert fx_analysis[:risk_metrics], "Should have risk metrics"

        # Test optimal hedging calculation
        optimal_hedges = hedger.calculate_optimal_hedges(target_concentration: 30)
        assert optimal_hedges.is_a?(Hash), "Optimal hedges should be hash"

        # Test what-if scenario
        scenario = hedger.simulate_allocation_change({ "EUR" => 100_000, "GBP" => 50_000 })
        assert scenario.is_a?(Hash), "Scenario should be hash"
        assert scenario[:current_state], "Should have current state"
        assert scenario[:projected_state], "Should have projected state"
        assert scenario[:impact_analysis], "Should have impact analysis"

        # Test scenario retrieval
        scenarios = hedger.get_scenarios
        assert scenarios.is_a?(Array), "Scenarios should be array"

        # Test hedging recommendation report
        report = hedger.generate_hedging_recommendation
        assert report[:executive_summary], "Report should have executive summary"
        assert report[:current_exposure], "Report should have exposure data"
        assert report[:implementation_roadmap], "Report should have implementation plan"
      end

      @results[:hedging_analyzer] = { status: :pass, time: time.real }
      puts "  ✓ Hedging Analyzer tests passed (#{(time.real * 1000).round(2)}ms)"
    rescue StandardError => e
      @errors << "Hedging Analyzer: #{e.message}"
      @results[:hedging_analyzer] = { status: :fail, error: e.message }
      puts "  ✗ Hedging Analyzer tests failed: #{e.message}"
    end
  end

  def test_financial_reports
    puts "\n[7/10] Testing Financial Report Service..."

    begin
      time = Benchmark.measure do
        # Initialize services
        portal = Stripe::TreasuryBankPortal.new(:plaid)
        Stripe::ExecutiveOverview.set_global_portal(portal)
        overview = Stripe::ExecutiveOverview.new(portal)
        recon = Stripe::TreasuryReconciliation.new

        report_service = Stripe::FinancialReportService.new(overview, recon)

        # Test comprehensive report generation
        start_date = Date.today - 7
        end_date = Date.today

        report = report_service.generate_report(start_date: start_date, end_date: end_date)
        assert report.is_a?(Hash), "Report should be hash"
        assert report[:report_id], "Report should have ID"
        assert report[:sections], "Report should have sections"
        assert report[:metadata], "Report should have metadata"

        # Test text export
        text_export = report_service.export_as_text(start_date: start_date, end_date: end_date)
        assert text_export.is_a?(String), "Text export should be string"
        assert text_export.include?("TREASURY FINANCIAL REPORT"), "Should have report header"

        # Test HTML export
        html_export = report_service.export_as_html(start_date: start_date, end_date: end_date)
        assert html_export.is_a?(String), "HTML export should be string"
        assert html_export.include?("<!DOCTYPE html>"), "Should be valid HTML"

        # Test JSON export
        json_export = report_service.export_as_json(start_date: start_date, end_date: end_date)
        assert json_export.is_a?(String), "JSON export should be string"
        json_data = JSON.parse(json_export)
        assert json_data.is_a?(Hash), "Parsed JSON should be hash"

        # Test CSV export
        csv_export = report_service.export_as_csv(start_date: start_date, end_date: end_date)
        assert csv_export.is_a?(String), "CSV export should be string"
        assert csv_export.include?("Currency"), "CSV should have headers"

        # Test PDF export
        pdf_result = report_service.export_as_pdf(start_date: start_date, end_date: end_date)
        assert pdf_result[:success], "PDF export should succeed"
        assert pdf_result[:filepath], "PDF should have filepath"
        assert File.exist?(pdf_result[:filepath]), "PDF file should exist"
      end

      @results[:financial_reports] = { status: :pass, time: time.real }
      puts "  ✓ Financial Report tests passed (#{(time.real * 1000).round(2)}ms)"
    rescue StandardError => e
      @errors << "Financial Reports: #{e.message}"
      @results[:financial_reports] = { status: :fail, error: e.message }
      puts "  ✗ Financial Report tests failed: #{e.message}"
    end
  end

  def test_integration
    puts "\n[8/10] Testing Full Integration..."

    begin
      time = Benchmark.measure do
        # Create portal with plaid
        portal = Stripe::TreasuryBankPortal.new(:plaid)

        # Fetch transactions
        transactions = portal.fetch_transactions(limit: 20)

        # Create reconciliation
        recon = Stripe::TreasuryReconciliation.new
        ledger = transactions.map { |t| { transaction_id: t[:id], amount: t[:amount], currency: t[:currency] } }
        stats = recon.reconcile(transactions, ledger)

        # Create and submit filing
        report = { transactions: stats[:matched], discrepancies: stats[:discrepancy_count] }
        filing = Stripe::RegulatoryFilingService.prepare_filing(report, "US_FinCEN")
        filing_result = Stripe::RegulatoryFilingService.submit_filing(filing)

        # Generate analytics
        dashboard = Stripe::TreasuryAnalytics.generate_dashboard_data(portal, Date.today - 7, Date.today)

        assert filing_result[:success], "Full workflow should succeed"
      end

      @results[:integration] = { status: :pass, time: time.real }
      puts "  ✓ Integration tests passed (#{(time.real * 1000).round(2)}ms)"
    rescue StandardError => e
      @errors << "Integration: #{e.message}"
      @results[:integration] = { status: :fail, error: e.message }
      puts "  ✗ Integration tests failed: #{e.message}"
    end
  end

  def test_memory_footprint
    puts "\n[9/10] Testing Memory Footprint..."

    begin
      # Get initial memory
      initial_mem = `ps -o rss= -p #{Process.pid}`.strip.to_i

      # Create multiple portals and operations
      100.times do
        portal = Stripe::TreasuryBankPortal.new(:plaid)
        portal.fetch_transactions(limit: 5)
      end

      # Get final memory
      final_mem = `ps -o rss= -p #{Process.pid}`.strip.to_i
      mem_increase = final_mem - initial_mem

      @results[:memory] = { status: :pass, increase_kb: mem_increase }
      puts "  ✓ Memory test completed (Delta: #{mem_increase}KB)"
    rescue StandardError => e
      @errors << "Memory: #{e.message}"
      @results[:memory] = { status: :fail, error: e.message }
      puts "  ✗ Memory test failed: #{e.message}"
    end
  end

  def test_performance
    puts "\n[10/10] Testing Performance Benchmarks..."

    begin
      perf_results = {}

      # Benchmark portal initialization
      time = Benchmark.measure { Stripe::TreasuryBankPortal.new(:plaid) }
      perf_results[:portal_init] = (time.real * 1000).round(2)

      # Benchmark transaction fetch
      portal = Stripe::TreasuryBankPortal.new(:plaid)
      time = Benchmark.measure { portal.fetch_transactions(limit: 100) }
      perf_results[:fetch_100_txns] = (time.real * 1000).round(2)

      # Benchmark reconciliation
      transactions = 100.times.map { |i| { id: "t#{i}", amount: rand(1000..10_000), currency: "USD" } }
      ledger = transactions.map { |t| { transaction_id: t[:id], amount: t[:amount], currency: t[:currency] } }
      recon = Stripe::TreasuryReconciliation.new
      time = Benchmark.measure { recon.reconcile(transactions, ledger) }
      perf_results[:reconcile_100] = (time.real * 1000).round(2)

      @results[:performance] = { status: :pass, benchmarks: perf_results }
      puts "  ✓ Performance benchmarks:"
      perf_results.each { |k, v| puts "    - #{k}: #{v}ms" }
    rescue StandardError => e
      @errors << "Performance: #{e.message}"
      @results[:performance] = { status: :fail, error: e.message }
      puts "  ✗ Performance tests failed: #{e.message}"
    end
  end

  def print_summary
    puts "\n" + ("=" * 80)
    puts "TEST SUMMARY"
    puts "=" * 80

    passed = @results.count { |_, r| r[:status] == :pass }
    failed = @results.count { |_, r| r[:status] == :fail }

    puts "\nResults: #{passed} passed, #{failed} failed"

    if @errors.any?
      puts "\nErrors Encountered:"
      @errors.each { |err| puts "  - #{err}" }
    else
      puts "\n✓ All tests passed successfully!"
    end

    puts "\nPerformance Summary:"
    @results.each do |test, result|
      if result[:time]
        puts "  - #{test}: #{(result[:time] * 1000).round(2)}ms"
      elsif result[:benchmarks]
        result[:benchmarks].each { |k, v| puts "  - #{test}/#{k}: #{v}ms" }
      end
    end

    puts "\n" + ("=" * 80)
  end

  def assert(condition, message)
    raise message unless condition
  end
end

# Run the test suite
TreasurySystemTest.new.run_all_tests
