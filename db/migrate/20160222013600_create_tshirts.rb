class CreateTshirts < ActiveRecord::Migration
  def change
    create_table :tshirts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
