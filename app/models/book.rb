class Book < ApplicationRecord
  belongs_to :user

  validates :title, presence:true
  validates :body, presence:true
  validates :body, length: {maximum: 200 }

  def self.search(keyword)
    Book.where(['title like? OR body like?', "%#{keyword}%", "%#{keyword}%"])
  end

end
