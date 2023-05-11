class BooksController < ApplicationController
  def index
    @book_new = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end

  def show
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end

end