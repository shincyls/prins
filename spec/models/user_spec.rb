require 'rails_helper'

RSpec.describe User, type: :model do

  context 'Model validation and association test' do
    it 'ensures username is presence' do
      user1 = User.new(first_name: 'abc', last_name: 'def', password: "qwerasdf", email: 'shin1@example.com').save
      expect(user1).to eq(false)
    end

    it 'ensures email is presence' do
      user1 = User.new(username: 'shin1', first_name: 'abc', last_name: 'def', password: "qwerasdf").save
      expect(user1).to eq(false)
    end

    it 'ensures username or email unique and presence' do
      user1 = User.new(username: 'shin1', first_name: 'abc', last_name: 'def', password: "qwerasdf", email: 'shin1@example.com').save
      expect(user1).to eq(true) #user1 is unique
      user2 = User.new(username: 'shin2', first_name: 'abc', last_name: 'def', password: "qwerasdf", email: 'shin1@example.com').save
      expect(user2).to eq(false) #user2 has same email with user1
      user3 = User.new(username: 'shin1', first_name: 'abc', last_name: 'def', password: "qwerasdf", email: 'shin1@example.com').save
      expect(user3).to eq(false) #user3 has same username with user1
      user4 = User.new(username: 'shin1', first_name: 'abc', last_name: 'def', password: "qwerasdf", email: 'shin2@example.com').save
      expect(user4).to eq(false) #user4 has same username and email with user1
      user5 = User.new(username: 'shin3', first_name: 'abc', last_name: 'def', password: "qwerasdf", email: 'shin3@example.com').save
      expect(user5).to eq(true) #user5 is unique
    end

    it 'ensures email format is correct' do
      user1 = User.new(username: 'shin1', first_name: 'abc', last_name: 'def', password: "qwerasdf", email: 'shin1xexample.com').save
      expect(user1).to eq(false) #wrong format
      user2 = User.new(username: 'shin2', first_name: 'abc', last_name: 'def', password: "qwerasdf", email: 'shin1@example.com').save
      expect(user2).to eq(true) #right format
      user3 = User.new(username: 'shin1', first_name: 'abc', last_name: 'def', password: "qwerasdf", email: 'shin1@examplexcom').save
      expect(user3).to eq(false) #wrong format
      user4 = User.new(username: 'shin1', first_name: 'abc', last_name: 'def', password: "qwerasdf", email: '.com').save
      expect(user4).to eq(false) #wrong format
      user5 = User.new(username: 'shin3', first_name: 'abc', last_name: 'def', password: "qwerasdf", email: 'shin3@example.com').save
      expect(user5).to eq(true) #right format
    end
  end

  context 'Association Test' do
    it "should have many dresses" do
      user = User.reflect_on_association(:dresses)
      expect(user.macro).to eq(:has_many)
    end

    it "should have many user_dress_likes" do
      user = User.reflect_on_association(:user_dress_likes)
      expect(user.macro).to eq(:has_many)
    end
  end

  # context 'Custom Model Method Test' do
  #   it "full name is the concatenate of first_name and last_name" do
  #     a = User.new(username: 'shinobi', first_name: 'Cy', last_name: 'Shin', password: "qwerasdf", email: 'shinobi@example.com').save
  #     fullname = a.first_name + a.last_name
  #     expect(fullname).to eq('Cy Shin')
  #   end
  # end

end
