class CreateClassMemberships < ActiveRecord::Migration
  def change
    create_table :class_memberships do |t|
      t.references :student, index: true, foreign_key: true
      t.references :schoolclass, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
