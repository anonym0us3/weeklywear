class AddVoteeToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :votee_id, :integer
  end
end
