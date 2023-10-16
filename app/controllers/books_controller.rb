class BooksController < ApplicationController
  def new
    @books = Book.new
  end
  def create
    @books = Book.new(book_params)
    if @books.save
      flash[:notice] = "投稿に成功しました"
      redirect_to book_path(@books.id)
    else
      flash.now[:aleart] = "投稿に失敗しました"
      
      render :new
    end
  end

  def show
  end

  def index
    
    @bookers = Book.all
    @books = Book.new
  end
  

  def edit
  end

private
  
  def book_params
  params.require(:book).permit(:title, :body)
  end
end  
