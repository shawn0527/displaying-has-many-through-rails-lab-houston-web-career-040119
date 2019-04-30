class PatientsController < ApplicationController
    before_action :current_patient, except: [:index, :new, :create]

    def index
        @patients = Patient.all
    end

    def show
    end

    private

    def current_patient
        @patient = Patient.find(params[:id])
    end
end
