class WelcomePageController < ApplicationController
  def index
    @notes = Note.all
    @notebooks = Notebook.all

  end

end
