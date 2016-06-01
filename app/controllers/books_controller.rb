class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def results
    @query = params[:query]
    @result = Book.find_by(name: "#{@query}")
    if @result == nil
      redirect_to home_path
      flash[:notice] = "No result for #{@query}"
    end
  end

  def new;end

  def create
    book = Book.create(create_params)

    if !book.save
      redirect_to :back
      if book[:name] == "" && book[:author] == "" && book[:description]
        flash[:notice] = "Field cannot be empty!"
      elsif book[:author] == ""
        flash[:notice] = "You forgot author!"
      elsif book[:description]
        flash[:notice] = "Please add short description"
      end
    else
      redirect_to books_path
    end
  end

  def create_params
    params.require(:book).permit(:name, :author, :description)
  end
end
