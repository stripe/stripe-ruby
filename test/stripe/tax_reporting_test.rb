# frozen_string_literal: true

require "minitest/autorun"
require "stripe"
require "date"

class TestTaxReporting < Minitest::Test
  def setup
    @aggregator = Stripe::Tax::TransactionAggregator.new
    @aggregator.add_wallet("wallet1", :ethereum, "0x123...")
    @aggregator.add_wallet("wallet2", :polygon, "0x456...")
  end

  def test_transaction_aggregator_initialization
    assert_equal 2, @aggregator.wallet_count
    assert_equal 0, @aggregator.transaction_count
  end

  def test_add_transaction_buy
    @aggregator.add_transaction("wallet1", {
      date: Date.today,
      type: :buy,
      asset: "USDC",
      quantity: 1000,
      price_per_unit: 1.00,
      fee: 2.0,
      notes: "Initial purchase",
    })

    assert_equal 1, @aggregator.transaction_count
  end

  def test_add_multiple_transactions
    @aggregator.add_transaction("wallet1", {
      date: Date.today - 30,
      type: :buy,
      asset: "USDC",
      quantity: 1000,
      price_per_unit: 1.00,
      fee: 2.0,
    })

    @aggregator.add_transaction("wallet2", {
      date: Date.today - 20,
      type: :buy,
      asset: "ETH",
      quantity: 5,
      price_per_unit: 2000,
      fee: 1.0,
    })

    @aggregator.add_transaction("wallet1", {
      date: Date.today,
      type: :sell,
      asset: "USDC",
      quantity: 500,
      price_per_unit: 1.02,
      fee: 1.5,
    })

    assert_equal 3, @aggregator.transaction_count
  end

  def test_wallet_transactions
    @aggregator.add_transaction("wallet1", {
      date: Date.today,
      type: :buy,
      asset: "USDC",
      quantity: 1000,
      price_per_unit: 1.00,
      fee: 2.0,
    })

    @aggregator.add_transaction("wallet2", {
      date: Date.today,
      type: :buy,
      asset: "ETH",
      quantity: 5,
      price_per_unit: 2000,
      fee: 1.0,
    })

    wallet1_txs = @aggregator.wallet_transactions("wallet1")
    assert_equal 1, wallet1_txs.count
    assert_equal "USDC", wallet1_txs.first[:asset]
  end

  def test_transactions_by_asset
    @aggregator.add_transaction("wallet1", {
      date: Date.today - 5,
      type: :buy,
      asset: "USDC",
      quantity: 1000,
      price_per_unit: 1.00,
      fee: 1.0,
    })

    @aggregator.add_transaction("wallet1", {
      date: Date.today,
      type: :sell,
      asset: "USDC",
      quantity: 500,
      price_per_unit: 1.02,
      fee: 1.0,
    })

    usdc_txs = @aggregator.transactions_by_asset("USDC")
    assert_equal 2, usdc_txs.count
  end

  def test_total_fees
    @aggregator.add_transaction("wallet1", {
      date: Date.today,
      type: :buy,
      asset: "USDC",
      quantity: 1000,
      price_per_unit: 1.00,
      fee: 5.0,
    })

    @aggregator.add_transaction("wallet2", {
      date: Date.today,
      type: :buy,
      asset: "ETH",
      quantity: 1,
      price_per_unit: 2000,
      fee: 10.0,
    })

    assert_equal 15.0, @aggregator.total_fees
  end

  def test_capital_gains_fifo
    transactions = [
      {
        date: Date.today - 100,
        type: :buy,
        asset: "USDC",
        quantity: 100,
        price_per_unit: 1.00,
        cost_basis: 100,
        fee: 0.5,
      },
      {
        date: Date.today - 50,
        type: :buy,
        asset: "USDC",
        quantity: 100,
        price_per_unit: 1.01,
        cost_basis: 101,
        fee: 0.5,
      },
      {
        date: Date.today,
        type: :sell,
        asset: "USDC",
        quantity: 100,
        price_per_unit: 1.05,
        cost_basis: 105,
        fee: 0.5,
      },
    ]

    calculator = Stripe::Tax::CapitalGainsCalculator.new(transactions, :fifo)
    gains = calculator.gains

    assert_equal 1, gains.count
    # FIFO: selling at $1.05 the ones bought at $1.00
    # Gain = 105 - 100 - 0.5 = 4.5
    assert gains.first[:gain] > 0
  end

  def test_capital_gains_lifo
    transactions = [
      {
        date: Date.today - 100,
        type: :buy,
        asset: "USDC",
        quantity: 100,
        price_per_unit: 1.00,
        cost_basis: 100,
        fee: 0.5,
      },
      {
        date: Date.today - 50,
        type: :buy,
        asset: "USDC",
        quantity: 100,
        price_per_unit: 1.01,
        cost_basis: 101,
        fee: 0.5,
      },
      {
        date: Date.today,
        type: :sell,
        asset: "USDC",
        quantity: 100,
        price_per_unit: 1.05,
        cost_basis: 105,
        fee: 0.5,
      },
    ]

    calculator = Stripe::Tax::CapitalGainsCalculator.new(transactions, :lifo)
    gains = calculator.gains

    assert_equal 1, gains.count
    # LIFO: selling the ones bought at $1.01
    assert gains.first[:gain] > 0
  end

  def test_short_term_vs_long_term_gains
    transactions = [
      {
        date: Date.today - 400,
        type: :buy,
        asset: "ETH",
        quantity: 1,
        price_per_unit: 2000,
        cost_basis: 2000,
        fee: 1,
      },
      {
        date: Date.today - 350,
        type: :buy,
        asset: "ETH",
        quantity: 1,
        price_per_unit: 2100,
        cost_basis: 2100,
        fee: 1,
      },
      {
        date: Date.today,
        type: :sell,
        asset: "ETH",
        quantity: 2,
        price_per_unit: 2500,
        cost_basis: 5000,
        fee: 2,
      },
    ]

    calculator = Stripe::Tax::CapitalGainsCalculator.new(transactions, :fifo)
    by_holding = calculator.gains_by_holding_period

    # First one (bought 400 days ago) is long-term
    assert by_holding[:long_term][:count] > 0
    # Second one (bought 350 days ago) is short-term
    assert by_holding[:short_term][:count] > 0
  end

  def test_gains_by_asset
    transactions = [
      {
        date: Date.today - 100,
        type: :buy,
        asset: "USDC",
        quantity: 100,
        price_per_unit: 1.00,
        cost_basis: 100,
        fee: 0.5,
      },
      {
        date: Date.today,
        type: :sell,
        asset: "USDC",
        quantity: 50,
        price_per_unit: 1.10,
        cost_basis: 55,
        fee: 0.25,
      },
      {
        date: Date.today - 50,
        type: :buy,
        asset: "ETH",
        quantity: 1,
        price_per_unit: 2000,
        cost_basis: 2000,
        fee: 1,
      },
      {
        date: Date.today,
        type: :sell,
        asset: "ETH",
        quantity: 1,
        price_per_unit: 2500,
        cost_basis: 2500,
        fee: 1,
      },
    ]

    calculator = Stripe::Tax::CapitalGainsCalculator.new(transactions, :fifo)
    by_asset = calculator.gains_by_asset

    assert by_asset.key?("USDC")
    assert by_asset.key?("ETH")
    assert by_asset["USDC"][:count] > 0
    assert by_asset["ETH"][:count] > 0
  end

  def test_csv_export_turbotax
    transactions = [
      {
        date: Date.today - 100,
        type: :buy,
        asset: "USDC",
        quantity: 100,
        price_per_unit: 1.00,
        cost_basis: 100,
        fee: 0.5,
      },
      {
        date: Date.today,
        type: :sell,
        asset: "USDC",
        quantity: 100,
        price_per_unit: 1.05,
        cost_basis: 105,
        fee: 0.5,
      },
    ]

    calculator = Stripe::Tax::CapitalGainsCalculator.new(transactions, :fifo)
    filename = Stripe::Tax.export_turbotax_csv(calculator.gains, "/tmp/turbo_test.csv")

    assert File.exist?(filename)
    content = File.read(filename)
    assert content.include?("Date")
    assert content.include?("USDC")
  end

  def test_csv_export_koinly
    transactions = [
      {
        date: Date.today - 100,
        type: :buy,
        asset: "USDC",
        quantity: 100,
        price_per_unit: 1.00,
        cost_basis: 100,
        fee: 0.5,
        notes: "purchase",
      },
    ]

    filename = Stripe::Tax.export_koinly_csv(transactions, "/tmp/koinly_test.csv")
    assert File.exist?(filename)
  end

  def test_pdf_export
    transactions = [
      {
        date: Date.today - 100,
        type: :buy,
        asset: "USDC",
        quantity: 100,
        price_per_unit: 1.00,
        cost_basis: 100,
        fee: 0.5,
      },
      {
        date: Date.today,
        type: :sell,
        asset: "USDC",
        quantity: 100,
        price_per_unit: 1.05,
        cost_basis: 105,
        fee: 0.5,
      },
    ]

    calculator = Stripe::Tax::CapitalGainsCalculator.new(transactions, :fifo)
    filename = Stripe::Tax.export_tax_pdf(calculator.gains, calculator, "/tmp/tax_test.pdf")

    assert File.exist?(filename)
  end

  def test_estimated_tax_liability
    transactions = [
      {
        date: Date.today - 400,
        type: :buy,
        asset: "ETH",
        quantity: 1,
        price_per_unit: 2000,
        cost_basis: 2000,
        fee: 1,
      },
      {
        date: Date.today,
        type: :sell,
        asset: "ETH",
        quantity: 1,
        price_per_unit: 3000,
        cost_basis: 3000,
        fee: 1,
      },
    ]

    calculator = Stripe::Tax::CapitalGainsCalculator.new(transactions, :fifo)
    tax_liability = calculator.estimated_tax_liability

    assert tax_liability > 0
    # Long-term capital gain of ~$999, taxed at 15%
    assert tax_liability < 500
  end

  def test_total_realized_gains_and_losses
    transactions = [
      {
        date: Date.today - 100,
        type: :buy,
        asset: "USDC",
        quantity: 100,
        price_per_unit: 1.00,
        cost_basis: 100,
        fee: 0.5,
      },
      {
        date: Date.today,
        type: :sell,
        asset: "USDC",
        quantity: 50,
        price_per_unit: 1.50,
        cost_basis: 75,
        fee: 0.25,
      },
    ]

    calculator = Stripe::Tax::CapitalGainsCalculator.new(transactions, :fifo)
    gains = calculator.total_realized_gains
    losses = calculator.total_realized_losses

    # Total gains should include the profit minus fees
    assert gains > 0
    # Since we only sold at a profit, losses should be 0
    assert losses == 0
  end

  def teardown
    # Clean up test files
    File.delete("/tmp/turbo_test.csv") if File.exist?("/tmp/turbo_test.csv")
    File.delete("/tmp/koinly_test.csv") if File.exist?("/tmp/koinly_test.csv")
    File.delete("/tmp/tax_test.pdf") if File.exist?("/tmp/tax_test.pdf")
  end
end
