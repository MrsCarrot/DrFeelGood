class DoctorsController < ApplicationController
    before_action :find_doctor, except: [:index, :new, :create]
    
    before_action :authenticate_user!, except: [:index, :show]
    
    def index
      
        @doctors = Doctor.all
        
    end
    def new
        @doctor = Doctor.new
    end

    def show
        
    end
    
    def create
        #binding.pry
        @doctor = Doctor.create!(permitted_params)
        redirect_to doctors_path
    end
    def update
        @doctor.update!(permitted_params)
        
        if @doctor.update!(permitted_params)
          redirect_to(@doctor)
        else
          render "edit"
        end
    end
    def destroy
        @doctor.delete
        redirect_to root_path
    end
    def edit
        
    end

    private 
    def find_doctor 
        @doctor = Doctor.find_by(id: params[:id])
    end

    def permitted_params
        params.require(:doctor).permit(:name, :description, :email, :password, :password_confirmation)
    end
end
