require_relative 'block'
require_relative 'color'

class Wool < Block
  WOOL_BLOCK_ID = 35
  private_constant :WOOL_BLOCK_ID

  attr_reader :color

  def initialize(color)
    super(WOOL_BLOCK_ID)
    @color = color
  end

  def as_parameter_list
    "#{@id},#{@color}"
  end

  def ==(another_wool)
    @id == another_wool.id && @color == another_wool.color
  end

end
