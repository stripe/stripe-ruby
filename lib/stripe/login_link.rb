# frozen_string_literal: true

module Stripe
  class LoginLink < APIResource
    OBJECT_NAME = "login_link".freeze

    def self.retrieve(_id, _opts = nil)
      raise NotImplementedError, "Login links do not have IDs and cannot be retrieved. They can only be created using accounts.login_links.create"
    end
  end
end
