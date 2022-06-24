class CreateInstructors < ActiveRecord::Migration[7.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.integer :level
      t.decimal :price
      t.string :role

      t.timestamps
    end
  end
end
