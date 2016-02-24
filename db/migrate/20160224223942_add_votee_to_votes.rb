class AddVoteeToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :votee, :integer
  end
end
