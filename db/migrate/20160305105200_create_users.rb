class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
    end

    #add index
    add_index :users  , [:name, :password_digest]
  end
end
