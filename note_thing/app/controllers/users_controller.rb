class UsersController < ApplicationController
  def index
    # @notes = Note.find(user_id: user.id) need current user_id with devise
  end
end
