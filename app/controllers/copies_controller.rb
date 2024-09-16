class CopiesController < ApplicationController
  def index
    @copies = Book.find(params[:book_id]).copies
  end
  def show
    @copy = Book.find(params[:book_id]).copies.find(params[:id])
  end


  def create
    @book = Book.find(params[:book_id])
    @copy = @book.copies.create(comment_params)
    redirect_to book_path(@book)
  end



  def comment_params
    params.require(:copy).permit(:borrower, :due_date)
  end

end
