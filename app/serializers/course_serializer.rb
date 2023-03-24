class CourseSerializer < ActiveModel::Serializer
    attributes :id, :title, :description, :duration, :fee
    has_many :tutors, serializer: TutorSerializer
end