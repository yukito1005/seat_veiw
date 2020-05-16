class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :stage
      t.string :seatnumber
      t.timestamps
    end
  end
end
