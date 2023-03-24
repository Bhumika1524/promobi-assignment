class CreateTutors < ActiveRecord::Migration[7.0]
  def change
    create_table :tutors do |t|
      t.string :fullname
      t.string :contact_number
      t.string :address
      t.string :highest_qualification
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
