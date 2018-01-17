class RemoveMemberFromParticipate < ActiveRecord::Migration[5.1]
  def change
    remove_reference :participates, :member, foreign_key: true
  end
end
