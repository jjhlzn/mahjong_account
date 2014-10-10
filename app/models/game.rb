class Game < ActiveRecord::Base
  has_many :rounds
  default_scope -> { order('created_at') }

  validates :player1, presence: true
  validates :player2, presence: true
  validates :player3, presence: true
  validates :player4, presence: true
  validates :chipCount, presence: true
  validates :price, presence: true
end
