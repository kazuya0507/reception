class CreateSeminars < ActiveRecord::Migration[5.2]
  def change
    create_table :seminars do |t|
      t.string :first_name,       null:false
      t.string :last_name,        null:false
      t.string :first_name_kana,  null:false
      t.string :last_name_kana,   null:false
      t.integer :postal_code,     null:false
      t.integer :prefecture_id,   null:false
      t.string :city,             null:false
      t.string :block,            null:false
      t.string :building,         null:false
      t.string :mail,             null:false
      t.string :company_name,     null:false
      t.string :company_phone,    null:false
      t.references :user
      t.references :admin
      t.timestamps
    end
  end
end
