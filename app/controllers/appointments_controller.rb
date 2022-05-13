class AppointmentsController < ApplicationController
    
before_action :authenticate_user!#, except: [:index, :show]

    
    def index
        @appointments = Appointment.all

    end
    def new
        @appointment = Appointment.new
        
    end

    def show
        @appointment = Appointment.find_by(id: params[:id])
    end
    
    def create
        #binding.pry
        @appointment = Appointment.new(appointment_params.merge({user_id: current_user.id}))
        @appointment.save!
        
        redirect_to appointments_path
    end
    private
        def appointment_params
            params.require(:appointment).permit(:name, :body)
        end


    def update
        @appointment = Appointment.find_by(id: params[:id])
        @appointment.update!(params)
    end
    def delete
        @appointment = Appointment.find_by(id: params[:id])
        @appointment.delete
    end
    def edit
        @appointment = Appointment.find_by(id: params[:id])
    end
end
