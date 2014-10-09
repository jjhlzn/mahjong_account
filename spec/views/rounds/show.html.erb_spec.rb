require 'rails_helper'

RSpec.describe "rounds/show", :type => :view do
  before(:each) do
    @round = assign(:round, Round.create!(
      :game_id => 1,
      :player1Win => "Player1 Win",
      :player2Win => "Player2 Win",
      :player3Win => "Player3 Win",
      :player4Win => "Player4 Win"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Player1 Win/)
    expect(rendered).to match(/Player2 Win/)
    expect(rendered).to match(/Player3 Win/)
    expect(rendered).to match(/Player4 Win/)
  end
end
