require 'rails_helper'

RSpec.describe "games/index", :type => :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        :player1 => "Player1",
        :player2 => "Player2",
        :player3 => "Player3",
        :player4 => "Player4",
        :chipCount => 1,
        :price => 2
      ),
      Game.create!(
        :player1 => "Player1",
        :player2 => "Player2",
        :player3 => "Player3",
        :player4 => "Player4",
        :chipCount => 1,
        :price => 2
      )
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => "Player1".to_s, :count => 2
    assert_select "tr>td", :text => "Player2".to_s, :count => 2
    assert_select "tr>td", :text => "Player3".to_s, :count => 2
    assert_select "tr>td", :text => "Player4".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
