class NotebooksController < ApplicationController
  def view
    @notes = Note.all
    @note = Note.new
    @notebooks = Notebook.all
    @notebook = Notebook.new
  end

  def show
    @users = User.all
    @notebook = Notebook.find(params[:id])
    @notes = Note.all
  end

  def create
    @notebook = Notebook.new(title: params['notebook']['title'])
    @notebook.save
    redirect_to :back
  end
end
