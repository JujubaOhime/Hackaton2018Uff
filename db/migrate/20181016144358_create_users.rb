class Createusers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.date :birth
      t.integer :score
      t.integer :kind

      t.timestamps
    end
    add_index :users, :status
  end
end
