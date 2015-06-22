class AdminController < ApplicationController
  before_filter :isAdmin?
  
  def login
    render "admin/login"
  end

  def isAdmin?
    if current_wuser.isAdmin?
      true
    else
      render :text => 'You must be an admin to do this. If you are recieving this as an error,
                        please contact the E2 Wellness committee.'
    end
  end
  
end
