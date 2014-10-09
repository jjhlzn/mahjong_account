class Game < ActiveRecord::Base
  has_many :rounds
  default_scope -> { order('created_at') }
end
