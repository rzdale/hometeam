class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    	t.string :user_type, null:false
    	t.string :first_name
    	t.string :last_name    	
    	t.string :password_hash
    	t.string :email
    	t.integer :zip
    	t.timestamps null:false
   	end
  end
end
