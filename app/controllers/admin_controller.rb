class AdminController < ApplicationController
  before_filter :authenticate_user!
  before_filter :is_admin?
  
  def login
    render "admin/login"
  end

  def is_admin?
    if current_user.isAdmin?
      true
    else
      render :text => 'You must be an admin to do this. If you are recieving this as an error,
                        please contact the E2 Wellness committee.'
    end
  end
  
end
