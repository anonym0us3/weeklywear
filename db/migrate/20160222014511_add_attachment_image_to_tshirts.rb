class AddAttachmentImageToTshirts < ActiveRecord::Migration
  def self.up
    change_table :tshirts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tshirts, :image
  end
end
