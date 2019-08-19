class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.timestamps
    end
    add_index :cats, :user_id
  end
end
