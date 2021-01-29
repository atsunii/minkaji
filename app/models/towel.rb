class Towel < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: 'キッチンタオル' },
    { id: 2, name: '洗面所タオル' },
  ]
  include ActiveHash::Associations
  has_many :house_works
end