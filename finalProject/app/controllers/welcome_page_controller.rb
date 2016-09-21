class WelcomePageController < ApplicationController
  def index
    @notes = Note.all

  end

end
