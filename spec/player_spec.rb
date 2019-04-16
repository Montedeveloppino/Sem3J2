require_relative '../lib/player'

describe "Test class and method for Class Player" do
  p1 = Player.new("Stark")
  p1.life_points = 4

  it "should not return nil" do
    expect(p1.show_state).to be eq("Stark a 4 points de vie")
  end

  it "should return a string with damges" do
    expect(p1.class).to eq(Player)
    expect(p1.gets_damage(5)).to be eq("Stark a été tué !" )
  end

end
