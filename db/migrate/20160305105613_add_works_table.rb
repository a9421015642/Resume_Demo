class AddWorksTable < ActiveRecord::Migration
  def change
    create_table :works  do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.string :link

      t.timestamps
    end

    add_index :works , :user_id
    
  end
end
