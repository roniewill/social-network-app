require "rails_helper"

RSpec.describe Admin, type: :model do
  context "check if admin is valid" do
    admin = Admin.new(name: "Admin", email: "admin@email.com", password: "123456")

    it "valid admin email" do
      expect(admin.email).to eql "admin@email.com"
    end

    it "valid password admin" do
      expect(admin.password).to eql "123456"
    end

    it "admin is valid" do
      expect(admin).to be_valid
    end
  end

  context "check if admin is not valid" do
    admin = Admin.new(email: "admin@email.com", password: "")

    it "password is invalid because is empty" do
      expect(admin.password).to be_empty
    end

    it "admin is not valid" do
      expect(admin).to_not be_valid
    end
  end
end
