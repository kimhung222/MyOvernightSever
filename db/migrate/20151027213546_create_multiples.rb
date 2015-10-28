class CreateMultiples < ActiveRecord::Migration
  def change
    create_table :multiples do |t|
      t.text :content
      t.string :field
      t.string :score
      t.text :A
      t.text :B
      t.text :C
      t.text :D
      t.string :answer

      t.timestamps null: false
    end
  end
end
