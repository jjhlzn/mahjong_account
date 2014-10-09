require 'rails_helper'

RSpec.describe "rounds/index", :type => :view do
  before(:each) do
    assign(:rounds, [
      Round.create!(
        :game_id => 1,
        :player1Win => "Player1 Win",
        :player2Win => "Player2 Win",
        :player3Win => "Player3 Win",
        :player4Win => "Player4 Win"
      ),
      Round.create!(
        :game_id => 1,
        :player1Win => "Player1 Win",
        :player2Win => "Player2 Win",
        :player3Win => "Player3 Win",
        :player4Win => "Player4 Win"
      )
    ])
  end

  it "renders a list of rounds" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Player1 Win".to_s, :count => 2
    assert_select "tr>td", :text => "Player2 Win".to_s, :count => 2
    assert_select "tr>td", :text => "Player3 Win".to_s, :count => 2
    assert_select "tr>td", :text => "Player4 Win".to_s, :count => 2
  end
end
