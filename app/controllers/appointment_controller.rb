class AppointmentController < ApplicationController
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
        @appointment = Appointment.create(params)
    end
    def update
        @appointment = Appointment.find_by(id: params[:id])
        @appointment.update(params)
    end
    def delete
        @appointment = Appointment.find_by(id: params[:id])
        @appointment.delete
    end
    def edit
        @appointment = Appointment.find_by(id: params[:id])
    end
end
