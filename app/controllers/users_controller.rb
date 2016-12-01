class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [:create, :show]

  def create
    user = User.new(user_params)

    if user.save
     jwt = Auth.issue({user_id: user.id})
     email = user.email
     phone_number = user.phone_number
     render json: {jwt: jwt, userEmail: email, userPhoneNumber: phone_number}

   else
     render json: {error: 'email is not unique'}
   end
  end

  def update

  end

  def show

  end

private

  def user_params
    # this is strong params
    params.require(:user).permit(:email, :password, :phone_number)
    # changed :user from :auth
  end


end


















