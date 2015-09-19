class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews
  
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, format: /\A\d+(?:\.\d{0,2})?\z/
  
  def average_rating
    revs = self.reviews
    return 0 if revs.count == 0
    revs.inject(0.0) { |sum,r| sum += r.rating } / revs.count
  end
end
