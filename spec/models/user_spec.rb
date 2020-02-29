require 'rails_helper'

describe User do
  describe '#create' do
    # 1. company, genre, name, worklocation, email, phone_number, password, password_confirmationが存在すれば登録できること
    it "is valid with a company, genre, name, worklocation, email, phone_number, password, password_confirmation" do
      user = build(:user)
      expect(user).to be_valid
    end
  end
end