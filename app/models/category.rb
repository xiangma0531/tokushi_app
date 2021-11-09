class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'テスト1'}, { id: 2, name: 'テスト2'},
    { id: 3, name: 'テスト3'}
  ]
  include ActiveHash::Associations
  has_many :sources
end