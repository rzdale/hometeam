class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
    	t.string :name, null:false
    	t.string :league,
    	t.string :category,
    	t.timestamps null:false
    end
  end
end