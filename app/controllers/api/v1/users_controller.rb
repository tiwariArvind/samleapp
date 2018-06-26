module Api::V1
  class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, :with => :request_not_found

    #before_filter :authenticate_user_from_token!
    # before_filter :authenticate_user!

    def new
      @user = User.new
    end


    def index
    end


    def show

    end


    def create
      @user = User.create!(user_params)
      if @user
        render :json => @user
      else
        render :json{msg: "unprocessable entity"}
      end
    end


    private

    def users_params
      params.require(:users).permit(:email,:password, :password_confirmation, :role)
    end
  end
