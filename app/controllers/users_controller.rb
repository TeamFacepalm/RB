class UsersController < ApplicationController
  def create
    @user = User.new(first_name: params["first_name"],
                     last_name: params["last_name"],
                     email: params["email"],
                     ssn: params["ssn"],
                     dob: params["dob"], 
                     avatar: params["avatar"],
                     district_id: params["district_id"])

    @user.ensure_auth_token  
    if @user.save
      render "create.json.jbuilder", status: :created
           
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end