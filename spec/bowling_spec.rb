require '../lib/bowling.rb'

describe Bowling do
  it 'should do anythin' do
  puts 'works'

  end

  it 'should be a gutter game' do
  game = Bowling.new
  10.times { game.hit(0) }
  game.score.should eq(0)
  end

  it 'should be a 90 score game' do
  game = Bowling.new
  10.times {game.hit(9)}
  game.score.should eq(90)
  end
  it 'should be a 100 score game' do
    game = Bowling.new
    10.times { game.hit(10) }
    game.score.should == 100
  end
  it 'should fail here' do
  game=Bowling.new
  game.hit(110)
  game.score.should == 100
  end
end
