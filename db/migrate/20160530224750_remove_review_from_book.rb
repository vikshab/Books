class RemoveReviewFromBook < ActiveRecord::Migration
  def change
    remove_column :books, :review, :string
  end
end
