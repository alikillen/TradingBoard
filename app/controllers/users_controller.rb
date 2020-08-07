# see marketplace app profiles controller ideas

class UsersController < ApplicationController
#   before_action :set_user
  load_and_authorize_resource

#   #skip_authorize_resource only: [:attend, :cancel_attend]

#   #created these methods to get user name to go to DB?

#   #none of these methods actually do anything?

#   def create #but devise controls this anyway?
#     @user = User.new(user_params)
#     p "***************************"
#     p user_params
#   end

#   private
#   def set_user
#     @user = User.find(params[:id])
#   end

#   def user_params
#     #params.fetch(:listing, {})  
#     params.require(:user, :name, :email, :password)
#   end

end