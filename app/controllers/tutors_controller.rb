class TutorsController < ApplicationController
    def create
        tutor = Tutor.new(tutor_params)
        if tutor.save
            render json: tutor, status: :ok
        else
            render json: tutor.errors, status: :unprocessible_entity
        end
    end

    private

    def tutor_params
        params.require(:tutor).permit(:id, :fullname, :contact_number, :address, :highest_qualification, :course_id)
    end
end
