class Source < ApplicationRecord
  belongs_to :admin
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :grade

  with_options presence: true do
    validates :title
    validates :category_id
    validates :grade_id
    validates :content
  end

  def self.search(search)
    if search != ""
      Source.where('content LIKE(?)', "%#{search}%")
    else
      Source.all
    end
  end
end
