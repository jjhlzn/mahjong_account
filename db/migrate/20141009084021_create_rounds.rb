class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :game_id
      t.string :player1Win
      t.string :player2Win
      t.string :player3Win
      t.string :player4Win

      t.timestamps
    end
  end
end
