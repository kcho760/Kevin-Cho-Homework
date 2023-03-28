require "byebug"
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14)
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    i = 0
    while i < @cups.length
      if i == 6 || i == 13
        @cups[i] = []
      else
        @cups[i] = [:stone, :stone, :stone, :stone]
      end
      i+=1
    end
  end

  def valid_move?(start_pos)
    valid_positions = [0,1,2,3,4,5,7,8,9,10,11,12]
    if !valid_positions.include?(start_pos)
      raise "Invalid starting cup"
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    # debugger
    stones = []
    @cups[start_pos].length.times do 
      ele = @cups[start_pos].pop
      stones << ele
    end
    dupped = stones.dup
    i = 1
    while i < dupped.length + 1
      ele = stones.shift
      @cups[start_pos+i] << ele
      i+=1
    end


  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end