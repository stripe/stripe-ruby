module Stripe
  class LoginLink < APIResource
    OBJECT_NAME = 'login_link'

    def self.retrieve(id, opts=nil)
      raise NotImplementedError.new("Login links do not have IDs and cannot be retrieved. They can only be created using accounts.login_links.create")
    end
  end
end
