class CreateParticipateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :participate_logs do |t|
      t.references :activity, foreign_key: true
      t.string :ip_address

      t.timestamps
    end
  end
end
