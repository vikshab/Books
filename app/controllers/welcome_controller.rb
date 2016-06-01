class WelcomeController < ApplicationController

  def index;end

  def search
    search = params.require(:search).permit(:query)
    if search[:query] == ""
      redirect_to :back
    else
      redirect_to books_results_path(search[:query])
    end
  end
end
