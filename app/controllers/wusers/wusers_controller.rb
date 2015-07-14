class UsersController < ApplicationController

  def index
	  @wuser = current_wuser
	  if @wuser.isPlayerConnected
		  foo = "yup"
	  else
		  foo = "nope"
	  end
  end

end