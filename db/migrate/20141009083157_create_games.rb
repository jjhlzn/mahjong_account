class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :player1
      t.string :player2
      t.string :player3
      t.string :player4
      t.integer :chipCount
      t.integer :price

      t.timestamps
    end
  end
end
