class Garbage < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '可燃ゴミ(2点)' },
    { id: 2, name: 'カン(2点)' },
    { id: 3, name: 'ペットボトル(2点)' },
    { id: 4, name: 'ビン(2点)' },
  ]
end