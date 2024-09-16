class CopiesController < ApplicationController
  def index
    @book = Book.find(params[:book_id])
    @copies = @book.copies
  end
  def show
    @copy = params
  end


  def create
    @book = Book.find(params[:id])
    @copy = @book.copies.create(comment_params)
    redirect_to book_path
  end



  def comment_params
    params.require(:copy).permit(:borrower, :due_date)
  end

end
