require 'rails_helper'

RSpec.describe "games/new", :type => :view do
  before(:each) do
    assign(:game, Game.new(
      :player1 => "MyString",
      :player2 => "MyString",
      :player3 => "MyString",
      :player4 => "MyString",
      :chipCount => 1,
      :price => 1
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "input#game_player1[name=?]", "game[player1]"

      assert_select "input#game_player2[name=?]", "game[player2]"

      assert_select "input#game_player3[name=?]", "game[player3]"

      assert_select "input#game_player4[name=?]", "game[player4]"

      assert_select "input#game_chipCount[name=?]", "game[chipCount]"

      assert_select "input#game_price[name=?]", "game[price]"
    end
  end
end
