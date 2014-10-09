require 'rails_helper'

RSpec.describe "games/edit", :type => :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :player1 => "MyString",
      :player2 => "MyString",
      :player3 => "MyString",
      :player4 => "MyString",
      :chipCount => 1,
      :price => 1
    ))
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "input#game_player1[name=?]", "game[player1]"

      assert_select "input#game_player2[name=?]", "game[player2]"

      assert_select "input#game_player3[name=?]", "game[player3]"

      assert_select "input#game_player4[name=?]", "game[player4]"

      assert_select "input#game_chipCount[name=?]", "game[chipCount]"

      assert_select "input#game_price[name=?]", "game[price]"
    end
  end
end
