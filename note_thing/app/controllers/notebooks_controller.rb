class NotebooksController < ApplicationController
  def view
    @user = current_user.id
    @notes = Note.all
    @note = Note.new
    @notebooks = Notebook.where(:user_id => @user)
    @notebook = Notebook.new
  end

  def show
    @users = User.all
    @notebook = Notebook.find(params[:id])
    @notes = Note.all
  end

  def destroy
    @notebook = Notebook.find(params[:id])
    @notebook.destroy
    redirect_to :back
  end

  def create
    @notebook = Notebook.new(title: params['notebook']['title'], user_id: params['notebook']['user_id'])
    @notebook.save
    redirect_to :back
  end

end
