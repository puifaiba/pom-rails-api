class Api::V1::UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def create
        user = User.new(user_params)
        user.save
        render json: user
    end

    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
    end


    private
    def user_params
        params.require(:user).permit(:email, :password, :first_name, :last_name, :dob, :role, :therapist_id)
    end
end
