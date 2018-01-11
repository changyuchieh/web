class CreateParticipates < ActiveRecord::Migration[5.1]
  def change
    create_table :participates do |t|
      t.references :member, foreign_key: true
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
