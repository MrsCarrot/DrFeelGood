class UsersController < ApplicationController
    def index
        #@users = User.all
        @doctors = Doctor.all
        
    end
    def new
        @user = User.new
    end

    def show
        @user = User.find_by(id: params[:id])
    end
    
    def create
        @user = User.create(params)
    end
    def update
        @user = User.find_by(id: params[:id])
        @user.update(params)
    end
    def delete
        @user = User.find_by(id: params[:id])
        @user.delete
        redirect_to root_path
    end
    def edit
        @user = User.find_by(id: params[:id])
    end
end
