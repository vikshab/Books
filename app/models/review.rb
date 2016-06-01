class Review < ActiveRecord::Base
  belongs_to :book
  validates :text, :author, presence: true
end
