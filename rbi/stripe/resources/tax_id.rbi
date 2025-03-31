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
      # The account being referenced when `type` is `account`.
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :account
      # The Connect Application being referenced when `type` is `application`.
      sig { returns(T.any(String, Stripe::Application)) }
      attr_reader :application
      # The customer being referenced when `type` is `customer`.
      sig { returns(T.any(String, Stripe::Customer)) }
      attr_reader :customer
      # Type of owner referenced.
      sig { returns(String) }
      attr_reader :type
    end
    class Verification < Stripe::StripeObject
      # Verification status, one of `pending`, `verified`, `unverified`, or `unavailable`.
      sig { returns(String) }
      attr_reader :status
      # Verified address.
      sig { returns(T.nilable(String)) }
      attr_reader :verified_address
      # Verified name.
      sig { returns(T.nilable(String)) }
      attr_reader :verified_name
    end
    # Two-letter ISO code representing the country of the tax ID.
    sig { returns(T.nilable(String)) }
    attr_reader :country
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # ID of the customer.
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # The account or customer the tax ID belongs to.
    sig { returns(T.nilable(Owner)) }
    attr_reader :owner
    # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `ba_tin`, `bb_tin`, `bg_uic`, `bh_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cn_tin`, `co_nit`, `cr_tin`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kh_tin`, `kr_brn`, `kz_bin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`. Note that some legacy tax IDs have type `unknown`
    sig { returns(String) }
    attr_reader :type
    # Value of the tax ID.
    sig { returns(String) }
    attr_reader :value
    # Tax ID verification information.
    sig { returns(T.nilable(Verification)) }
    attr_reader :verification
    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
    class DeleteParams < Stripe::RequestParams

    end
    class ListParams < Stripe::RequestParams
      class Owner < Stripe::RequestParams
        # Account the tax ID belongs to. Required when `type=account`
        sig { returns(T.nilable(String)) }
        attr_accessor :account
        # Customer the tax ID belongs to. Required when `type=customer`
        sig { returns(T.nilable(String)) }
        attr_accessor :customer
        # Type of owner referenced.
        sig { returns(String) }
        attr_accessor :type
        sig { params(account: T.nilable(String), customer: T.nilable(String), type: String).void }
        def initialize(account: nil, customer: nil, type: nil); end
      end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # The account or customer the tax ID belongs to. Defaults to `owner[type]=self`.
      sig { returns(T.nilable(::Stripe::TaxId::ListParams::Owner)) }
      attr_accessor :owner
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), owner: T.nilable(::Stripe::TaxId::ListParams::Owner), starting_after: T.nilable(String)).void
       }
      def initialize(
        ending_before: nil,
        expand: nil,
        limit: nil,
        owner: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class Owner < Stripe::RequestParams
        # Account the tax ID belongs to. Required when `type=account`
        sig { returns(T.nilable(String)) }
        attr_accessor :account
        # Customer the tax ID belongs to. Required when `type=customer`
        sig { returns(T.nilable(String)) }
        attr_accessor :customer
        # Type of owner referenced.
        sig { returns(String) }
        attr_accessor :type
        sig { params(account: T.nilable(String), customer: T.nilable(String), type: String).void }
        def initialize(account: nil, customer: nil, type: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The account or customer the tax ID belongs to. Defaults to `owner[type]=self`.
      sig { returns(T.nilable(::Stripe::TaxId::CreateParams::Owner)) }
      attr_accessor :owner
      # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `ba_tin`, `bb_tin`, `bg_uic`, `bh_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cn_tin`, `co_nit`, `cr_tin`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kh_tin`, `kr_brn`, `kz_bin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
      sig { returns(String) }
      attr_accessor :type
      # Value of the tax ID.
      sig { returns(String) }
      attr_accessor :value
      sig {
        params(expand: T.nilable(T::Array[String]), owner: T.nilable(::Stripe::TaxId::CreateParams::Owner), type: String, value: String).void
       }
      def initialize(expand: nil, owner: nil, type: nil, value: nil); end
    end
    # Creates a new account or customer tax_id object.
    sig {
      params(params: T.any(::Stripe::TaxId::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::TaxId)
     }
    def self.create(params = {}, opts = {}); end

    # Deletes an existing account or customer tax_id object.
    sig {
      params(id: String, params: T.any(::Stripe::TaxId::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::TaxId)
     }
    def self.delete(id, params = {}, opts = {}); end

    # Deletes an existing account or customer tax_id object.
    sig {
      params(params: T.any(::Stripe::TaxId::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::TaxId)
     }
    def delete(params = {}, opts = {}); end

    # Returns a list of tax IDs.
    sig {
      params(params: T.any(::Stripe::TaxId::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end