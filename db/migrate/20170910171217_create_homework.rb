class CreateHomework < ActiveRecord::Migration[5.1]
  def change
    create_table :homeworks do |t|
      t.string :title
      t.text :description
      t.datetime :deadline
      t.belongs_to :subject
      t.belongs_to :classroom
      t.timestamp
    end
    add_reference :homeworks, :created_by
    add_reference :homeworks, :edited_by
  end
end
