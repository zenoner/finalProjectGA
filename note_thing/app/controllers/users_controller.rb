class UsersController < ApplicationController
  def index
    #@notes = Note.find(user_id:current_user.id ) #need current user_id with devise
  end
end
