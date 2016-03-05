class AddAutobiographiesTable < ActiveRecord::Migration
  def change
    create_table :autobiographies do |t|
      t.integer :user_id
      t.string :company
      t.text :description

      t.timestamps
    end
    add_index :autobiographies , :user_id
  end
end
