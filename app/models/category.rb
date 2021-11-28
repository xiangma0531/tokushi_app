class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '発達障害'}, { id: 2, name: '視覚障害(弱視等含む)'},
    { id: 3, name: '聴覚障害'}, { id: 4, name: 'ADHD'},
    { id: 5, name: '学習遅延'}, { id: 6, name: 'ダウン症'},
    { id: 7, name: 'LGBT'}, { id: 8, name: '四肢に関する障害'},
    { id: 10, name: 'その他'}
  ]
  include ActiveHash::Associations
  has_many :sources
end