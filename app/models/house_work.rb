class HouseWork < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user

  belongs_to :Clean
  belongs_to :Towel
  belongs_to :Garbage
  belongs_to :score
  


  with_options presence: true do
    validates :date
    with_options numericality: { other_than: 0 } do
      validates :score_id
    end
  end

end
