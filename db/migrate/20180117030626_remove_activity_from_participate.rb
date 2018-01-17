class RemoveActivityFromParticipate < ActiveRecord::Migration[5.1]
  def change
    remove_reference :participates, :activity, foreign_key: true
  end
end
