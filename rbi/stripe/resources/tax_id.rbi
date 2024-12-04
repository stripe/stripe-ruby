# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # You can add one or multiple tax IDs to a [customer](https://stripe.com/docs/api/customers) or account.
  # Customer and account tax IDs get displayed on related invoices and credit notes.
  #
  # Related guides: [Customer tax identification numbers](https://stripe.com/docs/billing/taxes/tax-ids), [Account tax IDs](https://stripe.com/docs/invoicing/connect#account-tax-ids)
  class TaxId < APIResource
    class Owner < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :account
      sig { returns(T.any(String, Stripe::Application)) }
      attr_reader :application
      sig { returns(T.any(String, Stripe::Customer)) }
      attr_reader :customer
      sig { returns(String) }
      attr_reader :type
    end
    class Verification < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :status
      sig { returns(T.nilable(String)) }
      attr_reader :verified_address
      sig { returns(T.nilable(String)) }
      attr_reader :verified_name
    end
    sig { returns(T.nilable(String)) }
    # Two-letter ISO code representing the country of the tax ID.
    attr_reader :country
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    # ID of the customer.
    attr_reader :customer
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(Owner)) }
    # The account or customer the tax ID belongs to.
    attr_reader :owner
    sig { returns(String) }
    # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `ar_cuit`, `au_abn`, `au_arn`, `bg_uic`, `bh_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `ch_uid`, `ch_vat`, `cl_tin`, `cn_tin`, `co_nit`, `cr_tin`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kr_brn`, `kz_bin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sv_nit`, `th_vat`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, or `za_vat`. Note that some legacy tax IDs have type `unknown`
    attr_reader :type
    sig { returns(String) }
    # Value of the tax ID.
    attr_reader :value
    sig { returns(T.nilable(Verification)) }
    # Tax ID verification information.
    attr_reader :verification
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end