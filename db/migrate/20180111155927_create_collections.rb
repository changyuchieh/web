class CreateCollections < ActiveRecord::Migration[5.1]
  def change
    create_table :collections do |t|
      t.references :member, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
