class CreateEmps < ActiveRecord::Migration[5.2]
  def change
    create_table :emps do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :designation

      t.timestamps
    end
  end
end
