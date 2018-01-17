class AddCounterToActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :participate_logs_count, :integer
  end
end
