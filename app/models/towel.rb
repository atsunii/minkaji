class Towel < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: 'キッチンタオル(1点)' },
    { id: 2, name: '洗面所タオル(1点)' },
  ]
end