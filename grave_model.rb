require 'csv'

class Tombstone
end

class TombstoneParse
  attr_reader :file, :graveyard
  def initialize
    @file = 'grave_database.csv'
    @graveyard = nil
  end
  def tombstone
    return @graveyard if @graveyard
      @graveyard = []
      CSV.foreach(@file) do |row|
        @graveyard << NewTombstoneConstructor.new(row)
      end
      return @graveyard
  end
end

class NewTombstoneConstructor
  def initialize (row)
    @name = row[0]
    @date_of_birth = row[1]
    @date_of_death = row[2]
    @last_words = row[3]
  end
end


parse = TombstoneParse.new
parse.tombstone
puts parse.graveyard
p parse.graveyard.first
