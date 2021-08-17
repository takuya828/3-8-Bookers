class BooksController < ApplicationController

  def index
     @books = Book.all
     @book = Book.new
  end

  def show
     @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new

  end

  def create
    book = Book.new(book_params)
    pp "=============================================================================="
    pp book_params
    pp "=============================================================================="
    book.save
   redirect_to book_path(book.id)
  end
  def update
     book = Book.find(params[:id])
     pp "================================================================================="
     pp book
     pp "================================================================================"
     pp params[:id]
     pp "================================================================================"
     book_params
     pp "================================================================================"
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  def destroy
     book = Book.find(params[:id])  # データ（レコード）を1件取得
    book.destroy  # データ（レコード）を削除
    redirect_to books_path  # 投稿一覧画面へリダイレクト
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
