class CreateSchool < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name, unique: true, nil: false
    end
  end
end
