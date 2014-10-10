class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :game_id
      t.integer :player1Win
      t.integer :player2Win
      t.integer :player3Win
      t.integer :player4Win

      t.timestamps
    end
  end
end
