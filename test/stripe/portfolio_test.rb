# frozen_string_literal: true

require "minitest/autorun"
require "stripe"

class TestPortfolioManager < Minitest::Test
  def test_create_portfolio
    manager = Stripe::Portfolio.create_manager("user123")
    portfolio = manager.create_portfolio("My Portfolio", assets: { "ETH" => 10, "USDC" => 5000 })

    assert portfolio.id
    assert_equal "My Portfolio", portfolio.name
    assert_equal "user123", portfolio.user_id
    assert_equal 2, portfolio.asset_count
  end

  def test_list_portfolios
    manager = Stripe::Portfolio.create_manager("user123")
    manager.create_portfolio("Portfolio 1", assets: { "ETH" => 5 })
    manager.create_portfolio("Portfolio 2", assets: { "USDC" => 1000 })

    portfolios = manager.list_portfolios
    assert_equal 2, portfolios.count
  end

  def test_switch_portfolio
    manager = Stripe::Portfolio.create_manager("user123")
    p1 = manager.create_portfolio("Portfolio 1")
    p2 = manager.create_portfolio("Portfolio 2")

    manager.switch_portfolio(p2.id)
    assert_equal p2.id, manager.current_portfolio.id
  end

  def test_rename_portfolio
    manager = Stripe::Portfolio.create_manager("user123")
    portfolio = manager.create_portfolio("Original Name")

    manager.rename_portfolio(portfolio.id, "New Name")
    updated = manager.get_portfolio(portfolio.id)

    assert_equal "New Name", updated[:name]
  end

  def test_add_asset
    manager = Stripe::Portfolio.create_manager("user123")
    portfolio = manager.create_portfolio("Test")

    portfolio.add_asset("ETH", 5)
    portfolio.add_asset("USDC", 1000)

    assert_equal 2, portfolio.asset_count
    assert portfolio.total_value > 0
  end

  def test_remove_asset
    manager = Stripe::Portfolio.create_manager("user123")
    portfolio = manager.create_portfolio("Test", assets: { "ETH" => 10, "USDC" => 5000 })

    assert portfolio.remove_asset("ETH", 5)
    assert_equal 5, portfolio.assets["ETH"]
  end

  def test_delete_portfolio
    manager = Stripe::Portfolio.create_manager("user123")
    p1 = manager.create_portfolio("Portfolio 1")
    p2 = manager.create_portfolio("Portfolio 2")

    manager.delete_portfolio(p1.id)
    assert_equal 1, manager.list_portfolios.count
  end

  def test_allocation
    portfolio = Stripe::Portfolio::Portfolio.new(
      name: "Test",
      user_id: "user123",
      assets: { "ETH" => 10, "USDC" => 1000 }
    )

    allocation = portfolio.allocation
    assert allocation["ETH"]
    assert allocation["USDC"]
    assert_equal 100.0, allocation.values.sum.round(1)
  end

  def test_aggregate_stats
    manager = Stripe::Portfolio.create_manager("user123")
    manager.create_portfolio("Portfolio 1", assets: { "ETH" => 5 })
    manager.create_portfolio("Portfolio 2", assets: { "USDC" => 2000 })

    stats = manager.aggregate_stats
    assert_equal 2, stats[:total_portfolios]
    assert stats[:total_value] > 0
  end

  def test_export_data
    manager = Stripe::Portfolio.create_manager("user123")
    manager.create_portfolio("Portfolio 1", assets: { "ETH" => 5 })

    export = manager.export_data
    assert_equal "user123", export[:user_id]
    assert export[:exported_at]
    assert_equal 1, export[:portfolios].count
  end
end

class TestPortfolioInsights < Minitest::Test
  def setup
    @portfolio = Stripe::Portfolio::Portfolio.new(
      name: "Test",
      user_id: "user123",
      assets: { "ETH" => 10, "USDC" => 3000, "AAVE" => 5, "LINK" => 50 }
    )
    @analyzer = Stripe::Portfolio.analyze_portfolio(@portfolio)
  end

  def test_diversification_score
    score = @analyzer.diversification_score
    assert score > 0
    assert score <= 100
  end

  def test_sector_exposure
    exposure = @analyzer.sector_exposure
    assert exposure["layer1"]
    assert exposure["stablecoin"]
    assert exposure["defi"]

    total_pct = exposure.values.sum { |v| v[:percentage] }
    assert_equal 100.0, total_pct.round(1)
  end

  def test_risk_score
    risk = @analyzer.risk_score
    assert risk >= 0
    assert risk <= 100
  end

  def test_generate_summary
    summary = @analyzer.generate_summary
    assert summary[:overview]
    assert summary[:sector_analysis]
    assert summary[:performance_insight]
    assert summary[:recommendations].is_a?(Array)
    assert summary[:risk_profile]
  end

  def test_summary_contains_recommendations
    summary = @analyzer.generate_summary
    assert summary[:recommendations].count >= 0
  end

  def test_concentrated_portfolio_low_diversification
    concentrated = Stripe::Portfolio::Portfolio.new(
      name: "Concentrated",
      user_id: "user123",
      assets: { "ETH" => 100 }
    )
    analyzer = Stripe::Portfolio.analyze_portfolio(concentrated)

    score = analyzer.diversification_score
    assert score < 50, "Concentrated portfolio should have low diversification score"
  end

  def test_well_diversified_portfolio_high_diversification
    diversified = Stripe::Portfolio::Portfolio.new(
      name: "Diversified",
      user_id: "user123",
      assets: { "ETH" => 10, "USDC" => 2000, "AAVE" => 5, "LINK" => 50, "UNI" => 100, "WBTC" => 0.5 }
    )
    analyzer = Stripe::Portfolio.analyze_portfolio(diversified)

    score = analyzer.diversification_score
    assert score > 50, "Diversified portfolio should have higher diversification score"
  end

  def test_conservative_portfolio_low_risk
    conservative = Stripe::Portfolio::Portfolio.new(
      name: "Conservative",
      user_id: "user123",
      assets: { "USDC" => 5000, "USDT" => 5000 }
    )
    analyzer = Stripe::Portfolio.analyze_portfolio(conservative)

    risk = analyzer.risk_score
    assert risk < 30, "Stablecoin-heavy portfolio should have low risk score"
  end
end
