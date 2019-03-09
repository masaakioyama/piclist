class CreatePics < ActiveRecord::Migration[5.2]
  def change
    create_table :pics do |t|
      t.string :img
      t.string :title
      t.string :englishtitle
      t.date :made
      t.string :technique
      t.float :gosu
      t.float :width
      t.float :height
      t.string :award
      t.date :awardday
      t.string :sellstatus
      t.date :solidly
      t.integer :soldprice
      t.string :buyer
      t.string :buyerzip
      t.text :buyeraddress
      t.string :buyerphone
      t.string :buyeremail
      t.text :remark

      t.timestamps
    end
  end
end
