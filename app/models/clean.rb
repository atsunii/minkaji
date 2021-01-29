class Clean < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: 'リビング整頓' },
    { id: 2, name: 'リビング掃除機がけ'},
    { id: 3, name: 'キッチンシンク' },
    { id: 4, name: 'ガスコンロ' },
    { id: 5, name: 'トイレ' },
    { id: 6, name: '風呂' },
    { id: 7, name: '洗面台' },
    { id: 8, name: '廊下' }
  ]
  include ActiveHash::Associations
  has_many :house_works
end