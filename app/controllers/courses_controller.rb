class CoursesController < ApplicationController

    def index
        courses = Course.all
        render json: { data: ActiveModel::Serializer::CollectionSerializer.new(courses, serializer: CourseSerializer)}, status: :ok 
    end

    def create
        course = Course.new(course_params)
        if course.save!
            render json: course, status: :ok
        else
            render json: course.errors, status: :unprocessible_entity
        end
    end

    private

    def course_params
        params.require(:course).permit(:id, :title, :description, :duration, :fee, tutors_attributes: [:id, :fullname, :contact_number, :address, :highest_qualification, :course_id])
    end
end
