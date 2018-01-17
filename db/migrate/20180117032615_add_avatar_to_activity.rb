class AddAvatarToActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :avatar, :string
  end
end
