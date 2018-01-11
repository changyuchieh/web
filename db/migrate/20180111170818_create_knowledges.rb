class CreateKnowledges < ActiveRecord::Migration[5.1]
  def change
    create_table :knowledges do |t|
      t.string :title
      t.text :content
      t.string :category
      t.text :movie_link
      t.string :photo_url
      t.string :source

      t.timestamps
    end
  end
end
