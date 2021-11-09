class Grade < ActiveHash::Base
  self.data = [
    { id: 1, name: '幼稚園・保育園'}, { id: 2, name: '小学校'},
    { id: 3, name: '中学校'}, { id: 4, name: '高等学校'}
  ]
  include ActiveHash::Associations
  has_many :sources
end