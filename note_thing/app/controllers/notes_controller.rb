class NotesController < ApplicationController
  def create

    @note = Note.new(title: params['note']['title'],
                      body: params['note']['body'],
                      notebook_id: params['notebook_id'])
    @note.save
    redirect_to :back
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to :back
  end

  def show
    @notes = Note.where(notebook_id: params[:id])
  end
end