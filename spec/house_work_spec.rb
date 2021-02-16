require 'rails_helper'
RSpec.describe HouseWork, type: :model do
  describe HouseWork do
    before do
      @house_work = FactoryBot.build(:house_work)
    end

    context '商品出品ができる時' do
      it 'date,score_id,user_idが存在すれば商品出品することができる' do
        expect(@house_work).to be_valid
      end
    end

    context '商品出品ができない時' do
      it 'dateが空だと出品できない' do
        @house_work.date = nil
        @house_work.valid?
        expect(@house_work.errors.full_messages).to include("Date can't be blank")
      end

      it 'score_idが未選択だと出品できない' do
        @house_work.score_id = 0
        @house_work.valid?
        expect(@house_work.errors.full_messages).to include("Score must be other than 0")
      end

    end
  end
end