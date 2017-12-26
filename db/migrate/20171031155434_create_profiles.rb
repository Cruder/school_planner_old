class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer :type

      t.belongs_to :user, index: true
    end
  end
end
