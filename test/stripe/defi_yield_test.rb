# frozen_string_literal: true

require "minitest/autorun"
require "stripe"

class TestDeFiYieldScanner < Minitest::Test
  def test_aave_scanner_initialization
    scanner = Stripe::DeFi::AaveScanner.new
    assert_equal "Aave", scanner.protocol_name
    assert scanner.supported_chains.count > 0
    assert scanner.supported_assets.count > 0
  end

  def test_aave_get_apy_ethereum_usdc
    scanner = Stripe::DeFi::AaveScanner.new
    apy = scanner.get_apy(:ethereum, "USDC")
    assert apy > 0
    assert apy < 20
  end

  def test_aave_get_apy_all_chains
    scanner = Stripe::DeFi::AaveScanner.new
    scanner.supported_chains.each do |chain|
      apy = scanner.get_apy(chain, "USDC")
      assert apy > 0, "Aave USDC on #{chain} should have positive APY"
    end
  end

  def test_aave_best_yield_for_asset
    scanner = Stripe::DeFi::AaveScanner.new
    best = scanner.best_yield_for_asset("USDC")
    assert best[:apy] > 0
    assert best[:chain]
    assert_equal "Aave", best[:protocol]
  end

  def test_compound_scanner_initialization
    scanner = Stripe::DeFi::CompoundScanner.new
    assert_equal "Compound", scanner.protocol_name
    assert scanner.supported_chains.count > 0
    assert scanner.supported_assets.count > 0
  end

  def test_compound_apy_lower_than_aave
    aave = Stripe::DeFi::AaveScanner.new
    compound = Stripe::DeFi::CompoundScanner.new

    aave_apy = aave.get_apy(:ethereum, "USDC")
    compound_apy = compound.get_apy(:ethereum, "USDC")

    # Compound typically offers slightly lower rates
    assert aave_apy >= compound_apy
  end

  def test_uniswap_scanner_initialization
    scanner = Stripe::DeFi::UniswapScanner.new
    assert_equal "Uniswap V3", scanner.protocol_name
  end

  def test_uniswap_apy_higher_than_lending
    uniswap = Stripe::DeFi::UniswapScanner.new
    aave = Stripe::DeFi::AaveScanner.new

    uniswap_apy = uniswap.get_apy(:ethereum, "ETH_USDC")
    aave_apy = aave.get_apy(:ethereum, "ETH")

    # Uniswap pools typically offer higher APY
    assert uniswap_apy > aave_apy
  end

  def test_uniswap_impermanent_loss_risk
    scanner = Stripe::DeFi::UniswapScanner.new
    risk_stables = scanner.get_impermanent_loss_risk("USDC_USDT")
    risk_volatile = scanner.get_impermanent_loss_risk("WBTC_ETH")

    # Volatile pairs have higher IL risk
    assert risk_volatile > risk_stables
  end

  def test_yield_optimizer_initialization
    wallets = {
      wallet1: {
        chain: :ethereum,
        assets: { "USDC" => 1000, "ETH" => 5 },
      },
    }

    optimizer = Stripe::DeFi::YieldOptimizer.new(wallets)
    assert optimizer.scanners.count == 3
    assert optimizer.monitored_wallets.count == 1
  end

  def test_yield_optimizer_best_global_yield
    optimizer = Stripe::DeFi::YieldOptimizer.new({})
    best = optimizer.best_global_yield("USDC")

    assert best[:apy] > 0
    assert best[:chain]
    assert best[:protocol]
  end

  def test_yield_optimizer_all_yields_for_asset
    optimizer = Stripe::DeFi::YieldOptimizer.new({})
    all_yields = optimizer.all_yields_for_asset("USDC")

    # Should have yields across multiple protocols and chains
    assert all_yields.count > 5
    assert all_yields.first[:apy] >= all_yields.last[:apy] # Sorted descending
  end

  def test_yield_optimizer_find_rebalancing_opportunities
    wallets = {
      wallet1: {
        chain: :ethereum,
        protocol: "aave",
        assets: { "USDC" => 1000 },
        yields: { "USDC" => 2.0 },
      },
    }

    optimizer = Stripe::DeFi::YieldOptimizer.new(wallets)
    opportunities = optimizer.find_rebalancing_opportunities(min_apy_improvement: 0.1)

    # May or may not find opportunities - just ensure it returns an array
    assert opportunities.is_a?(Array)
  end

  def test_yield_optimizer_portfolio_analysis
    wallets = {
      wallet1: {
        chain: :ethereum,
        assets: { "USDC" => 5000, "USDT" => 2000 },
      },
      wallet2: {
        chain: :polygon,
        assets: { "USDC" => 3000, "DAI" => 1000 },
      },
    }

    optimizer = Stripe::DeFi::YieldOptimizer.new(wallets)
    analysis = optimizer.portfolio_yield_analysis

    assert analysis[:total_portfolio_value] == 11000
    assert analysis[:total_potential_annual_yield] > 0
    assert analysis[:average_portfolio_apy] > 0
    assert analysis[:wallet_count] == 2
  end

  def test_yield_optimizer_yield_comparison_matrix
    optimizer = Stripe::DeFi::YieldOptimizer.new({})
    matrix = optimizer.yield_comparison_matrix("USDC")

    # Matrix should have protocol keys
    assert matrix.count > 0
    # Check that at least aave has yields
    assert matrix.any? { |protocol, chains| chains.count > 0 }
  end

  def test_defi_convenience_method_scan_yields
    yields = Stripe::DeFi.scan_yields("USDC")
    assert yields.count > 0
    assert yields.first.key?(:protocol)
    assert yields.first.key?(:chain)
    assert yields.first.key?(:apy)
  end

  def test_defi_convenience_method_best_yield
    best = Stripe::DeFi.best_yield_for_asset("ETH")
    assert best[:apy] > 0
    assert best[:protocol]
  end

  def test_chain_specific_yields
    aave = Stripe::DeFi::AaveScanner.new
    arbitrum_yields = aave.get_available_yields(:arbitrum)

    # Arbitrum should have lower yields than Ethereum
    ethereum_yields = aave.get_available_yields(:ethereum)

    avg_arbitrum = arbitrum_yields.sum { |y| y[:apy] } / arbitrum_yields.count
    avg_ethereum = ethereum_yields.sum { |y| y[:apy] } / ethereum_yields.count

    assert avg_arbitrum < avg_ethereum
  end

  def test_unsupported_asset
    scanner = Stripe::DeFi::AaveScanner.new
    result = scanner.best_yield_for_asset("UNSUPPORTED_COIN")
    assert_equal 0, result[:apy]
    assert result[:error]
  end

  def test_unsupported_chain
    aave = Stripe::DeFi::AaveScanner.new
    apy = aave.get_apy(:invalid_chain, "USDC")
    assert_nil apy
  end
end
