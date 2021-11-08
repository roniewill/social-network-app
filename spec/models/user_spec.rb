require "rails_helper"

RSpec.describe User, type: :model do
  context "check if admin is valid" do
    user = User.new(
      name: "user",
      email: "user@email.com",
      password: "user123",
      phone: "71989898989",
      avatar: Rack::Test::UploadedFile.new(Rails.root.join("spec/support/batman.png"))
    )

    it "valid user name" do
      expect(user.name).to eql "user"
    end

    it "valid user email" do
      expect(user.email).to eql "user@email.com"
    end

    it "valid user phone" do
      expect(user.phone).to eql "71989898989"
    end

    it "user is valid" do
      expect(user).to be_valid
    end
  end

  context "check if user is not valid" do
    user = User.new(email: "user@email.com", phone: "")

    it "phone is invalid because is empty" do
      expect(user.phone).to be_empty
    end

    it "user is not valid" do
      expect(user).to_not be_valid
    end
  end
end
