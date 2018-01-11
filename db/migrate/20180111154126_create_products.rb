class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :store
      t.decimal :price
      t.string :stock
      t.text :content
      t.text :photo
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
