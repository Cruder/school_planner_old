class CreateSubject < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :color
    end
    add_reference :subjects, :teacher, foreign_key: true
  end
end
