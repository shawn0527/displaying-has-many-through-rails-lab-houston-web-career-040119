class DoctorsController < ApplicationController
    before_action :current_doctor, except: [:index, :new, :create]

    def index
        @doctors = Doctor.all
    end

    def show
    end

    private

    def current_doctor
        @doctor = Doctor.find(params[:id])
    end

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end

end
