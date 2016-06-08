module ApplicationHelper

  def is_admin
    current_user && current_user.admin? 
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  # def user_details
  #   @username = current_user.username
  # end
  
end
