class Book < ActiveRecord::Base
  has_many :reviews
  validates :name, :author, :description, presence: true
end
