# I need something // ...maybe OK
class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :details
      t.text :quickword
      t.text :catchcopy
      t.time :start_time
      t.time :finish_time
      t.integer :member
      t.string :place
      t.string :category
      t.string :image
      t.string :photoshot
      t.date :release
      t.integer :price
      

      t.timestamps
    end
  end
end
