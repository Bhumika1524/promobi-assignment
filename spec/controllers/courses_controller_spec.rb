require 'rails_helper'

RSpec.describe CoursesController, type: :controller do
    describe "GET #index" do
        it 'get all courses with tutors' do
            get :index
            expect(response).to have_http_status(:success)
        end
    end

    describe "POST #create" do
        it 'creates a course' do
            Course.create(
                title: 'HTML',
                fee: 1000,
                duration: 2,
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                tutors_attributes: [{
                    fullname: "Ajay",
                    contact_number: 6576557872,
                    address: "Mohali",
                    highest_qualification: "Bsc Computer Science"
                }]
            )
            expect(response).to have_http_status(:success)
        end
    end

end