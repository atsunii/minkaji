class Garbage < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '可燃ゴミ' },
    { id: 2, name: 'カン' },
    { id: 3, name: 'ペットボトル' },
    { id: 4, name: 'ビン' },
  ]
  include ActiveHash::Associations
  has_many :house_works
end