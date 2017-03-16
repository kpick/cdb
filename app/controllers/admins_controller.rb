# All administrative controllers should inherit from this controller
class AdminsController < ApplicationController
  ##before_filter :ensure_admin!

  private

  def ensure_admin!
    if current_user.admin?
    	return true
    else
    	sign_out current_user
      	return redirect_to "/"
	end
  end
end