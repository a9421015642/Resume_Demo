class AddBasicInformationsTable < ActiveRecord::Migration
  def change
    create_table :basic_informations do |t|
      t.integer :user_id
      t.string :chinesename
      t.string :englishname
      t.integer :gender
      t.date :birthday
      t.integer :military_service
      t.string :telephone
      t.string :phone
      t.string :address
      t.string :educational_background
      t.string :other_educational_background

      t.timestamps
    end

    add_index :basic_informations , :user_id 
    
  end
end
