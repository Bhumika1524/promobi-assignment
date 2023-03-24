FactoryBot.define do
    factory(:course) do
      title { Faker::ProgrammingLanguage.name }
      description { Faker::Hipster.paragraph }
      duration { 2 }
      fee { 1000 }
      factory(:tutor) do
        fullname { Faker::Name.first_name }
        highest_qualification { 'Bsc Computer Science' }
        address { Faker::Address.full_address }
        contact_number { Faker::PhoneNumber.phone_number }
      end
    end
  end