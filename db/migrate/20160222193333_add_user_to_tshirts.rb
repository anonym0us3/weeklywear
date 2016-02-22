class AddUserToTshirts < ActiveRecord::Migration
  def change
    add_reference :tshirts, :user, index: true, foreign_key: true
  end
end
