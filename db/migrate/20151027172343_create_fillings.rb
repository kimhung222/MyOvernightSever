class CreateFillings < ActiveRecord::Migration
  def change
    create_table :fillings do |t| 
      t.text :content 
      t.string :field 
      t.string :score 
      t.string :answer 

      t.timestamps null: false
    end
  end
end
