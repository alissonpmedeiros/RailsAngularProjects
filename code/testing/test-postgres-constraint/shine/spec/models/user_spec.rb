#---
# Excerpted from "Rails, Angular, Postgres, and Bootstrap",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/dcbang for more book information.
#---
require 'rails_helper'

describe User do
  describe "email" do
    let(:user) { 
      User.create!(email: "foo@example.com", 
                   password: "qwertyuiop", 
                   password_confirmation: "qwertyuiop")
    }
    it "absolutely prevents invalid email addresses" do
      expect {
        user.update_attribute(:email, "foo@bar.com")
      }.to raise_error(ActiveRecord::StatementInvalid,
                       /email_must_be_company_email/i)
    end
  end
end
