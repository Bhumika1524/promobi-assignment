class TutorSerializer < ActiveModel::Serializer
    attributes :id, :fullname, :contact_number, :address, :highest_qualification
end