require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#validations' do
    it 'should check for valid user' do
      user = build :user
      expect(user).to be_valid 
    end
    it 'should give error on no user' do
      user = build :user, login: nil, provider: nil 
      expect(user).not_to be_valid  
      expect(user.errors.messages[:login]).to include("cant be blank")
    end 
    it 'should give error on no provider ' do
      expect(user.errors.messages[:provider]).to include("cant be blank")
    end
    it 'should check uniqueness of user ' do
      user =  build :user
      new_user = build :user, login: user.login
      expect(new_user).to be_invalid  
    end
  end
end
