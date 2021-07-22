class ApplicationController < ActionController::Base

  protected

 def after_sign_in_path_for(users)
   "/users/#{@user.id}"
 end

 def after_sign_out_path_for(users)
   root_path
 end
end
