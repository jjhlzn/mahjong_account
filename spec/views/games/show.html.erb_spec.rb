require 'rails_helper'

RSpec.describe "games/show", :type => :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :player1 => "Player1",
      :player2 => "Player2",
      :player3 => "Player3",
      :player4 => "Player4",
      :chipCount => 1,
      :price => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Player1/)
    expect(rendered).to match(/Player2/)
    expect(rendered).to match(/Player3/)
    expect(rendered).to match(/Player4/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
