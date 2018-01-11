class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :user_id
      t.string :password
      t.string :name
      t.date :birthday
      t.string :tel
      t.string :address

      t.timestamps
    end
  end
end
