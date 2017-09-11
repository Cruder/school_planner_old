class CreateHomeworksUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :homeworks_users do |t|
      t.text :nota_bene
      t.integer :progress
      t.belongs_to :users
      t.belongs_to :homeworks
    end
  end
end
