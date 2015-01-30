require 'csv'

class TombstoneParse
  attr_reader :file, :graveyard
  def initialize
    @file = 'grave_database.csv'
    @graveyard = nil
    tombstone
  end
  def new_user_tombstone(user_details)
    @graveyard.push(Tombstones.new(user_details))
    CSV.open(@file,"a") do |csv|
      csv << user_details
    end
  end
  def tombstone
    return @graveyard if @graveyard
      @graveyard = []
      CSV.foreach(@file) do |row|
        @graveyard << Tombstones.new(row)
      end
      return @graveyard
  end
end

class Tombstones
  attr_reader :name
  def initialize (row)
    @name = row[0]
    @date_of_birth = row[1]
    @date_of_death = row[2]
    @last_words = row[3]
  end
  def to_s
    <<-STRING

    Name         #{@name}
    DOB-DOD      #{@date_of_birth}-#{@date_of_death}
    Last words   #{@last_words}

    STRING
  end
end


parse = TombstoneParse.new
puts parse.graveyard
