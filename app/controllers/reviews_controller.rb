class ReviewsController < ApplicationController
  def index
    @book = Book.find(params[:book_id])
    @reviews = @book.reviews
  end

  def new
    @review = Review.new
  end

  def create
    review = Review.create(create_params[:review])
    book = Book.find([:book_id])
    review.book_id = book.id

    if review.save
      redirect_to reviews_path
    else
      render :new
    end
  end
  end
