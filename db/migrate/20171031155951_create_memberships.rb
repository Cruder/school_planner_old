class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
      t.belongs_to :profile, index: true
      t.belongs_to :classroom, index: true
    end
  end
end
