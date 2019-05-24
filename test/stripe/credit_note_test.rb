# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class CreditNoteTest < Test::Unit::TestCase
    should "be listable" do
      credit_notes = Stripe::CreditNote.list
      assert_requested :get, "#{Stripe.api_base}/v1/credit_notes"
      assert credit_notes.data.is_a?(Array)
      assert credit_notes.first.is_a?(Stripe::CreditNote)
    end

    should "be retrievable" do
      credit_note = Stripe::CreditNote.retrieve("cn_123")
      assert_requested :get, "#{Stripe.api_base}/v1/credit_notes/cn_123"
      assert credit_note.is_a?(Stripe::CreditNote)
    end

    should "be creatable" do
      credit_note = Stripe::CreditNote.create(
        amount: 100,
        invoice: "in_123",
        reason: "duplicate"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/credit_notes"
      assert credit_note.is_a?(Stripe::CreditNote)
    end

    should "be saveable" do
      credit_note = Stripe::CreditNote.retrieve("cn_123")
      credit_note.metadata["key"] = "value"
      credit_note.save
      assert_requested :post, "#{Stripe.api_base}/v1/credit_notes/#{credit_note.id}"
    end

    should "be updateable" do
      credit_note = Stripe::CreditNote.update("cn_123", metadata: { key: "value" })
      assert_requested :post, "#{Stripe.api_base}/v1/credit_notes/cn_123"
      assert credit_note.is_a?(Stripe::CreditNote)
    end

    context "#void_credit_note" do
      should "void credit_note" do
        credit_note = Stripe::CreditNote.retrieve("cn_123")
        credit_note = credit_note.void_credit_note
        assert_requested :post,
                         "#{Stripe.api_base}/v1/credit_notes/#{credit_note.id}/void"
        assert credit_note.is_a?(Stripe::CreditNote)
      end
    end

    context ".void_credit_note" do
      should "void credit_note" do
        credit_note = Stripe::CreditNote.void_credit_note("cn_123")
        assert_requested :post, "#{Stripe.api_base}/v1/credit_notes/cn_123/void"
        assert credit_note.is_a?(Stripe::CreditNote)
      end
    end
  end
end
