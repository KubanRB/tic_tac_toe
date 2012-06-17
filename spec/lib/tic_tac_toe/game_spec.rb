require 'spec_helper'

describe TicTacToe::Game do
  #subject = TicTacToe::Game.new

  describe '#initialize' do
    it 'should have two players' do
      subject.players.should === ['X', '0']
    end

    it 'should have fileds 3x3' do
      subject.turns.should === [Array.new(3, ' '), Array.new(3, ' '), Array.new(3, ' ')]
    end

    it 'should not have winner' do
      subject.winner === nil
    end

    it 'should have 9 turns_lefts' do
      subject.turns_left === 9
    end

    it 'should set current_player to 0' do
      subject.current_player === 0
    end
  end

  describe '#can_turn?' do
    before(:each) do
      subject.turn(1, 1)
    end

    it "should not repeat exist turn" do
      subject.can_turn?(1, 1).should be_false
    end

    it "should can do not exist turn" do
      subject.can_turn?(1, 2).should be_true
    end
  end

  describe '#has_winner?' do
    it 'should return false when winner is X' do
      subject.should_receive(:winner).and_return('X')
      subject.has_winner?.should be_true
    end

    it 'should return false when winner is 0' do
      subject.should_receive(:winner).and_return('0')
      subject.has_winner?.should be_true
    end

    it 'should return false when winner equal nil' do
      subject.has_winner?.should be_false
    end

    it 'should return false when winner not from players list' do
      subject.should_receive(:winner).and_return('Y')
      subject.has_winner?.should be_false
    end
  end

  describe '#finished?' do
    it 'should return true when #has_winner? is true' do
      subject.should_receive(:has_winner?).and_return(true)
      subject.finished?.should be_true
    end

    it 'should return true when has_turns? is false' do
      subject.should_receive(:has_turns?).and_return(false)
      subject.finished?.should be_true
    end

    it 'should return false when no winner and has turns' do
      subject.should_receive(:has_turns?).and_return(true)
      subject.should_receive(:has_winner?).and_return(false)
      subject.finished?.should be_false
    end
  end

  describe '#has_turns?' do
    it 'should return true when turns_left > 0' do
      1.upto(9) do |iterator|
        subject.should_receive(:turns_left).and_return(iterator)
        subject.has_turns?.should be_true
      end
    end

    it 'should return false when turns_left <= 0' do
      0.downto(-1) do |iterator|
        subject.should_receive(:turns_left).and_return(iterator)
        subject.has_turns?.should be_false
      end
    end
  end

  describe '#print_turns' do

  end

  describe '#turn' do

  end

end
