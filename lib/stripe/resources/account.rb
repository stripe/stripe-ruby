# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This is an object representing a Stripe account. You can retrieve it to see
  # properties on the account like its current requirements or if the account is
  # enabled to make live charges or receive payouts.
  #
  # For Custom accounts, the properties below are always returned. For other accounts, some properties are returned until that
  # account has started to go through Connect Onboarding. Once you create an [Account Link](https://stripe.com/docs/api/account_links) or [Account Session](https://stripe.com/docs/api/account_sessions),
  # some properties are only returned for Custom accounts. Learn about the differences [between accounts](https://stripe.com/docs/connect/accounts).
  class Account < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "account"

    nested_resource_class_methods :capability,
                                  operations: %i[retrieve update list],
                                  resource_plural: "capabilities"
    nested_resource_class_methods :person, operations: %i[create retrieve update delete list]

    # Returns a list of people associated with the account's legal entity. The people are returned sorted by creation date, with the most recent people appearing first.
    def persons(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/accounts/%<account>s/persons", { account: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # With [Connect](https://stripe.com/docs/connect), you may flag accounts as suspicious.
    #
    # Test-mode Custom and Express accounts can be rejected at any time. Accounts created using live-mode keys may only be rejected once all balances are zero.
    def reject(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/accounts/%<account>s/reject", { account: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of people associated with the account's legal entity. The people are returned sorted by creation date, with the most recent people appearing first.
    def self.persons(account, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/accounts/%<account>s/persons", { account: CGI.escape(account) }),
        params: params,
        opts: opts
      )
    end

    # With [Connect](https://stripe.com/docs/connect), you may flag accounts as suspicious.
    #
    # Test-mode Custom and Express accounts can be rejected at any time. Accounts created using live-mode keys may only be rejected once all balances are zero.
    def self.reject(account, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/accounts/%<account>s/reject", { account: CGI.escape(account) }),
        params: params,
        opts: opts
      )
    end

    save_nested_resource :external_account

    nested_resource_class_methods :external_account,
                                  operations: %i[create retrieve update delete list]
    nested_resource_class_methods :login_link, operations: %i[create]

    def resource_url
      if self["id"]
        super
      else
        "/v1/account"
      end
    end

    # @override To make id optional
    def self.retrieve(id = nil, opts = {})
      Util.check_string_argument!(id) if id

      # Account used to be a singleton, where this method's signature was
      # `(opts={})`. For the sake of not breaking folks who pass in an OAuth
      # key in opts, let's lurkily string match for it.
      if opts == {} && id.is_a?(String) && id.start_with?("sk_")
        # `super` properly assumes a String opts is the apiKey and normalizes
        # as expected.
        opts = id
        id = nil
      end
      super(id, opts)
    end

    # We are not adding a helper for capabilities here as the Account object
    # already has a capabilities property which is a hash and not the sub-list
    # of capabilities.

    # Somewhat unfortunately, we attempt to do a special encoding trick when
    # serializing `additional_owners` under an account: when updating a value,
    # we actually send the update parameters up as an integer-indexed hash
    # rather than an array. So instead of this:
    #
    #     field[]=item1&field[]=item2&field[]=item3
    #
    # We send this:
    #
    #     field[0]=item1&field[1]=item2&field[2]=item3
    #
    # There are two major problems with this technique:
    #
    #     * Entities are addressed by array index, which is not stable and can
    #       easily result in unexpected results between two different requests.
    #
    #     * A replacement of the array's contents is ambiguous with setting a
    #       subset of the array. Because of this, the only way to shorten an
    #       array is to unset it completely by making sure it goes into the
    #       server as an empty string, then setting its contents again.
    #
    # We're trying to get this overturned on the server side, but for now,
    # patch in a special allowance.
    def serialize_params(options = {})
      serialize_params_account(self, super, options)
    end

    def serialize_params_account(_obj, update_hash, options = {})
      if (entity = @values[:legal_entity]) && (owners = entity[:additional_owners])
        entity_update = update_hash[:legal_entity] ||= {}
        entity_update[:additional_owners] =
          serialize_additional_owners(entity, owners)
      end
      if (individual = @values[:individual]) && (individual.is_a?(Person) && !update_hash.key?(:individual))
        update_hash[:individual] = individual.serialize_params(options)
      end
      update_hash
    end

    def self.protected_fields
      [:legal_entity]
    end

    def legal_entity
      self["legal_entity"]
    end

    def legal_entity=(_legal_entity)
      raise NoMethodError,
            "Overriding legal_entity can cause serious issues. Instead, set " \
            "the individual fields of legal_entity like " \
            "`account.legal_entity.first_name = 'Blah'`"
    end

    def deauthorize(client_id = nil, opts = {})
      params = {
        client_id: client_id,
        stripe_user_id: id,
      }
      opts = @opts.merge(Util.normalize_opts(opts))
      OAuth.deauthorize(params, opts)
    end

    private def serialize_additional_owners(legal_entity, additional_owners)
      original_value =
        legal_entity
        .instance_variable_get(:@original_values)[:additional_owners]
      if original_value && original_value.length > additional_owners.length
        # url params provide no mechanism for deleting an item in an array,
        # just overwriting the whole array or adding new items. So let's not
        # allow deleting without a full overwrite until we have a solution.
        raise ArgumentError,
              "You cannot delete an item from an array, you must instead " \
              "set a new array"
      end

      update_hash = {}
      additional_owners.each_with_index do |v, i|
        # We will almost always see a StripeObject except in the case of a Hash
        # that's been appended to an array of `additional_owners`. We may be
        # able to normalize that ugliness by using an array proxy object with
        # StripeObjects that can detect appends and replace a hash with a
        # StripeObject.
        update = v.is_a?(StripeObject) ? v.serialize_params : v

        next unless update != {} && (!original_value ||
          update != legal_entity.serialize_params_value(original_value[i], nil,
                                                        false, true))

        update_hash[i.to_s] = update
      end
      update_hash
    end

    # With [Connect](https://stripe.com/docs/connect), you can create Stripe accounts for your users.
    # To do this, you'll first need to [register your platform](https://dashboard.stripe.com/account/applications/settings).
    #
    # If you've already collected information for your connected accounts, you [can prefill that information](https://stripe.com/docs/connect/best-practices#onboarding) when
    # creating the account. Connect Onboarding won't ask for the prefilled information during account onboarding.
    # You can prefill any information on the account.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/accounts", params: params, opts: opts)
    end

    # With [Connect](https://stripe.com/docs/connect), you can delete accounts you manage.
    #
    # Accounts created using test-mode keys can be deleted at any time. Standard accounts created using live-mode keys cannot be deleted. Custom or Express accounts created using live-mode keys can only be deleted once all balances are zero.
    #
    # If you want to delete your own account, use the [account information tab in your account settings](https://dashboard.stripe.com/settings/account) instead.
    def self.delete(id, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/accounts/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # With [Connect](https://stripe.com/docs/connect), you can delete accounts you manage.
    #
    # Accounts created using test-mode keys can be deleted at any time. Standard accounts created using live-mode keys cannot be deleted. Custom or Express accounts created using live-mode keys can only be deleted once all balances are zero.
    #
    # If you want to delete your own account, use the [account information tab in your account settings](https://dashboard.stripe.com/settings/account) instead.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/accounts/%<account>s", { account: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of accounts connected to your platform via [Connect](https://stripe.com/docs/connect). If you're not a platform, the list is empty.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/accounts", params: filters, opts: opts)
    end

    # Updates a [connected account](https://stripe.com/docs/connect/accounts) by setting the values of the parameters passed. Any parameters not provided are
    # left unchanged.
    #
    # For Custom accounts, you can update any information on the account. For other accounts, you can update all information until that
    # account has started to go through Connect Onboarding. Once you create an [Account Link or <a href="/docs/api/account_sessions">Account Session](https://stripe.com/docs/api/account_links),
    # some properties can only be changed or updated for Custom accounts.
    #
    # To update your own account, use the [Dashboard](https://dashboard.stripe.com/settings/account). Refer to our
    # [Connect](https://stripe.com/docs/connect/updating-accounts) documentation to learn more about updating accounts.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/accounts/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
