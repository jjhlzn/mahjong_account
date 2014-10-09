require 'rails_helper'

RSpec.describe "rounds/new", :type => :view do
  before(:each) do
    assign(:round, Round.new(
      :game_id => 1,
      :player1Win => "MyString",
      :player2Win => "MyString",
      :player3Win => "MyString",
      :player4Win => "MyString"
    ))
  end

  it "renders new round form" do
    render

    assert_select "form[action=?][method=?]", rounds_path, "post" do

      assert_select "input#round_game_id[name=?]", "round[game_id]"

      assert_select "input#round_player1Win[name=?]", "round[player1Win]"

      assert_select "input#round_player2Win[name=?]", "round[player2Win]"

      assert_select "input#round_player3Win[name=?]", "round[player3Win]"

      assert_select "input#round_player4Win[name=?]", "round[player4Win]"
    end
  end
end
