require 'rails_helper'

RSpec.describe Dress, type: :model do

  context 'when dress is created' do
    it 'ensures color is presence' do
      dress1 = Dress.new(name: "White Gown Big", code: "SS0002", category_id: 1, color: "Red").save
      expect(dress1).to eq(true)
      dress2 = Dress.new(name: "White Nice", code: "SS0003").save
      expect(dress2).to eq(false)
    end
  end

  context 'Association Test' do
    it "should have many dresses" do
      dress = Dress.reflect_on_association(:users)
      expect(dress.macro).to eq(:has_many)
    end

    it "should have many user_dress_likes" do
      dress = Dress.reflect_on_association(:user_dress_likes)
      expect(dress.macro).to eq(:has_many)
    end
  end
 
end
