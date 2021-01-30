class HouseWork < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user

  belongs_to :Clean
  belongs_to :Towel
  belongs_to :Garbage


  with_options presence: true do
    validates :date
    with_options numericality: { other_than: 0 } do
      validates :clean_id
      validates :towel_id
      validates :garbage_id
      validates :score_id
    end
  end
end
