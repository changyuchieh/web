class AddMemberIdToParticipate < ActiveRecord::Migration[5.1]
  def change
    add_column :participates, :member_id, :integer
  end
end
