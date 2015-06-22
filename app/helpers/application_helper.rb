module ApplicationHelper

 def resource_name
   :wuser
 end

 def resource
   @resource ||= Wuser.new
 end

 def devise_mapping
   @devise_mapping ||= Devise.mappings[:user]
 end

end
