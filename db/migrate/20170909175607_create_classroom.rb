class CreateClassroom < ActiveRecord::Migration[5.1]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.integer :year
      t.belongs_to :school
    end
  end
end
