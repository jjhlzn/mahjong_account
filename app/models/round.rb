class Round < ActiveRecord::Base
  belongs_to :Game
  validates :player1Win, presence: true
  validates :player2Win, presence: true
  validates :player3Win, presence: true
  validates :player4Win, presence: true
  validates :game_id, presence: true
end
