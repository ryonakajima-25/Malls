require 'rails_helper'

describe User do
  describe '#create' do
    # 1. company, genre, name, worklocation, email, phone_number, password, password_confirmationが存在すれば登録できること
    it "is valid with a company, genre, name, worklocation, email, phone_number, password, password_confirmation" do
      user = build(:user)
      expect(user).to be_valid
    end

    # 2. nameが空では登録できないこと
    it "is invalid without a name" do
      user = build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
      # expect(user.errors[:name]).to include("を入力してください")
    end

    # # 3. emailが空では登録できないこと
    # it "is invalid without a email" do
    #   user = build(:user, email: nil)
    #   user.valid?
    #   expect(user.errors[:email]).to include("can't be blank")
    # end

    # # 4. passwordが空では登録できないこと
    # it "is invalid without a password" do
    #   user = build(:user, password: nil)
    #   user.valid?
    #   expect(user.errors[:password]).to include("can't be blank")
    # end

    # # 5. 重複したemailが存在する場合登録できないこと
    # it "is invalid with a duplicate email address" do
    #   user = create(:user)
    #   another_user = build(:user, email: user.email)
    #   another_user.valid?
    #   expect(another_user.errors[:email]).to include("has already been taken")
    # end
  end
end