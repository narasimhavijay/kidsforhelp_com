class UsersController < ApplicationController
  def index
    @users = User.page(params[:page]).per(10)

    render("user_templates/index.html.erb")
  end

  def show_details
    @user = User.find(params.fetch("id_to_display"))

    render("user_templates/show.html.erb")
  end
  
  def show 
  @user = User.find(current_user.id)
  render("user_templates/show.html.erb")
end 
end
