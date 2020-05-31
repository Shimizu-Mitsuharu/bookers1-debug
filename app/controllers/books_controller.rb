class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
    @book = Book.new
  end

  def new
    @books = Book.all
    @book = Book.new
  end

  # GET /books/1
  # GET /books/1.json
  def show
     @book = Book.find(params[:id])
  end

  # GET /books/1/edit
  def edit
     @book = Book.find(params[:id])
  end

  # POST /books
  # POST /books.json
  def create
    books = Book.new(book_params)
    if books.save
      redirect_to books, notice: 'Book was successfully created.'
    else
      flash[:notice] = "error can't be blank"
      redirect_to books_path
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    books = Book.find(params[:id])
    if books.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to books_path(books)
    else
      flash[:notice] = "error can't be blank"
      redirect_to books_path
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    redirect_to books_url, notice: 'Book was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :body)
    end
end
