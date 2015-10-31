class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.references :teacher, index: true, foreign_key: true
      t.references :schoolclass, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
