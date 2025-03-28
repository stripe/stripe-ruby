# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class TaxIdService < StripeService
    class DeleteParams < Stripe::RequestParams
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class ListParams < Stripe::RequestParams
      class Owner < Stripe::RequestParams
        # Account the tax ID belongs to. Required when `type=account`
        attr_accessor :account
        # Customer the tax ID belongs to. Required when `type=customer`
        attr_accessor :customer
        # v2 Account the tax ID belongs to. Can be used in place of `customer` when `type=customer`
        attr_accessor :customer_account
        # Type of owner referenced.
        attr_accessor :type

        def initialize(account: nil, customer: nil, customer_account: nil, type: nil)
          @account = account
          @customer = customer
          @customer_account = customer_account
          @type = type
        end
      end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # The account or customer the tax ID belongs to. Defaults to `owner[type]=self`.
      attr_accessor :owner
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(ending_before: nil, expand: nil, limit: nil, owner: nil, starting_after: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @owner = owner
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class Owner < Stripe::RequestParams
        # Account the tax ID belongs to. Required when `type=account`
        attr_accessor :account
        # Customer the tax ID belongs to. Required when `type=customer`
        attr_accessor :customer
        # v2 Account the tax ID belongs to. Can be used in place of `customer` when `type=customer`
        attr_accessor :customer_account
        # Type of owner referenced.
        attr_accessor :type

        def initialize(account: nil, customer: nil, customer_account: nil, type: nil)
          @account = account
          @customer = customer
          @customer_account = customer_account
          @type = type
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The account or customer the tax ID belongs to. Defaults to `owner[type]=self`.
      attr_accessor :owner
      # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `ba_tin`, `bb_tin`, `bg_uic`, `bh_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cn_tin`, `co_nit`, `cr_tin`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kh_tin`, `kr_brn`, `kz_bin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
      attr_accessor :type
      # Value of the tax ID.
      attr_accessor :value

      def initialize(expand: nil, owner: nil, type: nil, value: nil)
        @expand = expand
        @owner = owner
        @type = type
        @value = value
      end
    end

    # Creates a new account or customer tax_id object.
    def create(params = {}, opts = {})
      request(method: :post, path: "/v1/tax_ids", params: params, opts: opts, base_address: :api)
    end

    # Deletes an existing account or customer tax_id object.
    def delete(id, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/tax_ids/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of tax IDs.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/tax_ids", params: params, opts: opts, base_address: :api)
    end

    # Retrieves an account or customer tax_id object.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/tax_ids/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
