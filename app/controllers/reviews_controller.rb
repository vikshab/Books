class ReviewsController < ApplicationController
  before_action :find_book

  def index
    @reviews = @book.reviews
  end

  def create
    review = Review.create!(create_params)
    @book.reviews.append(review)
    redirect_to reviews_path
  end

  def find_book
    @book = Book.find(params[:book_id])
  end

  def create_params
    params.require(:review).permit(:text, :author)
  end
end
