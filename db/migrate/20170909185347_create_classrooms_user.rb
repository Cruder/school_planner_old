class CreateClassroomsUser < ActiveRecord::Migration[5.1]
  def change
    create_table :classrooms_users do |t|
      t.belongs_to :user
      t.belongs_to :classroom
      t.integer :as
    end
  end
end
