class ReviewsController < ApplicationController
  before_action :find_book

  def index
    @reviews = @book.reviews
  end

  def create
    review = Review.create(create_params)
    if review.save
      @book.reviews.append(review)
    else
      if review[:text] == "" && review[:author] == ""
        flash[:notice] = "You entered nothing"
      elsif review[:author] == ""
        flash[:notice] = "You forgot enter your name"
      else
        flash[:notice] = "#{review[:author].capitalize}, " + "no reviews?"
      end
    end
    redirect_to reviews_path
  end

  def find_book
    if params[:book_id].to_i <= Book.count
      @book = Book.find(params[:book_id])
    else
      redirect_to home_path
    end
  end

  def create_params
    params.require(:review).permit(:text, :author)
  end
end
