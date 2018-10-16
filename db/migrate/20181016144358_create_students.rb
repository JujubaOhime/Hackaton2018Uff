class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.date :birth
      t.integer :score

      t.timestamps
    end
  end
end
